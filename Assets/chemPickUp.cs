using UnityEngine;

public class chemPickUp : MonoBehaviour
{
    [SerializeField] GameObject chem;
    private void OnTriggerEnter(Collider other)
    {

        if (this.CompareTag("chemical") && other.CompareTag("robot") || this.CompareTag("chemical2") && other.CompareTag("robot"))
        {
            chem.SetActive(false);
        }
        if (this.CompareTag("station") && other.CompareTag("robot") || this.CompareTag("mixStation") && other.CompareTag("robot"))
        {
            chem.SetActive(true);
        }
    }

}
