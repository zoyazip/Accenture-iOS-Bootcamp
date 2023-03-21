import UIKit


/*
Exercise 1
Declare two string constants firstString and secondString. Assign them the values "I'm learing" and "swift". Print the phrase "I'm learing swift !!!" using these string variables.
*/

let firstString: String = "I'm learning";
let secondString: String = "swift";

print("\(firstString) \(secondString)!!!");

/*
Exercise 2.1
Create a constant named myAge and assign it the value of your age.
*/

let myAge = 23

/*
Exercise 2.2
Declare an Int variable named myAgeInTenYears and assign it the value of your age after 10 years(use the constant myAge and the addition(+) operator).
*/

var myAgeInTenYears: Int = myAge + 10;

/*
Exercise 2.3
Declare another daysInYear constant and set it to 365.25 (the number of days in a leap year).
*/

let daysInYear = 365.25;

/*
Exercise 2.4
Declare a Float variable named daysPassed and set it to the number of days since you were born plus 10 years (use myAgeInTenYears(variable) and daysInYear(constant)).
*/

var daysPassed: Float = Float(daysInYear) * Float(myAgeInTenYears);

/*
Exercise 2.5
Using the print() function, print the phrases like: "My age is <...> years. After 10 years, I will be <...> years old. From the moment of my birth day have passed approximately <...>" . (Symbols (<...>) must be replaced with variable values !)
*/

print("My age is \(myAge) years. After 10 years, I will be \(myAgeInTenYears) years old. From moment of my birth day have passed approximately \(daysPassed - Float(daysInYear * 10))");

/*
Exercise 3.
 
Calculate triangle's area and perimeter.
Conditions: triangle length: AC = 8.0, CB = 6.0. The hypotenuse of triangle AB is calculated using the sqrt(Double) function, replacing Double with the sum of squares of length.
 Steps:
 1.Right-angled triangle
 2.Hypotenuse of the triangle
 3.Area of a triangle
 4.Triangle perimeter
*/
let AC = 8.0;
let CB = 6.0;

let AB = sqrt(AC + CB);
let p = AC + AB + CB;
let halfP = p/2;

let s = sqrt(halfP * (halfP - AB) * (halfP - AC) * (halfP - CB));

/*
 Ex5:
 Calculate the number of years, months, days from you birthday to current date.
 print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth)")
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

print("Total years: \(totalYearsFromBirth) , total months: \(totalMonthFromBirth), total days: \(totalDaysFromBirth)");
