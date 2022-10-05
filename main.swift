var unsortedStrings = [String]();

while let line = readLine() {
    if(line.count == 0) {break;}
    unsortedStrings.append(line)
}

// Add your code below:

func swap(integers: inout [String], firstIndex:Int, secondIndex:Int) { // Swap two places in an integer array
    let temp = integers[secondIndex]
    integers[secondIndex] = integers[firstIndex]
    integers[firstIndex] = temp
}

var integers = unsortedStrings

var passes = 0;
var totalSwaps = 0;
var sort = true;

print("Pass: \(passes), Swaps: 0/\(totalSwaps), Array: \(integers)")
    
while sort == true { // while found something to swap (if didn't find anything, stop looping)
    var swaps = 0
    sort = false
    for i in 0..<integers.count-1 { // go for each element in the array except the last one.
        if(integers[i] > integers[i+1]) { // if the current element is greater than the next, swap them.
            sort = true
            swaps += 1 // add one to the swaps for the step
            totalSwaps += 1 // add one to the total amount of swaps for the bubble sort
            swap(integers:&integers, firstIndex:i, secondIndex:i+1) // actually swap the two elements
         }
    }
    passes += 1 // increment how many steps/passes it has taken.
//    print("Pass: \(passes), Swaps: \(swaps)/\(totalSwaps), Array: \(integers)") // print out the required format
}
print(integers)
