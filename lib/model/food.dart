


class Food {
  final String imageUrl;
  final String foodName;
  final String price;



  Food({
    required this.imageUrl,
    required this.foodName,
    required this.price,

});

  factory Food.fromJson(Map<String, dynamic>json){
    return Food(
    imageUrl: json['imageUrl'],
    foodName: json['foodName'],
    price: json['price']
  );
  }


}

final foods = [
  Food(
      imageUrl: 'assets/images/burger.png',
      foodName: 'Burger',
      price: ''
  ),
  Food(
      imageUrl: 'assets/images/pizza.png',
      foodName: 'Pizza',
      price: ''
  ),
  Food(
      imageUrl: 'assets/images/cake.png',
      foodName: 'Cake',
      price: ''
  )

];