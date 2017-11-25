import UIKit

/* Declare an array of integers 2,3,5,78,342,32,4 */

var array: [Int] = [2,3,45,5,78,342,32,4,42]

/*Create a sorting function using bubble sort */

func bubbleSort() {
var sorted = array
var toSort = array.count
var swaps = 0

    
    repeat {
        var previousSwap = 0
    for i in 1..<toSort {
        if sorted[ i - 1] > sorted[i] {
        sorted.swapAt(i, i-1)
            swaps += 1
            previousSwap = i
            print(sorted)

        }
        }
    toSort = previousSwap
    } while (toSort != 0)
    
    print(sorted)
    print("The Array has been swaped \(swaps) times")
}


bubbleSort()


/* Sort the array that was created using the sort function then print the array */

/* Create a search function using binary sort */

/*
func LinearSearch (value: Int, array: [Int]) -> Bool {
    for i in array {
        if i == value {
            return true
        }
    }
    return false
}
print(linearSearch(value: 5, array: array))
*/
var array2 = [Int]()

for i in 1...100 {
    array2.append(i)
}


func BinarySearch (value: Int, array: [Int]) -> Bool
{
    let midPoint : Int = array.count / 2
    
    if( value == array[midPoint] )
    {
        print("You found me")
        return true
    }
    else if( array.count == 1 )
    {
        print("I'm not here")
        return false
    }
    else if( value < array[midPoint] )
    {
        var leftArray : [Int] = []
        
        for i in 0...(midPoint-1)
        {
            leftArray.append(array[i])
        }
        
        return BinarySearch(value: value, array: leftArray)
    }
    else if( value > array[midPoint] )
    {
        var rightArray : [Int] = []
        
        for i in (midPoint+1) ... (array.count - 1)
        {
            rightArray.append(array[i])
        }
        
        return BinarySearch(value: value, array: rightArray)
    }
    
    return false
}

if BinarySearch(value: -1, array: array2)
{
    print("atta boy")
}

/* Use the search function to find 3, 5, 32, and 43 then print the results of their findings */


/* Bonus: Create a sorting function using insertion sort */



