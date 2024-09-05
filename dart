import "dart:io";
void main() {
  // Initialize the inventory list
  List<String> inventory = ["apple", "banana", "carrot", "dates"];

  while (true) {
    // Display the menu
    print('\nPlease select an operation to do:');
    print('[1] Add New Product in the inventory');
    print('[2] Remove a Product from the inventory');
    print('[3] Display the total number of items in the inventory');
    print('[4] Allow the user to search for an item and display if it is available or not.');
    print('[5] Sort the inventory list alphabetically');
    print('[6] Exit');

    
    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        print('Please enter the product you want to add to the list:');
        String? newProduct = stdin.readLineSync();
        if (newProduct != null && newProduct.isNotEmpty) {
          inventory.add(newProduct);
          print('The updated product list is as follows: ${inventory.join(', ')}');
        } else {
          print('Invalid input. Please enter a valid product name.');
        }
        break;

      case '2':
        print('Please enter the product you want to remove from the list:');
        String? removeProduct = stdin.readLineSync();
        if (removeProduct != null && inventory.contains(removeProduct)) {
          inventory.remove(removeProduct);
          print('The updated product list is as follows: ${inventory.join(', ')}');
        } else {
          print('Product not found in the inventory.');
        }
        break;

      case '3':
        print('The total number of items in the inventory is: ${inventory.length}');
        break;

      case '4':
        print('Please enter the product you want to search for:');
        String? searchProduct = stdin.readLineSync(); }
  
        }

}
