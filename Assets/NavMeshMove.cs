using UnityEngine;
using UnityEngine.AI;

public class NavMeshMove : MonoBehaviour
{
    [SerializeField] private GameObject goal;
    // Start is called once before the first execution of Update after the MonoBehaviour is created
    void Start()
    {
        NavMeshAgent agent = GetComponent<NavMeshAgent>();
        agent.destination = goal.transform.position;
    }

}
