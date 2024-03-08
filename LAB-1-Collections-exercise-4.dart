//Exercise 4

void main() {
  Map<String, int> shoppingCart = {};

  void addItem(String productName, int quantity, double pricePerUnit) {
    if (shoppingCart.containsKey(productName)) {
      shoppingCart[productName] = shoppingCart[productName]! + quantity;
    } else {
      shoppingCart[productName] = quantity;
    }
    print("$quantity $productName added to the cart.");
  }

  void removeItem(String productName, int quantity) {
    if (shoppingCart.containsKey(productName)) {
      if (shoppingCart[productName]! >= quantity) {
        shoppingCart[productName] = shoppingCart[productName]! - quantity;
        if (shoppingCart[productName] == 0) {
          shoppingCart.remove(productName);
        }
        print("$quantity $productName removed from the cart.");
      } else {
        print("Not enough $productName in the cart.");
      }
    } else {
      print("$productName not found in the cart.");
    }
  }

  double calculateTotalPrice(Map<String, int> cart, Map<String, double> prices) {
    double total = 0;
    cart.forEach((productName, quantity) {
      if (prices.containsKey(productName)) {
        total += prices[productName]! * quantity;
      }
    });
    return total;
  }

  Map<String, double> productPrices = {
    'Apple': 0.5,
    'Banana': 0.3,
    'Orange': 0.4,
  };

  addItem('Apple', 3, productPrices['Apple']!);
  addItem('Banana', 2, productPrices['Banana']!);
  addItem('Orange', 1, productPrices['Orange']!);

  print("\nCurrent cart contents:");
  shoppingCart.forEach((productName, quantity) {
    print("$productName: $quantity");
  });

  double totalPrice = calculateTotalPrice(shoppingCart, productPrices);
  print("\nTotal price: \$${totalPrice.toStringAsFixed(2)}");

  removeItem('Apple', 2);
  removeItem('Banana', 3);

  print("\nUpdated cart contents:");
  shoppingCart.forEach((productName, quantity) {
    print("$productName: $quantity");
  });

  totalPrice = calculateTotalPrice(shoppingCart, productPrices);
  print("\nUpdated total price: \$${totalPrice.toStringAsFixed(2)}");
}
