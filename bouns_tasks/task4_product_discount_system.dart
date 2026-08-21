/*
  Task 4: Product Discount System
  
  Details:
  Create a Product class with:
  - Attributes: name, price, quantity
  - A constructor to initialize them.
  - A method calculateTotal() that returns: price * quantity
  - A method applyDiscount(double percentage) that returns the price after applying the discount.
  - A method printReceipt() that displays the product name, quantity, total price, and discounted price.
*/

class Product {
  String name;
  double price;
  int quantity;

  Product(this.name, this.price, this.quantity);

  double calculateTotal() {
    return price * quantity;
  }

  double applyDiscount(double percentage) {
    double total = calculateTotal();
    return total - (total * (percentage / 100));
  }

  void printReceipt(double discountPercentage) {
    print('========= RECEIPT =========');
    print('Product: $name');
    print('Quantity: $quantity');
    print('Unit Price: \$${price}');
    print('Total Price: \$${calculateTotal()}');
    print('Discount: ${discountPercentage}%');
    print('Discounted Total: \$${applyDiscount(discountPercentage).toStringAsFixed(2)}');
    print('===========================');
  }
}

void main() {
  Product laptop = Product('Wireless Mouse', 25.0, 3);
  laptop.printReceipt(10.0); // 10% discount
}
