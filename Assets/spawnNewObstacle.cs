using UnityEngine;

public class spawnNewObstacle : MonoBehaviour
{
    [SerializeField] private GameObject obs1;
    // Start is called once before the first execution of Update after the MonoBehaviour is created
    private void OnTriggerExit(Collider other)
    {
        if (other.CompareTag("robot"))
        {
            obs1.SetActive(true);
        }
    }
}
