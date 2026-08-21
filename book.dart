class Book {
  String title;
  String author;
  double price;
  int pages;
  Book(this.title, this.author, this.price, this.pages);
  void displayBook() {
    print('Title: $title');
    print('Author: $author');
    print('Price: \$$price');
    print('Pages: $pages');
    print('-------------------');
  }
  bool isExpensive() {
    return price > 500;
  }
}
void main() {
  Book book1 = Book('Clean Code', 'Robert C. Martin', 450.0, 464);
  Book book2 = Book('Design Patterns', 'Erich Gamma et al.', 650.0, 395);
  Book book3 = Book('Dart & Flutter in Action', 'Remi Rousselet', 550.0, 500);
  List<Book> books = [book1, book2, book3];
  for (var book in books) {
    book.displayBook();
    if (book.isExpensive()) {
      print('Status: "${book.title}" is EXPENSIVE (> \$500)');
    } else {
      print('Status: "${book.title}" is reasonably priced.');
    }
    print('===================');
  }
}