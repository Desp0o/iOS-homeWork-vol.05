//: [Previous](@previous)

import Foundation

//4. შექმენით ორი Set fruitsA და fruitsB, რომელებიც შეიცავენ ხილების სახელებს (ზოგიერთი ხილი შეიძლება გვქონდეს ორივე სეტში). გამოიყენეთ Set-ის ოპერაციები (union, intersection, symmetricDifference) და forEach მეთოდი, რომ დაბეჭდოთ: 1) ყველა უნიკალური ხილი ორივე სეტიდან 2) ხილები, რომლებიც ორივე სეტში გვხვდება 3) ხილები, რომლებიც მხოლოდ ერთ სეტშია

var fruitsA: Set<String> = ["Apple", "Peach"]
var fruitsB: Set<String> = ["Apple", "Pineapple"]

var uniqueClosure: (Set<String>, Set<String>) -> Set<String> = { arr1, arr2 in
    arr1.union(arr2)
}

var intersecClosure: (Set<String>, Set<String>) -> Set<String> = { arr1, arr2 in
    arr1.intersection(arr2)
}

var differClosure: (Set<String>, Set<String>) -> Set<String> = { arr1, arr2 in
    arr1.symmetricDifference(arr2)
}

func printFruirs(title: String ,arr1: Set<String>, arr2: Set<String>, action: (Set<String>, Set<String>) -> Set<String>) {
    var result = action(arr1, arr2)
    
    print("\(title):")
    
    result.forEach { fruit in
        print(fruit)
    }
    
    print("\n")
}

printFruirs(title: "union" ,arr1: fruitsA, arr2: fruitsB, action: uniqueClosure)
printFruirs(title: "intersection" ,arr1: fruitsA, arr2: fruitsB, action: intersecClosure)
printFruirs(title: "symmetricDifference" ,arr1: fruitsA, arr2: fruitsB, action: differClosure)

//: [Next](@next)
