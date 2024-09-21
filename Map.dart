void main() {
  Map products = {};
  products['Laptop'] = 65000;
  products['Mobile'] = 30000;
  products['PC'] = 85000;
  products['Tablet'] = 45000;
  print("Products and their prices:");
  products.forEach((name, price) {
    print("$name: \Rs.${price}");
  });
}
