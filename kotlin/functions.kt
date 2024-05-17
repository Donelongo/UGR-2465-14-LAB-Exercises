// Implement a function that sorts an array of integers in ascending order

fun sortArray(array: Array<Int>): Array<Int> {
    return array.sortedArray()
}
// Implement a function that calculates the factorial of a given number using recursion

fun calculateFactorial(number: Int): Int {
    return if (number == 1) number else number * calculateFactorial(number - 1)
}
// Develop a function that checks if a given string contains only unique characters

fun hasUniqueCharacters(str: String): Boolean {
    return str.length == str.toSet().size
}

fun main() {
    val array = arrayOf(5, 2, 3, 1, 4)
    val sortedArray = sortArray(array)
    println(sortedArray.contentToString())

    val number = 5
    val factorial = calculateFactorial(number)
    println("Factorial of $number = $factorial")

    val str1 = "hello"
    val str2 = "world"
    println("String $str1 has unique characters: ${hasUniqueCharacters(str1)}")
    println("String $str2 has unique characters: ${hasUniqueCharacters(str2)}")
}