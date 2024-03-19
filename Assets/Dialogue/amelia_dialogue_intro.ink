VAR title = "Amelia"

-> StartDialogue

=== StartDialogue ===
{Hi there! Welcome to the beach cleanup program! I'm Amelia, the leader of the program. We're so glad you've decided to join us today.|What other questions do you have?}
+ [I'm happy to help. What can I do?] 
    -> HappyToHelp
+ [Tell me more about the beach cleanup program.] 
    -> TellMeMore
+ [What is ocean pollution?]
    -> WhatIsOcean
{TellMeMore:
+ [What are the benefits of beach cleanup programs?] 
    -> BenefitsOfProgram
+ [What can I do to help prevent beach pollution?] 
    -> PreventPollution
+ [What are the biggest challenges facing beach cleanup programs?] 
    -> BiggestChallenges
}
{WhatIsOcean:
+ [What are the biggest sources of ocean pollution?] 
    -> PreventPollution
}
+ [Let's get started]
    -> GetStarted

=== HappyToHelp ===
There are a few ways to get involved with the beach cleanup program. You can volunteer to collect trash, sort trash, or educate the public. You can also donate money or supplies to the program.
-> StartDialogue

=== WhatIsOcean ===
Ocean pollution is a major problem facing our planet. It can harm marine life, pollute our beaches, and even enter our food chain.
-> StartDialogue

=== TellMeMore ===
The beach cleanup program is a volunteer-based program that works to keep our beaches clean and safe for people and wildlife. 
We do this by collecting trash, sorting it, and recycling it. We also educate the public about the importance of keeping our beaches clean.
-> StartDialogue

=== BenefitsOfProgram ===
There are many benefits to volunteering with the beach cleanup program. You can help to keep our beaches clean and safe for people and wildlife. 
You can also learn about the importance of protecting our environment. And you can meet new people and make new friends.
->StartDialogue

=== PreventPollution ===
To prevent beach pollution, reduce your plastic consumption, dispose of trash properly, and volunteer with beach cleanup programs like you are now.
->StartDialogue

=== BiggestChallenges ===
One of the biggest challenges facing the beach cleanup program is the sheer volume of trash that washes up on our beaches. Another challenge is educating the public about the importance of keeping our beaches clean.
->StartDialogue

=== GetStarted ====
Great! Head down to the beach and get started. Read the signs and look for Alex if you have any questions.
-> EndDialogue


=== EndDialogue ===
+ Restart -> Restart
+ [End] -> END

=== Restart ===
Restart
-> StartDialogue