using UnityEngine;

public class activateObstacle : MonoBehaviour
{

    [SerializeField]private UnityEngine.AI.NavMeshObstacle obs;
    // Start is called once before the first execution of Update after the MonoBehaviour is created
    void Awake()
    {
        obs = GetComponent<UnityEngine.AI.NavMeshObstacle>();
    }

    // Update is called once per frame
    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("robot"))
        {
            Debug.Log("Entered");
            obs.carving = true;
            
        }
    }


}
