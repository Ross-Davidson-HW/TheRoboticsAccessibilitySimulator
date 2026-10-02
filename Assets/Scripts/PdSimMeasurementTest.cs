using UnityEngine;
using PDSim.Simulation;

// a simple test script to see if we can adjust the values of a plan instance
public class PdSimMeasurementTest : MonoBehaviour
{
    public PdSimInstance instance;

    private void Start()
    {
        SetSpaceWidth("space-7", 2f);
    }

    public void SetSpaceWidth(string spaceName, float width)
    {
        if (instance == null)
        {
            Debug.LogError("PdSimInstance has not been assigned.");
            return;
        }

        foreach (var assignment in instance.init)
        {
            if (assignment.fluentName == "space-width" &&
                assignment.parameters.Count == 1 &&
                assignment.parameters[0] == spaceName)
            {
                assignment.value.valueSymbol = width.ToString();

                Debug.Log(
                    $"Updated space-width({spaceName}) to {width}"
                );

                return;
            }
        }

        Debug.LogWarning(
            $"Could not find space-width({spaceName}) in PdSimInstance."
        );
    }
}