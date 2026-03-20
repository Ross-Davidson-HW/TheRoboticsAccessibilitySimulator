using System.Threading.Channels;
using UnityEngine;

public class randomObstacles : MonoBehaviour
{
    private int chance, prevChance, rerollAttempts = 10;
    [SerializeField] private GameObject[] objs, objs2, objs3;
    private UnityEngine.AI.NavMeshObstacle obs;

    // when triggered, generate a random number, and use them number to determine the layout of obstacles
    private void OnTriggerEnter(Collider other)
    {
        // ensures only robots can activate the trigger
        if (other.CompareTag("robot")) {
            chance = Random.Range(0, 3);

            //if (chance == prevChance)
            //{
            //    chance = Random.Range(0, 3);
            //    Debug.Log("Reroll Attempted");
            //}

            //chance = prevChance;           

            // deactivate all active obstacles
            for (int i = 0; i < objs.Length; i++)
            {
                obs = objs[i].GetComponent<UnityEngine.AI.NavMeshObstacle>();
                obs.carving = false;
                objs[i].SetActive(false);

                obs = objs2[i].GetComponent<UnityEngine.AI.NavMeshObstacle>();
                obs.carving = false;
                objs2[i].SetActive(false);

                obs = objs3[i].GetComponent<UnityEngine.AI.NavMeshObstacle>();
                obs.carving = false;
                objs3[i].SetActive(false);
            }

            if (chance == 0)
            {
                objs[0].SetActive(true);                
                objs2[0].SetActive(true);
                objs2[1].SetActive(true);
                objs3[2].SetActive(true);
                objs3[3].SetActive(true);
            }

            if (chance == 1)
            {
                objs[1].SetActive(true);
                objs[2].SetActive(true);
                objs[3].SetActive(true);
                objs2[2].SetActive(true);
                objs3[0].SetActive(true);
            }

            if (chance == 2)
            {
                objs[1].SetActive(true);
                objs[3].SetActive(true);
                objs2[0].SetActive(true);
                objs2[2].SetActive(true);
                objs3[0].SetActive(true);
                objs3[1].SetActive(true);
            }
        }
    }
}



