using System.Collections;
using System.Collections.Generic;
using System.Linq;
using UnityEngine;
using UnityEngine.UI;

public class InventoryBar : BasePanel
{

    private List<Image> itemIcons;

    private List<Item> items;

    // Start is called before the first frame update
    void Start()
    {
        itemIcons = new List<Image>{
            transform.GetChild(0).transform.Find("ItemIcon1").GetComponent<Image>(),
            transform.GetChild(1).transform.Find("ItemIcon2").GetComponent<Image>(),
            transform.GetChild(2).transform.Find("ItemIcon3").GetComponent<Image>(),
            transform.GetChild(3).transform.Find("ItemIcon4").GetComponent<Image>(),
        };

        UpdateInventoryBar();
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void UpdateInventoryBar()
    {
        items = Inventory.Instance.items;
        for (int i = 0; i < items.Capacity; i++)
        {
            if(items.ElementAtOrDefault<Item>(i) == null){ 
                itemIcons[i].sprite = null;
                itemIcons[i].enabled = false;
                continue;
            }
            itemIcons[i].sprite = items[i].itemImage.sprite;
            itemIcons[i].enabled = true;
        }
    }

}
