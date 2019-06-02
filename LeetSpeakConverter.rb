nouns = Array[];
puts "Enter a noun:";
nouns[0] = gets.chomp();
puts "Enter a verb:";
verb = gets.chomp();
puts "Enter another noun:";
nouns[1] = gets.chomp();

text =  "To be, or not to be, that is the " + nouns[0] + ":
Whether 'tis nobler in the mind to suffer
The slings and arrows of outrageous fortune,
Or to take arms against a sea of troubles
And by opposing end them. To die—to " + verb + ",
No more; and by a sleep to say we end
The heart-ache and the thousand natural shocks
That flesh is heir to: 'tis a consummation
Devoutly to be wish'd. To die, to sleep;
To sleep, perchance to dream—ay, there's the rub:
For in that sleep of death what dreams may come,
When we have shuffled off this mortal coil,
Must give us pause—there's the " + nouns[1] + "
That makes calamity of so long life.
For who would bear the whips and scorns of time,
Th'oppressor's wrong, the proud man's contumely,
The pangs of dispriz'd love, the law's delay,
The insolence of office, and the spurns
That patient merit of th'unworthy takes,
When he himself might his quietus make
With a bare bodkin? Who would fardels bear,
To grunt and sweat under a weary life,
But that the dread of something after death,
The undiscovere'd country, from whose bourn
No traveller returns, puzzles the will,
And makes us rather bear those ills we have
Than fly to others that we know not of?
Thus conscience does make cowards of us all,
And thus the native hue of resolution
Is sicklied o'er with the pale cast of thought,
And enterprises of great pitch and moment
With this regard their currents turn awry
And lose the name of action."

while (text.index("a") != nil)
	text[text.index("a")] = "4";
end

while (text.index("o") != nil)
	text[text.index("o")] = "0";
end

while (text.index("e") != nil)
	text[text.index("e")] = "3";
end

while (text.index("t") != nil)
	text[text.index("t")] = "7";
end

while (text.index("i") != nil)
	text[text.index("i")] = "1";
end

while (text.index("s") != nil)
	text[text.index("s")] = "5";
end

puts text;