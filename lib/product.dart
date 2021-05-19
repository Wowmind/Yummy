import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Product extends StatefulWidget {
  const Product({Key key}) : super(key: key);

  @override
  _ProductState createState() => _ProductState();
}

class _ProductState extends State<Product> {
  Widget Items(String img){
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(img)
        ),
      ),

    );

  }
  @override
  Widget build(BuildContext context) {
    return StaggeredGridView.count(
      shrinkWrap: true,
      primary: false,
      crossAxisCount: 4,
      crossAxisSpacing: 4,
      mainAxisSpacing: 4,
      padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      children: [
        Items('assets/food5.jpg'),
        Items('assets/food.jpg'),
        Items('assets/food4.jpg'),
        Items('assets/foody.jpg'),
        Items('assets/food3.jpg'),
        Items('assets/food7.jpg'),
        Items('assets/food6.jpg'),
        Items('assets/food2.jpeg'),
      ],
      staggeredTiles: [
        StaggeredTile.count(2, 2),
        StaggeredTile.count(2, 4),
        StaggeredTile.count(2, 4),
        StaggeredTile.count(2, 2),
        StaggeredTile.count(2, 3),
        StaggeredTile.count(2, 2),
        StaggeredTile.count(2, 3),
        StaggeredTile.count(2, 2),

      ],
    );
  }
}
