using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class DialogueTrigger : MonoBehaviour
{
    [SerializeField] private Animator animator;
    [SerializeField] private TextAsset inkJsonAsset;
    private bool playerInRange;

    void Start()
    {
        playerInRange = false;
    }

    void Update()
    {
        if(playerInRange)
        {
            animator.SetBool("PlayerInRange", true);

            if(Input.GetKeyDown(KeyCode.E))
            {
                EventMgr.Instance.EventTrigger("DialogueStart", inkJsonAsset);
            }
        } else {
            animator.SetBool("PlayerInRange", false);
        }
    }

    void OnTriggerEnter2D(Collider2D collider)
    {
        if(collider.CompareTag("Player")) {
            playerInRange = true;
        }
    }

    void OnTriggerExit2D(Collider2D collider)
    {
        if(collider.CompareTag("Player")) {
            playerInRange = false;
        }
    }



}