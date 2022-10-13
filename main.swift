import Foundation
var unsortedString = [""]
var unsortedInts: [Int] = []
while let input = readLine() {
    unsortedString.append(input)
}
var i = 0
var y = 0
var z:Float = 0
for _ in unsortedString {
    for s in unsortedString[x].utf8 {
        z += Float(s)/pow((1000.0), Float(y))
        y += 1
    }
    unsortedInts.append(Int(z))
    y = 0
    i += 1
    z = 0
}

var total = 0
var x = 0
var unsortedInt = unsortedInts
for iteration in 0 ..< unsortedInt.count - 1 {

    var min = iteration

    for compare in iteration + 1 ..< unsortedInt.count {
        if unsortedInt[compare] < unsortedInt[min] {
            min = compare
        }
    }
    unsortedString.swapAt(iteration, min)
    unsortedInt.swapAt(iteration, min)
    x = 1
    total += 1
}
