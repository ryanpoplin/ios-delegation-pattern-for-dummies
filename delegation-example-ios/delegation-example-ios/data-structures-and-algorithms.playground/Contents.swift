//: Playground - noun: a place where people can play

import UIKit

// Big O Notation:
// if an algorithm performs f(N) steps,
// for some mathematical function 'f',
// then the algorithm has O(f(N)) (Order f of N performance)
// for an array containing 'N' items, the loop performs 'N' steps
// if an algorithm performs f(N) steps followed by g(N) steps, then it is O(f(N) + g(N))`
let values = [0, 1, 2, 3, 4, 5, 6]
var maxValue = values[0]
var minValue = values[0]
var i: Int
// O(N + N) = O(2N)
// if f(N) > g(N) for large N, then O(f(N) + g(N)) = O(f(N))
// O(C + f(N)) = O(f(N))
for i = 0; i < values.count; ++i {
	if values[i] > maxValue {
		maxValue = values[i]
	}
	if values[i] < minValue {
		minValue = values[i]
	}
}
println(maxValue)
println(minValue)
// if an algorithm performs g(N) steps for each of f(N) steps, then it is O(f(N)*g(N))
var values2 = [20, 21, 22, 23, 24, 25, 80, 32]
var values3 = [20, 30, 40, 50, 60, 70, 80, 32]
// var values4 = [20, 30, 40, 50, 60, 70, 80, 32]
var j: Int, k: Int
var identicalValues = [Int]()
// O(N * N) = O(Nsquared)
for j = 0; j < values2.count; ++j {
	for k = 0; k < values3.count; ++k {
		if values2[j] == values3[k] {
			let identicalValue = values2[j]
			identicalValues.append(identicalValue)
		}
	}
}
// ignore constant multiples
// O(C*f(N)) = O(f(N))
// O(f(C*N)) = O(f(N))
