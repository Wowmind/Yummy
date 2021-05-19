import 'package:flutter/material.dart';
import 'package:yummy/product.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Yummy(),
  ));
}
class Yummy extends StatefulWidget {
  const Yummy({Key key}) : super(key: key);

  @override
  _YummyState createState() => _YummyState();
}

class _YummyState extends State<Yummy> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(
          onPressed: () {},
          icon: Icon(
            Icons.menu,
            color: Colors.black,
          ),
        ),
        actions: [
          IconButton(
              icon: Icon(
                  Icons.search,
                color: Colors.black,
              ),
              onPressed: () {}
              ),
        ],
        title: Container(
          padding: EdgeInsets.only(top: 13),
          child: Text(
            'Explore',
            style: TextStyle(
              fontSize: 24,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        centerTitle: true,
        elevation: 0,

      ),
      body: ListView(
        children: [
          SizedBox(height: 5,),
          Container(
            height: 125,
              width: double.infinity,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  MyItems('assets/plate.jpg', 'Dish', 0xFFC8E6C9),
                  MyItems('assets/food.jpg', 'Food', 0xFFC8E6C9),
                  MyItems('assets/fork.png', 'Fork', 0xFFC8E6C9),
                  MyItems('assets/spoon.jpg', 'Spoon', 0xFFC8E6C9),
                  MyItems('assets/cup.jpg', 'Cup', 0xFFC8E6C9),
                ],
              ),

          ),
          Product(),
        ],
      ),

    );
  }

  Widget MyItems(String img, String name, int color){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: Column(
        children: [
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(
              color: Color(color),
              borderRadius: BorderRadius.circular(35),
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(img),
              ),
            ),
          ),
          SizedBox(height: 5,),

          Text(name,
          style: TextStyle(
            fontSize: 14,
            color: Colors.black,
          ),),
        ],
      ),
    );
  }
}

