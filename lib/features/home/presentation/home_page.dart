

import 'package:flutter/material.dart';
import 'package:magh/features/products/presentation/product_lists.dart';
import 'package:magh/features/products/presentation/product_screen.dart';
import 'package:magh/features/recipes/presentation/recipes.dart';


List<Widget> _widgets = [
  ProductLists(),
  Recipes(),
  ProductScreen(),
];


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),

      body: _widgets[_index],
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.red,
        unselectedItemColor: Colors.grey,
        currentIndex: _index, // also pass the current Index to select the color of particular selected index
        onTap: (int index){
          setState(() {
            _index = index; // update the index number when one item of not
          });
        },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home,),
              label: 'Products'
            ),


            BottomNavigationBarItem(
                icon: Icon(Icons.browse_gallery),
              label: 'Recipe'
            ),

            BottomNavigationBarItem(
                icon: Icon(Icons.details_rounded),
                label: 'Product Details'
            ),
          ],
      ),

    );
  }
}
