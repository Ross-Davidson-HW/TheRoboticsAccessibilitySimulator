using UnityEngine;

public class pickUpChemical : MonoBehaviour
{
    [SerializeField] private GameObject chemical;    
    private bool pickedUp;

    private void OnTriggerEnter(Collider other)
    {
        if (this.CompareTag("robot") && other.CompareTag("chemical") && !pickedUp)
        {
            chemical.SetActive(true);            
            pickedUp = true;
        }
        if (this.CompareTag("robot") && other.CompareTag("station") && pickedUp)
        {
            chemical.SetActive(false);
            
        }
        if (this.CompareTag("chemical") && other.CompareTag("robot"))
        {
            chemical.SetActive(false);
        }
        if (this.CompareTag("station") && other.CompareTag("robot"))
        {
            chemical.SetActive(true);
        }
    }
}
