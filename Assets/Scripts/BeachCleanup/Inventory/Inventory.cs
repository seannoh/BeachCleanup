using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Inventory : Singleton<Inventory>
{
    
    public List<Item> items = new List<Item>(4);
    public InventoryBar inventoryBar;
    public Item itemToBePickedUp;
    public Item itemToBeTurnedIn;
    public int totalItemsTurnedIn;
    public int totalItems;

    public void Initialize(InventoryBar inventoryBar)
    {
        this.inventoryBar = inventoryBar;
        totalItemsTurnedIn = 0;
        totalItems = GameObject.FindGameObjectsWithTag("Item").Length;
    }

    public bool AddItem(Item item)
    {
        if (items.Count < 4)
        {
            items.Add(item);
            inventoryBar.UpdateInventoryBar();
            return true;
        }
        return false;
    }

    public void RemoveItem(int index)
    {
        items.RemoveAt(index);
        inventoryBar.UpdateInventoryBar();
    }


}
