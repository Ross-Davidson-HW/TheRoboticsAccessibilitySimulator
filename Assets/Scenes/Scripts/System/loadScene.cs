using System.Collections;
using UnityEngine;
using UnityEngine.SceneManagement;

public class loadScene : MonoBehaviour
{

    [SerializeField] private float wait;
    public string sceneToLoad;
    // Start is called once before the first execution of Update after the MonoBehaviour is created
    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("robot")){
            StartCoroutine(loadAfterDelay(wait));
        }
    }

    IEnumerator loadAfterDelay(float wait)
    {
        yield return new WaitForSeconds(wait);
        SceneManager.LoadScene(sceneToLoad);
    }


}
