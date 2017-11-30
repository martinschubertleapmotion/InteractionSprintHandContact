using UnityEngine;
using System;
using System.Collections;
using Leap;
using Leap.Unity;

public class CrossbarGridDataHandler : MonoBehaviour
{

    public Transform FailSafePoint;

    /// <summary>
    /// Update shader with given hand positions or failsafe positions if no hand is provided.
    /// </summary> 
    private void Update()
    {
        Vector3 failsafePosition = FailSafePoint == null ? new Vector3(0, 0, 0) : FailSafePoint.position;

        var material = GetComponent<Renderer>().material;

        for (int i = 0; i < 10; i++)
        {
            Hand hand = null;
            if (i < 5)
            {
                hand = Hands.Left;
            }
            else
            {
                hand = Hands.Right;
            }

            Vector3 position = failsafePosition;
            if (hand != null)
            {
                position = hand.Fingers[i % 5].TipPosition.ToVector3();
            }

            material.SetVector("_Finger" + i, position);
        }
    }
}