// Food items
class Food {
  final String name;
  final String description;
  final String imagePath;
  final double price;
  final FoodCategory category;
  final List<AddOn> availableAddOns;

  Food( {
    required this.name,
    required this.description,
    required this.imagePath,
    required this.price,
    required this.category, 
    required this.availableAddOns
  }) ;

}

// Food categories
enum FoodCategory {
  burgers,
  salads,
  sides,
  desserts,
  drinks,
}

class AddOn {
  final String name; 
  final double price; 

  AddOn({required this.name, required this.price});
}
