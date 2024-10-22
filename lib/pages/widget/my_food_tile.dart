import 'package:flutter/material.dart';
import 'package:food_delevery_app/models/food.dart';

class MyFoodTile extends StatelessWidget {
  final Food food;
  final Function()? ontTap;
  const MyFoodTile({super.key, required this.food, required this.ontTap});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: ontTap,
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Row(
              children: [
                //text food details
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(food.name),
                    Text(
                      'Rs :${food.price.toString()}',
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.primary),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Text(
                      food.description,
                      style: TextStyle(
                          color: Theme.of(context).colorScheme.inversePrimary),
                    ),
                  ],
                )),
                const SizedBox(width: 15,),
                //food image
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    food.imagePath,
                    height: 120,
                  ),
                ),
              ],
            ),
          ),
        ),
        Divider(
            endIndent: 25,
            indent: 25,
            color: Theme.of(context).colorScheme.tertiary),
      ],
    );
  }
}
