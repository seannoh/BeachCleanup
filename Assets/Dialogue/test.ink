VAR title = "Test Dialogue"

-> StartDialogue

=== StartDialogue ===
This is the start of a dialogue
+ [Pick choice 1] You pick choice 1
    -> Choice1
+ [Pick choice 2] You pick choice 2
    -> Choice2

=== Choice1 ===
This is the text for choice 1

-> EndDialogue


=== Choice2 ===
This is the text for choice 2

-> EndDialogue


=== EndDialogue ===
{Choice1: You picked choice 1|You didn't pick choice 1}
{Choice2: You picked choice 2|You didn't pick choice 2}
+ Restart -> Restart
+ [End] -> END

=== Restart ===
Restart
-> StartDialogue