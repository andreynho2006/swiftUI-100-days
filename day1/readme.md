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