import java.time.LocalTime

fun main() {
    // Write a Kotlin program to declare a variable currentTime of type String and assign it a value representing the current time
    val currentTime: String = LocalTime.now().toString()
    // Declare a variable temperature and assign a value of type Double representing the current temperature
    val temperature: Double = 20.0
    // Declare a variable grade and assign it a Char representing a student's grade (e.g., 'A', 'B', 'C', etc.)
    val grade: Char = 'A'

    println(currentTime)
    println("Temperature: $temperature")
    println("Grade: $grade")
}