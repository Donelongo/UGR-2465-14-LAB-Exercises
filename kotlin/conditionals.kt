fun main(){
// Write a program that determines if a triangle is equilateral, isosceles, or scalene based on the lengths of its sides
    val side1 = 5
    val side2 = 5
    val side3 = 5

    if (side1 == side2 && side3 == side2){
        println("The triangle is equilateral")

    }
    else if (side1 == side2 || side2 == side3 || side3 == side1){
        println("The triangle is isosceles")
    }
    else{
        println("The triangle is scalene")
    }

// Implement a program that calculates the total salary of an employee based on the number of hours worked and the hourly rate, considering overtime

    val hoursWorked = 45
    val hourlyRate = 100.0
    val overtimeRate = 1.5 * hourlyRate
    val overtimeHours = if (hoursWorked > 40) hoursWorked - 40 else 0
    val regularHours = hoursWorked - overtimeHours

    val salary = regularHours * hourlyRate + overtimeHours * overtimeRate
    println("Total salary: $salary")

// Implement a program that determines the season based on the month and day entered

    val month = 12
    val day = 25
    val season = when (month) {
        12, 1, 2 -> {
            if (day in 1..31) "Winter"
            else "Invalid day"
        }
        3, 4, 5 -> {
            if (day in 1..30) "Spring"
            else "Invalid day"
        }
        6, 7, 8 -> {
            if (day in 1..31) "Summer"
            else "Invalid day"
        }
        9, 10, 11 -> {
            if (day in 1..30) "Autumn"
            else "Invalid day"
        }
        else -> "Invalid month"
    }

    println("The season is $season")

// Write a program that finds the largest among three different numbers using nested conditionals

    val num1 = 10
    val num2 = 20
    val num3 = 15

    val largest = if (num1 > num2) {
        if (num1 > num3) {
            num1
        } else {
            num3
        }
    } else {
        if (num2 > num3) {
            num2
        } else {
            num3
        }
    }

    println("The largest number is $largest")
}
