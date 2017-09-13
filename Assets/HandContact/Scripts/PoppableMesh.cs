using UnityEngine;
using Leap;
using Leap.Unity;
using Leap.Unity.Attributes;

public class PoppableMesh : MonoBehaviour
{

    [SerializeField]
    private LeapProvider _provider;

    [MinValue(0.001f)]
    [SerializeField]
    private float _minDepth = 0.01f;

    [MinMax(0, 180)]
    [SerializeField]
    private Vector2 influenceRange = new Vector2(10, 45);

    private Mesh _mesh;

    private DepthPosition[] _original;
    private Vector3[] _warpedVertices;

    private DepthPosition[] _warpingPoints = new DepthPosition[128];
    private int _numWarpingPoints = 0;

    private float _processedX, _processedY;
    private float _processedC, _processedD;
    private bool _isWarped = false;

    private float _gripStrength = 0.0f;
    private float _depthMultiplier = 1.0f;

    public float gripStrength
    {
        get
        {
            return _gripStrength;
        }
    }

    public float depthMultiplier
    {
        get
        {
            return _depthMultiplier;
        }
        set
        {
            _depthMultiplier = value;
        }
    }

    void Start()
    {
        _mesh = GetComponent<MeshFilter>().mesh;
        _mesh.MarkDynamic();

        Vector3[] originalPoints = _mesh.vertices;
        _original = new DepthPosition[originalPoints.Length];

        for (int i = 0; i < _original.Length; i++)
        {
            _original[i] = new DepthPosition(originalPoints[i]);
        }

        _warpedVertices = new Vector3[originalPoints.Length];

        _processedX = Mathf.Cos(influenceRange.x * Mathf.Deg2Rad);
        _processedY = Mathf.Cos(influenceRange.y * Mathf.Deg2Rad);
        _processedC = 1.0f / (_processedY - _processedX);
        _processedD = -_processedX * _processedC;
    }

    void Update()
    {
        _numWarpingPoints = 0;

        foreach (Hand hand in _provider.CurrentFrame.Hands)
        {
            foreach (Finger finger in hand.Fingers)
            {
                foreach (var bone in finger.bones)
                {
                    Vector3 tip = bone.NextJoint.ToVector3();
                    Vector3 localTip = transform.InverseTransformPoint(tip);

                    DepthPosition depthPosition = new DepthPosition(localTip);
                    if (depthPosition.depth <= 1)
                    {
                        _warpingPoints[_numWarpingPoints++] = new DepthPosition(localTip);
                    }
                }
            }
        }

        if (_numWarpingPoints == 0)
        {
            if (_isWarped)
            {
                for (int i = 0; i < _original.Length; i++)
                {
                    _warpedVertices[i] = _original[i].localPosition * _depthMultiplier;
                }
                _mesh.vertices = _warpedVertices;
                _mesh.RecalculateNormals();

                _isWarped = false;
                _gripStrength = 0.0f;
            }

            return;
        }

        float minDepth = 1.0f;
        for (int i = 0; i < _original.Length; i++)
        {
            DepthPosition original = _original[i];
            float newDepth = original.depth;

            for (int j = 0; j < _numWarpingPoints; j++)
            {
                DepthPosition warpingPoint = _warpingPoints[j];
                float dotProduct = warpingPoint.normal.x * original.normal.x + warpingPoint.normal.y * original.normal.y + warpingPoint.normal.z * original.normal.z;

                //float weight = Mathf.InverseLerp(_processedX, _processedY, dotProduct);
                float weight = dotProduct * _processedC + _processedD;
                if (weight < 0) weight = 0;
                if (weight > 1) weight = 1;

                //newDepth = Mathf.Min(newDepth, Mathf.Lerp(warpingPoint.depth, original.depth, weight));
                //Can use unclamped lerp since weight is already 0-1
                float depth = warpingPoint.depth + (original.depth - warpingPoint.depth) * weight;
                if (depth < newDepth)
                {
                    newDepth = depth;
                }
            }

            newDepth = Mathf.Clamp(newDepth, _minDepth, original.depth);
            minDepth = Mathf.Min(newDepth, minDepth);
            _warpedVertices[i] = original.normal * newDepth * _depthMultiplier;
        }

        _gripStrength = Mathf.InverseLerp(_original[0].depth, _minDepth, minDepth);

        _mesh.vertices = _warpedVertices;
        _mesh.RecalculateNormals();
        _isWarped = true;
    }

    private struct DepthPosition
    {
        public readonly Vector3 localPosition;
        public readonly Vector3 normal;
        public readonly float depth;

        public DepthPosition(Vector3 localPosition)
        {
            this.localPosition = localPosition;
            this.depth = localPosition.magnitude;
            this.normal = localPosition / depth;
        }
    }
}