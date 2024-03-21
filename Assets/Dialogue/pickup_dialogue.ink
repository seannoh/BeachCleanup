VAR title = "Pickup"
VAR itemName = ""
VAR pickedUp = false

-> StartDialogue

=== StartDialogue ===
Pickup {itemName}?
+ [Pickup]
    -> Choice1
+ [Cancel]
    -> Choice2

=== Choice1 ===
~pickedUp = true
-> EndDialogue


=== Choice2 ===
~pickedUp = false
-> EndDialogue


=== EndDialogue ===
->END