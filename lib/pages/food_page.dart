import 'package:flutter/material.dart';
import 'package:food_delevery_app/models/food.dart';
import 'package:food_delevery_app/models/restaurant.dart';
import 'package:food_delevery_app/pages/widget/my_button.dart';
import 'package:provider/provider.dart';

class FoodPage extends StatefulWidget {
  final Food food;
  final Map<AddOn, bool> selectedAddons = {};
  FoodPage({super.key, required this.food}) {
    //  initialize selected addons to be false

    for (AddOn addOn in food.availableAddOns) {
      selectedAddons[addOn] = false;
    }
  }

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {

  // add to the cart

  void addToCart(Food food, Map<AddOn, bool>selectedAddons){

    // close the current food page to go back to menu
    Navigator.pop(context);
    List<AddOn> currentlySelectedAddons =[];
    for (AddOn addOn in widget.food.availableAddOns) {
      if(widget.selectedAddons[addOn] ==true) {
        currentlySelectedAddons.add(addOn);
      }
    }
    // add to cart
    context.read<Restaurant>().addToCart(food, currentlySelectedAddons);
  }
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
//  scaffod ui
        Scaffold(
          body: SingleChildScrollView(
            child: Column(
              children: [
                //  food Image
                Image.asset(widget.food.imagePath),

                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // food name
                      Text(
                        widget.food.name,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      // food price
                      Text(
                        'Rs : ${widget.food.price.toString()}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Theme.of(context).colorScheme.primary,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      //  food description
                      Text(
                        widget.food.description,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Divider(
                        color: Theme.of(context).colorScheme.secondary,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Add-ons',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: Theme.of(context).colorScheme.inversePrimary,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      //addons
                      Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                            borderRadius: BorderRadius.circular(8)),
                        padding: EdgeInsets.zero,
                        child: ListView.builder(
                            shrinkWrap: true,
                            physics: const NeverScrollableScrollPhysics(),
                            itemCount: widget.food.availableAddOns.length,
                            itemBuilder: (context, index) {
                              //  get individual addon
                              AddOn addon = widget.food.availableAddOns[index];
                              return CheckboxListTile(
                                  title: Text(addon.name),
                                  subtitle: Text(
                                    'Rs : ${addon.price.toString()}',
                                    style: TextStyle(
                                      color:
                                          Theme.of(context).colorScheme.primary,
                                    ),
                                  ),
                                  value: widget.selectedAddons[addon],
                                  onChanged: (bool? value) {
                                    setState(() {
                                      widget.selectedAddons[addon] = value!;
                                    });
                                  });
                            }),
                      ),
                    ],
                  ),
                ),

                //button ->add to cart

                MyButton(
                  text: "Add to cart",
                  onTap: () =>addToCart(widget.food, widget.selectedAddons),
                ),
                const SizedBox(
                  height: 25,
                ),
              ],
            ),
          ),
        ),
        SafeArea(
          child: Opacity(
            opacity: 0.6,
            child: Container(
              margin: const EdgeInsets.only(left: 25),
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.secondary,
                shape: BoxShape.circle,
              ),
              child: IconButton(
                icon: Icon(Icons.arrow_back_rounded),
                onPressed: () => Navigator.pop(context),
              ),
            ),
          ),
        )
//   back button
      ],
    );
  }
}
