// Implement a program to find the sum of all even numbers from 1 to 50 using a for loop
fun sumOfEvenNumbers() {
    var sum = 0
    for (i in 1..50) {
        if (i % 2 == 0) {
            sum += i
        }
    }
    println("Sum of even numbers from 1 to 50 is: $sum")
}

// Develop a program to find the prime numbers within a given range using a while loop
fun findPrimeNumbers(start: Int, end: Int) {
    var i = start
    while (i <= end) {
        if (isPrime(i)) {
            println("$i is a prime number.")
        }
        i++
    }
}

fun isPrime(num: Int): Boolean {
    if (num <= 1) return false
    for (i in 2 until num) {
        if (num % i == 0) return false
    }
    return true
}

// Implement a program to check if a given number is a palindrome using a while loop
fun isPalindrome(num: Int): Boolean {
    var reversed = 0
    var remainder: Int
    var original = num

    while (original != 0) {
        remainder = original % 10
        reversed = reversed * 10 + remainder
        original /= 10
    }

    return num == reversed
}

fun main() {
    sumOfEvenNumbers()
    findPrimeNumbers(10, 50)
    println("Is 121 a palindrome? ${isPalindrome(121)}")
}