func swap(integers: inout [String], firstIndex: Int, secondIndex: Int) {
    var index = 0 
//    print("Pass: 0, Swaps: 0/0, Array: \(integers)")
    var pass = 0
    var swaps = 0
    var totalSwaps = 0
    //var integer = integers[index]
    while integers != integers.sorted() { 
        let integer = integers[(index)]
        //let nextNum = integers[(index + 1)]
        if integers.count > index + 1 {
            let nextNum = integers[index + 1]
            //print("\(nextNum), \(integer), \(index)")
            if integer > nextNum {
                integers.remove(at:index)
                integers.insert(nextNum, at: index)
                integers.remove(at: index + 1)
                //print("Check")
                integers.insert(integer, at: index + 1)
                swaps += 1
                totalSwaps += 1
            }
            //print("\(integers) " + String(index))
            //print("Check")
            index += 1
        }
        if index == integers.count - 1 {
            index = 0
            pass += 1
//            print("Pass: \(pass), Swaps: \(swaps)/\(totalSwaps), Array: \(integers)")
            swaps = 0
        }
    }
//    print("Pass: \(pass + 1), Swaps: \(swaps)/\(totalSwaps), Array: \(integers)")
//    print("Pass: \(pass + 2), Swaps: 0/\(totalSwaps), Array: \(integers)")
}
var integers : [String] = []
while let input = readLine() {

    integers.append(input.lowercased())

}
swap(integers:&integers, firstIndex:0, secondIndex:0)
