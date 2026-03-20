using UnityEngine;

public class spawnObstacle : MonoBehaviour
{
    [SerializeField] private GameObject obs1, obs2;
    private int chance;
    // Start is called once before the first execution of Update after the MonoBehaviour is created
    void Start()
    {
        chance = Random.Range(1, 100);
        Debug.Log(chance);
        if (chance < 25)
        {
            obs1.SetActive(true);
        }
        else if (chance > 75) { 
            obs2.SetActive(true);
        }
        else if (chance == 100)
        {
            obs1.SetActive(true);
            obs2.SetActive(true);
        }
    }

}
