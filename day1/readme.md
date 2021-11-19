# 100 days of SwiftUI DAY 1

## Variables & Constants

Whenever you build programs, you’re going to want to store some data. Maybe it’s the user’s name they just typed in, maybe it’s some news stories you downloaded from the internet, or maybe it’s the result of a complex calculation you just performed. Swift gives us two ways of storing data, depending on whether you want the data to change over time.

* import Cocoa, brings in a huge collection of code provided by Apple to make app building easier. This includes lots of important functionality.
* the var keyword means “create a new variable”; it saves a little typing.
* you can call your variable anything you want, but most of the time you’ll want to make it descriptive.
* the equals sign assigns a value to our variable. You don’t need to have those spaces on either side of the equals sign if you don’t want to, but it’s the most common style.
* the value we’re assigning is the text “Hello, playground”. Notice that text is written inside double quotes, so that Swift can see where the text starts and where it ends.
* if you don’t ever want to change a value, you need to use a constant instead. Creating a constant works almost identically to creating a variable, except we use let rather than var.

![Alt text](https://github.com/andreynho2006/swiftUI-100-days/blob/main/day1/img/img1.png)

Variables are a great way to store temporary data in your programs, but Swift gives us a second option that’s even better: constants. They are identical to variables in every way, with one important difference: we can’t change their values once they are set.
Swift really loves constants, and in fact will recommend you use one if you created a variable then never changed its value. The reason for this is about avoiding problems: any variable you create can be changed by you whenever you want and as often as you want, so you lose some control – that important piece of user data you stashed away might be removed or replaced at any point in the future.
Constants don’t let us change values once they are set, so it’s a bit like a contract with Swift: you’re saying “this value matters, don’t let me change it no matter what I do.” Sure, you could try to make the same contract with a variable, but one slip of your keyboard could screw things up and Swift wouldn’t be able to help. By using a constant instead – just by changing var to let – you’re asking Swift to make sure the value never changes, which is another thing you no longer need to worry about.

## How to create strings

When you assign text to a constant or variable, we call that a string – think of a bunch of Scrabble tiles threaded onto a string to make a word.
Swift’s strings start and end with double quotes, but what you put inside those quotes is down to you. You can use short pieces of alphabetic text. You can use punctuation, emoji and other characters.
And you can even use other double quotes inside your string, as long as you’re careful to put a backslash before them so that Swift understands they are inside the string rather than ending the string.
These multi-line strings aren’t used terribly often, but at least you can see how it’s done: the triple quotes at the start and end are on their own line, with your string in between.
Once you’ve created your string, you’ll find that Swift gives us some useful functionality to work with its contents. You’ll learn more about this functionality over time, but I want to introduce you to three things here.

![Alt text](https://github.com/andreynho2006/swiftUI-100-days/blob/main/day1/img/img2.png)

Swift’s standard strings start and end with quotes, but must never contain any line breaks.  That works fine for small pieces of text, but becomes ugly in source code if you have lots of text you want to store. That’s where multi-line strings come in: if you use triple quotes you can write your strings across as many lines as you need, which means the text remains easy to read in your code.
Swift sees those line breaks in your string as being part of the text itself, so that string actually contains three lines.
Sometimes you will want to have long strings of text in your code without using multiple lines, but this is quite rare. Specifically, this is most commonly important if you plan to share your code with others – if they see an error message in your program they might want to search your code for it, and if you’ve split it across multiple lines their search might fail.

## How to store whole numbers

When you’re working with whole numbers such as 3, 5, 50, or 5 million, you’re working with what Swift calls integers, or Int for short – “integer” is originally a Latin word meaning “whole”, if you were curious.
Making a new integer works just like making a string: use let or var depending on whether you want a constant or variable, provide a name, then give it a value.
Integers can be really big – past billions, past trillions, past quadrillions, and well into quintillions, but they they can be really small too – they can hold negative numbers up to quintillions.
When you’re writing out numbers by hand, it can be hard to see quite what’s going on.
If we were writing that out by hand we’d probably write “100,000,000” at which point it’s clear that the number is 100 million. Swift has something similar: you can use underscores, _, to break up numbers however you want.
	Of course, you can also create integers from other integers, using the kinds of arithmetic operators that you learned at school: + for addition, - for subtraction, * for multiplication, and / for division.
Rather than making new constants each time, Swift has some special operations that adjust an integer somehow and assigns the result back to the original number.
	Before we’re done with integers, I want to mention one last thing: like strings, integers have some useful functionality attached. For example, you can call isMultiple(of:) on an integer to find out whether it’s a multiple of another integer.

![Alt text](https://github.com/andreynho2006/swiftUI-100-days/blob/main/day1/img/img3.png)

## How to store decimal numbers

When you’re working with decimal numbers such as 3.1, 5.56, or 3.141592654, you’re working with what Swift calls floating-point numbers. The name comes from the surprisingly complex way the numbers are stored by your computer: it tries to store very large numbers such as 123,456,789 in the same amount of space as very small numbers such as 0.0000000001, and the only way it can do that is by moving the decimal point around based on the size of the number.
	When that runs it won’t print 0.3. Instead, it will print 0.30000000000000004 – that 0.3, then 15 zeroes, then a 4 because… well, like I said, it’s complex.
I’ll explain more why it’s complex in a moment, but first let’s focus on what matters.
	First, when you create a floating-point number, Swift considers it to be a Double. That’s short for “double-precision floating-point number”, which I realize is quite a strange name – the way we’ve handled floating-point numbers has changed a lot over the years, and although Swift does a good job of simplifying this you might sometimes meet some older code that is more complex. In this case, it means Swift allocates twice the amount of storage as some older languages would do, meaning a Double can store absolutely massive numbers.
	Second, Swift considers decimals to be a wholly different type of data to integers, which means you can’t mix them together. After all, integers are always 100% accurate, whereas decimals are not, so Swift won’t let you put the two of them together unless you specifically ask for it to happen.
	Yes, we can see that b is really just the integer 2 masquerading as a decimal, but Swift still won’t allow that code to run. This is called type safety: Swift won’t let us mix different types of data by accident.
If you want that to happen you need to tell Swift explicitly that it should either treat the Double inside b as an Int.
	Third, Swift decides whether you wanted to create a Double or an Int based on the number you provide – if there’s a dot in there, you have a Double, otherwise it’s an Int. Yes, even if the numbers after the dot are 0.
	Many older APIs use a slightly different way of storing decimal numbers, called CGFloat. Fortunately, Swift lets us use regular Double numbers everywhere a CGFloat is expected, so although you will see CGFloat appear from time to time you can just ignore it.
In case you were curious, the reason floating-point numbers are complex is because computers are trying to use binary to store complicated numbers. For example, if you divide 1 by 3 we know you get 1/3, but that can’t be stored in binary so the system is designed to create very close approximations. It’s extremely efficient, and the error is so small it’s usually irrelevant, but at least you know why Swift doesn’t let us mix Int and Double by accident!

![Alt text](https://github.com/andreynho2006/swiftUI-100-days/blob/main/day1/img/img4.png)