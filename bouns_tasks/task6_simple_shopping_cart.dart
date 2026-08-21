/*
  Task 6: Simple Shopping Cart 🛒
  
  Details:
  Create two classes: Product and ShoppingCart.
  
  Product
  Attributes:
  - name
  - price
  - quantity
  Constructor to initialize them.
  Methods:
  - getTotalPrice() -> returns price * quantity
  
  ShoppingCart
  Attribute:
  - products -> a List<Product>
  Methods:
  - addProduct(Product product)
  - calculateTotal() -> returns the total price of all products.
  - showCart() -> prints every product and its total price.
  - applyDiscount(double percentage) -> returns the final cart price after the discount.
*/

class Product {
  String name;
  double price;
  int quantity;

  Product(this.name, this.price, this.quantity);

  double getTotalPrice() {
    return price * quantity;
  }
}

class ShoppingCart {
  List<Product> products = [];

  void addProduct(Product product) {
    products.add(product);
    print('Added "${product.name}" to cart.');
  }

  double calculateTotal() {
    double total = 0.0;
    for (var p in products) {
      total += p.getTotalPrice();
    }
    return total;
  }

  void showCart() {
    print('======== SHOPPING CART ========');
    for (var p in products) {
      print('${p.name} x${p.quantity} - \$${p.getTotalPrice()}');
    }
    print('-------------------------------');
    print('Subtotal: \$${calculateTotal()}');
    print('===============================\n');
  }

  double applyDiscount(double percentage) {
    double total = calculateTotal();
    return total - (total * (percentage / 100));
  }
}

void main() {
  ShoppingCart cart = ShoppingCart();

  cart.addProduct(Product('Headphones', 50.0, 2));
  cart.addProduct(Product('Keyboard', 30.0, 1));
  cart.addProduct(Product('Mousepad', 15.0, 2));

  print('');
  cart.showCart();

  double discountPercent = 15.0;
  double finalPrice = cart.applyDiscount(discountPercent);
  print('Cart Total after $discountPercent% discount: \$${finalPrice.toStringAsFixed(2)}');
}
