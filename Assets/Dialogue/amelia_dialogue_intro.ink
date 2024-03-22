VAR title = "Amelia"

-> StartDialogue

=== StartDialogue ===
{Hi there! Welcome to the beach cleanup program! I'm Amelia, the leader of the program. We're so glad you've decided to join us today.|What other questions do you have?}
+ [I'm happy to help. What can I do?] 
    -> HappyToHelp
+ [Tell me more about the beach cleanup program.] 
    -> TellMeMore
+ [What is beach pollution?]
    -> WhatIsBeach
+ {TellMeMore} [What are the benefits of beach cleanup programs?] 
    -> BenefitsOfProgram
+ {TellMeMore} [What can I do to help prevent beach pollution?] 
    -> PreventPollution
+ {TellMeMore} [What are the biggest challenges facing beach cleanup programs?] 
    -> BiggestChallenges
+ {WhatIsBeach} [What are the biggest sources of beach pollution?] 
    -> BiggestSources
+ {WhatIsBeach} [What are the effects beach pollution?] 
    -> EffectsOfBeach
+ [Let's get started]
    -> GetStarted

=== HappyToHelp ===
There are a few ways to get involved with the beach cleanup program. You can volunteer to collect trash, sort trash, or educate the public. You can also donate money or supplies to the program.
-> StartDialogue

=== WhatIsBeach ===
Beach pollution is any harmful substance that contaminates beaches and coastal waters, ranging from plastic, trash, and litter to sewage, pesticides, and oil.
-> StartDialogue

=== EffectsOfBeach ===
Beach pollution can have a number of negative effects on public health, the environment, and the economy.
Gall and Thompson found in their 2015 study “The impact of debris on marine life,” that marine debris affected at least 690 species by entanglement, ingestion, or other indirect means, causing stress and negative consequences for these organism.
Polluted coastal recreational waters have been shown to be correlated with illnesses in swimmers of those waters.
Moreover, a 2012 study by the US EPA determined that 90 west coast communities spent a total of more than $520,000,000 each year to combat litter.
->StartDialogue

=== TellMeMore ===
The beach cleanup program is a volunteer-based program that works to keep our beaches clean and safe for people and wildlife. 
We do this by collecting trash, sorting it, and recycling it. We also educate the public about the importance of keeping our beaches clean.
-> StartDialogue

=== BenefitsOfProgram ===
There are many benefits to volunteering with the beach cleanup program. You can help to keep our beaches clean and safe for people and wildlife. Across California, we cleaned 331,364 pounds of debris in 2022.
You can also learn about the importance of protecting our environment. And you can meet new people and make new friends.
->StartDialogue

=== PreventPollution ===
According to the California Coastal Commision, some ways to prevent beach pollution are: reduce your plastic consumption, dispose of trash properly, and volunteer with beach cleanup programs like you are now.
->StartDialogue

=== BiggestChallenges ===
One of the biggest challenges facing the beach cleanup program is the sheer volume of trash that washes up on our beaches. Another challenge is educating the public about the importance of keeping our beaches clean.
->StartDialogue

=== BiggestSources ===
Some common sources of beach pollution are littering, illegal dumping, and stormwater runoff. 
Littering is the intentional discarding of trash in a public place. Illegal dumping is the disposal of trash in a place where it is not authorised. Stormwater runoff is the water that flows over land and into waterways after a rainstorm.
-> StartDialogue

=== GetStarted ====
Great! Head down to the beach and get started. Read the signs and look for Alex to turn in what you've collected.
-> EndDialogue


=== EndDialogue ===
+ Restart -> Restart
+ [End] -> END

=== Restart ===
Restart
-> StartDialogue