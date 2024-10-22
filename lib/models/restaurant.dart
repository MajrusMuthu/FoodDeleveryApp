import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:food_delevery_app/models/cart_item.dart';
import 'package:food_delevery_app/models/food.dart';
import 'package:intl/intl.dart';

class Restaurant extends ChangeNotifier {
  //  List of food menu
  final List<Food> _menu = [
    //burgers
    Food(
        name: "Classic Cheeseburger",
        description:
            "ADD DESCRIPTION",
        imagePath: "assets/Images/Burgers/classic-cheeseburger.jpg",
        price: 299.99,
        category: FoodCategory.burgers,
        availableAddOns: [
          AddOn(name: 'Extra cheese', price: 20.99),
          AddOn(name: 'Bacon', price: 15.99),
          AddOn(name: 'Avacado', price: 50.99),
        ]),

    Food(
        name: "Ground chicken Burger",
        description:
            "ADD DESCRIPTION",
        imagePath: "assets/Images/Burgers/ground-chicken-burgers-1.jpg",
        price: 399.99,
        category: FoodCategory.burgers,
        availableAddOns: [
          AddOn(name: 'Extra cheese', price: 20.99),
          AddOn(name: 'Bacon', price: 15.99),
          AddOn(name: 'Avacado', price: 50.99),
        ]),

    Food(
        name: "Bacon Cheeseburger",
        description:
            "ADD DESCRIPTION",
        imagePath: "assets/Images/Burgers/Bacon-Cheeseburger.jpg",
        price: 359.99,
        category: FoodCategory.burgers,
        availableAddOns: [
          AddOn(name: 'Extra cheese', price: 20.99),
          AddOn(name: 'Bacon', price: 15.99),
          AddOn(name: 'Avacado', price: 50.99),
        ]),

    Food(
        name: "Butternut Beanburger",
        description:
            "ADD DESCRIPTION",
        imagePath: "assets/Images/Burgers/butternut.jpg",
        price: 269.99,
        category: FoodCategory.burgers,
        availableAddOns: [
          AddOn(name: 'Butternut', price: 19.99),
          AddOn(name: 'Bacon', price: 15.99),
          AddOn(name: 'Avacado', price: 50.99),
        ]),

    Food(
        name: "Hamburgers",
        description:
            "ADD DESCRIPTION",
        imagePath: "assets/Images/Burgers/Hamburgers.jpg",
        price: 199.99,
        category: FoodCategory.burgers,
        availableAddOns: [
          AddOn(name: 'Extra cheese', price: 20.99),
          AddOn(name: 'Bacon', price: 15.99),
          AddOn(name: 'Avacado', price: 50.99),
        ]),

    Food(
        name: "Herby Chicken Burger",
        description:
            "ADD DESCRIPTION",
        imagePath: "assets/Images/Burgers/Herby-Chicken-Burger.jpg",
        price: 249.99,
        category: FoodCategory.burgers,
        availableAddOns: [
          AddOn(name: 'Extra cheese', price: 20.99),
          AddOn(name: 'Bacon', price: 15.99),
          AddOn(name: 'Avacado', price: 50.99),
        ]),

    // salads
    Food(
        name: "Caesar Salad",
        description:
            " ADD DESCRIPTION ",
        imagePath: "assets/Images/Salads/caesar-salad.png",
        price: 99.99,
        category: FoodCategory.salads,
        availableAddOns: [
          AddOn(name: 'Grilled Chicken', price: 60.99),
          AddOn(name: 'Anchovies', price: 99.99),
          AddOn(name: 'Extra Parmesan', price: 50.99),
        ]),
    Food(
        name: "Quinoa Salad",
        description:
            "ADD DESCRIPTION",
        imagePath: "assets/Images/Salads/1.png",
        price: 169.99,
        category: FoodCategory.salads,
        availableAddOns: [
          AddOn(name: 'Extra cheese', price: 20.99),
          AddOn(name: 'Bacon', price: 15.99),
          AddOn(name: 'Avacado', price: 50.99),
        ]),
    Food(
        name: "Fruits Salad",
        description:
            "ADD DESCRIPTION",
        imagePath: "assets/Images/Salads/6.png",
        price: 249.99,
        category: FoodCategory.salads,
        availableAddOns: [
          AddOn(name: 'Extra cheese', price: 20.99),
          AddOn(name: 'Bacon', price: 15.99),
          AddOn(name: 'Avacado', price: 50.99),
        ]),
    Food(
        name: "Classic Veg Salad ",
        description:
            "ADD DESCRIPTION",
        imagePath: "assets/Images/Salads/2.png",
        price: 249.99,
        category: FoodCategory.salads,
        availableAddOns: [
          AddOn(name: 'Extra cheese', price: 20.99),
          AddOn(name: 'Bacon', price: 15.99),
          AddOn(name: 'Avacado', price: 50.99),
        ]),
    Food(
        name: "Asian Salad",
        description:
            "ADD DESCRIPTION",
        imagePath: "assets/Images/Salads/3.png",
        price: 249.99,
        category: FoodCategory.salads,
        availableAddOns: [
          AddOn(name: 'Extra cheese', price: 20.99),
          AddOn(name: 'Bacon', price: 15.99),
          AddOn(name: 'Avacado', price: 50.99),
        ]),

    //sides

    Food(
        name: "French Fries Potato (M)",
        description:
            "ADD DESCRIPTION",
        imagePath: "assets/Images/Sides/1.png",
        price: 69.99,
        category: FoodCategory.sides,
        availableAddOns: [
          AddOn(name: 'Grilled Chicken', price: 60.99),
          AddOn(name: 'Anchovies', price: 99.99),
          AddOn(name: 'Extra Parmesan', price: 50.99),
        ]),

    Food(
        name: "Onion Rings",
        description:
            "ADD DESCRIPTION",
        imagePath: "assets/Images/Sides/2.png",
        price: 99.99,
        category: FoodCategory.sides,
        availableAddOns: [
          AddOn(name: 'Grilled Chicken', price: 60.99),
          AddOn(name: 'Anchovies', price: 99.99),
          AddOn(name: 'Extra Parmesan', price: 50.99),
        ]),

    Food(
        name: "Classic French Fries",
        description:
            "ADD DESCRIPTION",
        imagePath: "assets/Images/Sides/3.png",
        price: 99.99,
        category: FoodCategory.sides,
        availableAddOns: [
          AddOn(name: 'Grilled Chicken', price: 60.99),
          AddOn(name: 'Anchovies', price: 99.99),
          AddOn(name: 'Extra Parmesan', price: 50.99),
        ]),

    Food(
        name: "Whopper Onion Ring French Fries",
        description:
            "ADD DESCRIPTION",
        imagePath: "assets/Images/Sides/4.png",
        price: 99.99,
        category: FoodCategory.sides,
        availableAddOns: [
          AddOn(name: 'Grilled Chicken', price: 60.99),
          AddOn(name: 'Anchovies', price: 99.99),
          AddOn(name: 'Extra Parmesan', price: 50.99),
        ]),

    Food(
        name: "Cheese French Fries",
        description:
            "ADD DESCRIPTION",
        imagePath: "assets/Images/Sides/5.png",
        price: 99.99,
        category: FoodCategory.sides,
        availableAddOns: [
          AddOn(name: 'Grilled Chicken', price: 60.99),
          AddOn(name: 'Anchovies', price: 99.99),
          AddOn(name: 'Extra Parmesan', price: 50.99),
        ]),

    // desserts

    Food(
        name: "Cream Cheese Brownies Recipe",
        description:
            "ADD DESCRIPTION",
        imagePath: "assets/Images/Desserts/1.png",
        price: 99.99,
        category: FoodCategory.desserts,
        availableAddOns: [
          AddOn(name: 'Grilled Chicken', price: 60.99),
          AddOn(name: 'Anchovies', price: 99.99),
          AddOn(name: 'Extra Parmesan', price: 50.99),
        ]),

    Food(
        name: "Pumpkin Brownies Recipe",
        description:
            "ADD DESCRIPTION",
        imagePath: "assets/Images/Desserts/2.png",
        price: 99.99,
        category: FoodCategory.desserts,
        availableAddOns: [
          AddOn(name: 'Grilled Chicken', price: 60.99),
          AddOn(name: 'Anchovies', price: 99.99),
          AddOn(name: 'Extra Parmesan', price: 50.99),
        ]),

    Food(
        name: "Baklava",
        description:
            "ADD DESCRIPTION",
        imagePath: "assets/Images/Desserts/3.png",
        price: 99.99,
        category: FoodCategory.desserts,
        availableAddOns: [
          AddOn(name: 'Grilled Chicken', price: 60.99),
          AddOn(name: 'Anchovies', price: 99.99),
          AddOn(name: 'Extra Parmesan', price: 50.99),
        ]),

    Food(
        name: "Lava Cake",
        description:
            "ADD DESCRIPTION",
        imagePath: "assets/Images/Desserts/4.png",
        price: 99.99,
        category: FoodCategory.desserts,
        availableAddOns: [
          AddOn(name: 'Grilled Chicken', price: 60.99),
          AddOn(name: 'Anchovies', price: 99.99),
          AddOn(name: 'Extra Parmesan', price: 50.99),
        ]),

    Food(
        name: "Classic Molten ",
        description:
            "ADD DESCRIPTION",
        imagePath: "assets/Images/Desserts/5.png",
        price: 99.99,
        category: FoodCategory.desserts,
        availableAddOns: [
          AddOn(name: 'Grilled Chicken', price: 60.99),
          AddOn(name: 'Anchovies', price: 99.99),
          AddOn(name: 'Extra Parmesan', price: 50.99),
        ]),

    //driks
    Food(
        name: "Mojito Orenge",
        description:
            "ADD DESCRIPTION",
        imagePath: "assets/Images/Drinks/1.png",
        price: 99.99,
        category: FoodCategory.drinks,
        availableAddOns: [
          AddOn(name: 'Grilled Chicken', price: 60.99),
          AddOn(name: 'Anchovies', price: 99.99),
          AddOn(name: 'Extra Parmesan', price: 50.99),
        ]),
    Food(
        name: "Mojito Lemon ",
        description:
            "ADD DESCRIPTION ",
        imagePath: "assets/Images/Drinks/2.png",
        price: 99.99,
        category: FoodCategory.drinks,
        availableAddOns: [
          AddOn(name: 'Grilled Chicken', price: 60.99),
          AddOn(name: 'Anchovies', price: 99.99),
          AddOn(name: 'Extra Parmesan', price: 50.99),
        ]),

    Food(
        name: "Orenge Juice ",
        description:
            "ADD DESCRIPTION",
        imagePath: "assets/Images/Drinks/Orenge Juice.png",
        price: 99.99,
        category: FoodCategory.drinks,
        availableAddOns: [
          AddOn(name: 'Grilled Chicken', price: 60.99),
          AddOn(name: 'Anchovies', price: 99.99),
          AddOn(name: 'Extra Parmesan', price: 50.99),
        ]),

    Food(
        name: "Iced Coffee Cappuccino Cup ",
        description:
            "ADD DESCRIPTION",
        imagePath: "assets/Images/Drinks/iced-coffee-cappuccino-cup-.png",
        price: 99.99,
        category: FoodCategory.drinks,
        availableAddOns: [
          AddOn(name: 'Grilled Chicken', price: 60.99),
          AddOn(name: 'Anchovies', price: 99.99),
          AddOn(name: 'Extra Parmesan', price: 50.99),
        ]),
    Food(
        name: "Fruit And Vegetable Mixed Juice",
        description:
            "ADD DESCRIPTION",
        imagePath: "assets/Images/Drinks/fruit-and-vegetable-mixed-juice.png",
        price: 99.99,
        category: FoodCategory.drinks,
        availableAddOns: [
          AddOn(name: 'Grilled Chicken', price: 60.99),
          AddOn(name: 'Anchovies', price: 99.99),
          AddOn(name: 'Extra Parmesan', price: 50.99),
        ]),
  ];

  //  user  cart
  final List<CartItem> _cart = [];

  //  delivery address (user can change update)
  String _deleveryAddress = "Abc Street tirur";

  //  getters

  List<Food> get menu => _menu;
  List<CartItem> get cart => _cart;
  String get deleveryAddress => _deleveryAddress;

  // Operations ----------------

  //   add to the cart

  void addToCart(Food food, List<AddOn> selectedAddons) {
    // See if there is a cart item already with the same food and selected addons
    CartItem? cartItem = _cart.firstWhereOrNull((item) {
      // Check if the food items are the same
      bool isSameFood = item.food == food;

      // Check if the list of selected addons are the same
      bool isSameAddons =
          ListEquality().equals(item.selectedAddons, selectedAddons);

      return isSameFood && isSameAddons;
    });
    //if item already exists, increase it's quantity
    if (cartItem != null) {
      cartItem.quantity++;
    } else {
      // Item not in cart, add a new CartItem
      _cart.add(CartItem(food: food, selectedAddons: selectedAddons));
    }
    notifyListeners();
  }

  //   remove from the cart

  void removeFromCart(CartItem cartItem) {
    int cartIndex = _cart.indexOf(cartItem);

    if (cartIndex != -1) {
      if (_cart[cartIndex].quantity > 1) {
        _cart[cartIndex].quantity--;
      } else {
        _cart.removeAt(cartIndex);
      }
    }
    notifyListeners();
  }

  //   get the total price of the cart
  double getTotalPrice() {
    double total = 0.0;

    for (CartItem cartItem in _cart) {
      double itemTotal = cartItem.food.price;

      for (AddOn addOn in cartItem.selectedAddons) {
        itemTotal += addOn.price;
      }
      total += itemTotal * cartItem.quantity;
    }
    return total;
  }

  // get the total no of items in the cart

  int getTotalItemCount() {
    int totalItemCount = 0;
    for (CartItem cartItem in _cart) {
      totalItemCount = cartItem.quantity;
    }
    return totalItemCount;
  }

  //   clear the cart

  void clearcart() {
    _cart.clear();
    notifyListeners();
  }

  // Update deliveryAddress
  void updateDeleveryAddress(String newAddress) {
    _deleveryAddress = newAddress;
    notifyListeners();
  }

  //  helpers --------------

  // generate a receipt

  String displayCartReceipt() {
    final receipt = StringBuffer();
    receipt.write("Here is your receipt.");
    receipt.writeln();

    String formattedDate =
        DateFormat('yyyy-MM-dd HH:mm:ss').format(DateTime.now());

    receipt.writeln(formattedDate);
    receipt.writeln();
    receipt.writeln("---------------");

    for (final cartItem in _cart) {
      receipt.writeln(
          "Rs : ${cartItem.quantity} * ${cartItem.food.name} - ${_formatPrice(cartItem.food.price)})");
      if (cartItem.selectedAddons.isNotEmpty) {
        receipt
            .writeln("  Add-ons : ${_formatAddons(cartItem.selectedAddons)}");
      }
      receipt.writeln();
    }
    receipt.writeln("---------------");
    receipt.writeln();
    receipt.writeln("Tatal Items : ${getTotalItemCount()}");
    receipt.writeln("Tatal Price : ${_formatPrice(getTotalPrice())}");
    receipt.writeln();
    receipt.writeln();

    return "Delivering to: $deleveryAddress";
  }

  //  total double value into money
  String _formatPrice(double price) {
    return "Rs : ${price.toStringAsFixed(2)}";
  }

  //format list of addons into astrong summery
  String _formatAddons(List<AddOn> addons) {
    return addons
        .map((addon) => "${addon.name} (${_formatPrice(addon.price)})")
        .join(", ");
  }
}
