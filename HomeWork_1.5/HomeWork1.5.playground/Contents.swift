import UIKit

/*
 Ex1:
 1.1 Declare two variables of type Float and assign each a number with a fractional part - for example, 3.14 or 42.0
 1.2 Declare another variable of type Double and assign it the sum of two variables of type Float
 1.3 Print the result with print ()
 
 */

var pi: Float = 3.14;
var e: Float = 2.71;

var sum: Double = Double(pi) + Double(e);

print("Sum = \(sum)");

/*
 Ex2:
 2.1 Create a variable numberOne and assign any integer value to it
 
 2.2 Create another integer variable numberTwo and assign it any value less than numberOne
 
 2.3 Set the new integer constant result to the result of dividing numberOne by numberTwo
 
 2.4 Assign the new integer constant remainder the remainder of numberOne divided by numberTwo
 
 2.5 Output to the console the message: "When dividing <...> by <...>, the result is <...>, the remainder is <...>".
 
 */

var numberOne: Int = 25;
var numberTwo: Int = 13;

let div: Int = numberOne / numberTwo;
let reminder: Int = numberOne % numberTwo;

print("When dividing \(numberOne) by \(numberTwo), the result is \(div), the remainder is \(reminder)")

/*
 Ex3:
 You need to buy several new MacBook Pro, each cost 1000 EUR.
 If you are buying 5 and more, with discount it will cost you 900 each! If you are buying 10 and more with discount it will cost you 850 each! Create if-else statements to check Conditions of buying in different amount!
 print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur")
 */

var price: Int = 1000;
let qty: Int = 5;

if(qty >= 5){
    price = 900;
}
else if(qty >= 10){
    price = 850;
}

let totalSum: Double = Double(price) * Double(qty);

print("new: \(qty) MacBook Pro with the price of: \(price) EUR, will cost you: \(totalSum) Eur");
/*
 Ex4:
 Create String userInputAge and put value "33a" and convert to Int to make Fatal error: Unexpectedly found nil while unwrapping an Optional value!
 Fix this Fatal error inside the if-else statements to print whenever this age can be converted to Int or not!
 */

let userInputAge: String = "33a";

if Int(userInputAge) != nil{
    print("Variable \(userInputAge) can be parsed to Int");
}
else{
    print("Variable \(userInputAge) cannot be parsed to Int");
}

/*
 Ex5:
 Calculate the number of years, months, days have passed from you birthday to current date.
 print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth) have passed")
 */

let birthYear = 1999;
let birthMonth = 3;
let birthDay = 25;

let now = Date.now;
let myCalendar = Calendar.current;

let stringDate = "\(birthYear)-\(birthMonth)-\(birthDay)";
let dateFormatter = DateFormatter();
dateFormatter.dateFormat = "yyyy-MM-dd";

let date = dateFormatter.date(from: stringDate);

/* dateComponents - Returns the difference between two dates specified as DateComponents. */
let totalYearsFromBirth = myCalendar.dateComponents([.year], from: date!, to: now).year!;
let totalMonthFromBirth = myCalendar.dateComponents([.month], from: date!, to: now).month!;
let totalDaysFromBirth = myCalendar.dateComponents([.day], from: date!, to: now).day!;

print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth) have passed");

/*
 Ex6:
 Use Exercise 5 monthOfBirth to calculate in which quarter of the year you were born.
 Use switch case to print("I was born in the ... quarter")
 */

switch(birthMonth){
    case 1...3:
        print("I was born in the first quarter");
        break;
    case 4...6:
        print("I was born in the second quarter");
        break;
    case 7...9:
        print("I was born in the third quarter");
        break;
    case 10...12:
        print("I was born in the fourth quarter");
        break;
    default:
        break;
}
    


