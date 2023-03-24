import UIKit

/*
 Exercise 1
 The user opens a deposit in the bank for 5 years in the amount of 500_000 Eur. The interest rate per annum \(rate). Calculate the amount of income \(profit) at the end of the \(period).
 for _ in 1...period{
 }
 print("Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(deposit) Eur !")
 */

var period: Int = 5;
var deposit: Double = 500000;
var interestRate: Double = 0.05;

var profit: Double = 0.0;

for _ in 1...period{
    profit += deposit * interestRate;
}

deposit += profit;

print("Amount of income after \(period) years will be \(profit) Eur. My total deposit will be \(deposit) Eur !");

/*
 Exercise 2
 Create an integer array with any set of numbers and  print("My even numbers are: \(evenNumber)")
 Use a % inside the for loop.
 */

let integerArray: [Int] = [1, 2, 3, 4, 5, 6, 7, 8, 9, 0];
for evenNumber in integerArray{
    if(evenNumber % 2 != 0){
        print("My even numbers are: \(evenNumber)");
    }
}

/*
 Exercise 3
 Inside the for loop create randomNumber for the random Int calculation. Calculate and print("Number 5 will be after \(counter) shuffles"). Don't forget to make a break inside the if statement.
 */

for counter in 1...10{
    var randomNumber = Int.random(in: 1...10);
    if(randomNumber == 5){
        print("Number 5 will be after \(counter) shuffles");
        break;
    }
}

/*
 Exercise 4
 A bug is climbing to a 10-meter electric post. During the day, bug can climb two meters, during the night she slides down to 1 meter. Determine with the help of the cycle how many days bug will climb on the top of the post. Think about which loop to use in which situation. print("bug will spend \(numberOfDays)) to reach top of the post")
 */

var height: Int = 10;
var numberOfDays: Int = 0;
var isNight: Bool = false;

while height >= 0{
    if(isNight){
        height += 1;
        isNight = false;
    }
    else{
        height -= 2;
        isNight = true;
        numberOfDays += 1;
    }
}

print("Bug will spend \(numberOfDays) days to reach top of the post");

