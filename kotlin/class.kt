   // Develop a class representing a Rectangle with properties for length and width and methods to calculate its perimeter and area
    class Rectangle(val length: Double, val width: Double) {
        fun perimeter() = 2 * (length + width)
        fun area() = length * width
    }

    // Create a class representing a Triangle with properties for three sides and methods to determine if it's equilateral, isosceles, or scalene
    class Triangle(val sideA: Double, val sideB: Double, val sideC: Double) {
        fun type(): String {
            return when {
                sideA == sideB && sideB == sideC -> "Equilateral"
                sideA == sideB || sideB == sideC || sideA == sideC -> "Isosceles"
                else -> "Scalene"
            }
        }
    }

    // Develop a class to model a ShoppingCart with properties for items and methods for adding, removing, and calculating total price
    class ShoppingCart {
        val items = mutableListOf<String>()
        val prices = mutableMapOf<String, Double>()

        fun addItem(item: String, price: Double) {
            items.add(item)
            prices[item] = price
        }

        fun removeItem(item: String) {
            items.remove(item)
            prices.remove(item)
        }

        fun totalPrice(): Double {
            var total = 0.0
            for (item in items) {
                total += prices[item] ?: 0.0
            }
            return total
        }
    }

    fun main() {
        // Create a Rectangle object
        val rectangle = Rectangle(5.0, 3.0)
        println("Rectangle perimeter: ${rectangle.perimeter()}")
        println("Rectangle area: ${rectangle.area()}")

        // Create a Triangle object
        val triangle = Triangle(3.0, 4.0, 5.0)
        println("Triangle type: ${triangle.type()}")

        // Create a ShoppingCart object
        val shoppingCart = ShoppingCart()
        shoppingCart.addItem("Apple", 0.99)
        shoppingCart.addItem("Banana", 0.59)
        println("Total price: ${shoppingCart.totalPrice()}")
        shoppingCart.removeItem("Apple")
        println("Total price after removing Apple: ${shoppingCart.totalPrice()}")
    }
