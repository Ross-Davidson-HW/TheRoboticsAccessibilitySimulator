using UnityEngine;

public class robotPickUp : MonoBehaviour
{
    [SerializeField] private GameObject chem1, chem2, chem3;
    private bool pickedUp1, pickedUp2;

    private void OnTriggerEnter(Collider other)
    {
        
        if (this.CompareTag("robot") && other.CompareTag("chemical") && !pickedUp1)
        {
            chem1.SetActive(true);
            pickedUp1 = true;
        }
        else if (this.CompareTag("robot") && other.CompareTag("chemical2") && !pickedUp2)
        {
            chem2.SetActive(true);
            pickedUp2 = true;
        }

        if (this.CompareTag("robot") && other.CompareTag("mixStation") && pickedUp1 && pickedUp2)
        {
            chem1.SetActive(false);
            chem2.SetActive(false);
            chem3.SetActive(true);
        }

        if (this.CompareTag("robot") && other.CompareTag("station") && pickedUp1 && pickedUp2)
        {
            chem3.SetActive(false);
        }



        
    }
}
