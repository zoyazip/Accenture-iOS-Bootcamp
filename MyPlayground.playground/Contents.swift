import UIKit

func descendingOrder(of numbers: Int) -> Int{
    return Int(String("\(numbers)".characters.sorted(by: <)))!;
}


print(descendingOrder(of: 123456789));
