import 'package:food_delevery_app/models/food.dart';

class CartItem {
  Food food;
  List<AddOn> selectedAddons;
  int quantity;

  CartItem({
    required this.food,
    required this.selectedAddons,
   this.quantity =1,
  });

  double get totalPrice {
    double addonsPrice = selectedAddons.fold(0, (sum, addon)=>sum +addon.price);
    return (food.price + addonsPrice)*quantity;
  }

}