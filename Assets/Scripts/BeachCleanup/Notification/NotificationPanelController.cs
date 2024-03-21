using System.Collections;
using System.Collections.Generic;
using TMPro;
using UnityEngine;

public class NotificationPanelController : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        EventMgr.Instance.AddEventListener<string>("ShowNotification", ShowNotification);
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    private void ShowNotification(string text)
    {
        StartCoroutine(ShowNotificationCoroutine(text));
    }

    private IEnumerator ShowNotificationCoroutine(string text)
    {
        UIMgr.Instance.ShowPanel<NotificationPanel>("NotificationPanel", E_PanelLayer.Top, (panel) => {
            NotificationPanel notificationPanel = panel.GetComponent<NotificationPanel>();
            panel.transform.Find("NotificationText").GetComponent<TMP_Text>().text = text;
        });
        yield return new WaitForSeconds(5f);
        UIMgr.Instance.HidePanel("NotificationPanel");
    }

    void OnDestroy()
    {
        EventMgr.Instance.RemoveEventListener<string>("ShowNotification", ShowNotification);
    }

}
