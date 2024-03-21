EXTERNAL chooseItem(item)
VAR title = "Alex"
VAR invItem1 = "Bottle"
VAR invItem2 = "Bottle"
VAR invItem3 = "Rings"
VAR invItem4 = "Can"
VAR gameEnd = false

-> StartDialogue

=== StartDialogue ===
{{checkInventory(): Hello there, looks like you've picked up some marine debris. Would you like to hand it in? | Hello there, looks like you don't have anything picked up. Go up to some debris and pick it up with E.} | {checkInventory():  Would you like to hand in anything else? | Looks like you don't have anything picked up. Keep up the good work.} }
+ {invItem1 != ""} [Hand in {invItem1}]
    ~ chooseItem(1)
    -> handIn("{invItem1}")
+ {invItem2 != ""} [Hand in {invItem2}]
    ~ chooseItem(2)
    -> handIn("{invItem2}")
+ {invItem3 != ""} [Hand in {invItem3}]
    ~ chooseItem(3)
    -> handIn("{invItem3}")
+ {invItem4 != ""} [Hand in {invItem4}]
    ~ chooseItem(4)
    -> handIn("{invItem4}")
+ [Exit]
    -> END

=== handIn(item) ===
You turn in {item}
~ chooseItem(-1)
{item:
- "Bottle": -> bottleDialogue
- "Can": -> canDialogue
- "Rings": -> ringsDialogue
}
->StartDialogue

=== bottleDialogue ===
Bottle dialogue
-> StartDialogue

=== canDialogue ===
Can dialogue
-> StartDialogue

=== ringsDialogue ===
Rings dialogue
-> StartDialogue

=== GameEnd ===
Wow! You've cleaned up the whole beach. Your efforts have really made a difference.
~gameEnd = true
-> END


=== function checkInventory() ===
~ return invItem1 != "" || invItem2 != "" || invItem3 != "" || invItem4 != ""