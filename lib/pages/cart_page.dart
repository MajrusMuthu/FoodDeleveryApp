import 'package:flutter/material.dart';
import 'package:food_delevery_app/models/restaurant.dart';
import 'package:food_delevery_app/pages/payment_page.dart';
import 'package:food_delevery_app/pages/widget/my_button.dart';
import 'package:food_delevery_app/pages/widget/my_cart_tile.dart';
import 'package:provider/provider.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Restaurant>(
      builder: (context, restaurant, child) {
        //cart
        final userCart = restaurant.cart;

        // scaffold ui
        return Scaffold(
          appBar: AppBar(
            title: Text('Cart'),
            backgroundColor: Colors.transparent,
            foregroundColor: Theme.of(context).colorScheme.inversePrimary,
            actions: [
              IconButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) => AlertDialog(
                              title: Text(
                                  'Are you sure! you want to clear the cart ?'),
                              actions: [
                                TextButton(
                                    onPressed: () => Navigator.pop(context),
                                    child: Text('Cancel')),
                                TextButton(
                                    onPressed: () {
                                      Navigator.pop(context);
                                      restaurant.clearcart();
                                    },
                                    child: Text('Yes'))
                              ],
                            ));
                  },
                  icon: Icon(
                    Icons.delete,
                  ))
            ],
          ),
          body: Column(
            children: [
              // list of cart
              Expanded(
                child: Column(
                  children: [
                    userCart.isEmpty
                        ? Expanded(child: Center(child: Text('Cart is empty')))
                        : Expanded(
                            child: ListView.builder(
                                itemCount: userCart.length,
                                itemBuilder: (context, index) {
                                  final cartItem = userCart[index];

                                  // get individual cart item
                                  return MyCartTile(cartItem: cartItem);
                                }))
                  ],
                ),
              ),
              MyButton(
                  onTap: () => Navigator.push(context,
                      MaterialPageRoute(builder: (context) => PaymentPage())),
                  text: "Go to checkout"),
              SizedBox(
                height: 25,
              ),
            ],
          ),
        );
      },
    );
  }
}
