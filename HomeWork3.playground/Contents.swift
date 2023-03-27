import UIKit

/*
 Exercise 1
 Declare myTeam as Girls or Boys.
 Create a Dictionary resultsOfGames where Key contains teamName as String and Value of two [String] results.
 Print the output, for example:
 Girls against Brooklyn Nets scored - 99:89
 Girls against Brooklyn Nets scored - 109:99
 Girls against Dallas Mavericks scored - 87:93
 Girls against Dallas Mavericks scored - 104:97
 Girls against Washington Wizards scored - 117:112
 Girls against Washington Wizards scored - 107:122
 */

let myTeam: String = "Boys";
let oponents: [String] = ["Brooklyn Nets", "Dallas Mavericks", "Washington Wizards"];

func getScore() -> String{
    return "\(Int.random(in: 0...200)) : \(Int.random(in: 0...200))";
}

func getResults(_ oponents: [String]) -> [String:(String, String)]{
    
    var resultsOfGames: [String:(String, String)] = [:];
    
    for i in oponents{
        var scoreFirst = getScore();
        var scoreSec = getScore();
        resultsOfGames[i] = (scoreFirst, scoreSec);
    }
    
    return resultsOfGames;
}

var resultsOfGames: [String: (String, String)] = getResults(oponents);

func printResults(results: [String:(String, String)], myTeam: String){
    for i in results{
        print("\(myTeam) against \(i.key) scored - \(i.value.0)");
        print("\(myTeam) against \(i.key) scored - \(i.value.1)");
    }
}

printResults(results: resultsOfGames, myTeam: myTeam);

/*
 Exercise 2
 Declare an Array of Int. In the wallet you have only 1x by 5 - 500 EUR.
 Create a func to calculateCash sum of your cash inside your wallet.
 Run the func.
 */

let wallet: [Int] = [5, 10, 20, 50, 100, 200, 500];
func calculateCash(_ wallet: [Int]) -> Int{
    var sum: Int = 0;
    for i in wallet{
        sum += i;
    }
    return sum;
}
calculateCash(wallet);

/*
 Exercise 3
 Create a func isEvenNumber to calculate if a number is odd or even. If the number is even func should return true.
 Run the func.
 */

var number: Int = Int.random(in: 1...25);
func isEvenNumber(_ number: Int) -> Bool{
    return number % 2 == 0;
}
print("Number \(number) is \(isEvenNumber(number) ? "even" : "odd")");

/*
 Exercise 4
 Create a func createArray to calculate some number from start: to end: than return Int array.
 Declare array and put createArray(from: 1, to: 100)
 print(array)
 */

func createArray(from: Int, to: Int) -> [Int]{
    var array: [Int] = [];
    for i in from...to{
        array.append(i);
    }
    return array;
}
var array = createArray(from: 1, to: 100);
print(array);

/*
 Exercise 5
 Create for loop.
 Use array result from Exercise 4.
 Use isEvenNumber from Exercise 3.
 Calculate and remove isEvenNumber using if array.firstIndex of number, inside the if array.remove at index.
 It should be 1/2 of createArray and started from [1,3,5.....
 */

for i in (0..<array.count).reversed(){
    if(isEvenNumber(array[i])){
        array.remove(at: i);
    }
}
/*
 Without using for loop :
 
 array.removeAll(where: {isEvenNumber($0)});
 */

print(array);
