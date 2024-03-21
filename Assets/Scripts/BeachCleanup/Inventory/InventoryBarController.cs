using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class InventoryBarController : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        UIMgr.Instance.ShowPanel<InventoryBar>("InventoryBar", E_PanelLayer.Mid, (panel) => {
            InventoryBar inventoryBar = panel.GetComponent<InventoryBar>();
            Inventory.Instance.Initialize(inventoryBar);
        });
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    void OnDestroy()
    {
        if(UIMgr.Instance.GetPanel<InventoryBar>("InventoryBar") != null) UIMgr.Instance.HidePanel("InventoryBar");
    }
}
