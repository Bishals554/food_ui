



class PopularFood{
  final String foodName;
  final String foodPrice;
  final String foodType;
  final String imageUrl;


  PopularFood({
    required this.foodName,
    required this.foodPrice,
    required this.foodType,
    required this.imageUrl
});

  factory PopularFood.fromJson(Map<String, dynamic>json){
    return PopularFood(
        foodName: json['foodName'],
        foodPrice: json['foodPrice'],
        foodType: json['foodType'],
        imageUrl: json['imageUrl']
    );
  }

}

final popularFoods = [
  PopularFood(
      foodName: 'Chipotle Cheesy Chicken',
      foodPrice: '100',
      foodType: 'Chicken Burger',
      imageUrl: 'assets/images/burger1.png'
  )
];