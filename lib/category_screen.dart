import 'package:barrama_shop/models/category.dart';
import 'package:barrama_shop/search_screen.dart';
import 'package:barrama_shop/widgets/category_card.dart';
import 'package:barrama_shop/widgets/custom_app_bar.dart';
import 'package:flutter/material.dart';

class CategoryScreen extends StatelessWidget {
  static const routeName = '/category_screen';

  @override
  Widget build(BuildContext context) {
    final List<Category> categorias = [
      Category('Cereais', 'images/cereal.png',
          Colors.green.shade100),
      Category('Bebidas', 'images/drinks.png',
          Colors.green.shade100),
      Category('Cozinha', 'images/cook.png',
          Colors.green.shade100),
      Category('Laticinios', 'images/dairy.png',
          Colors.green.shade100),
      Category('Carnes', 'images/meat.png',
          Colors.green.shade100),

    ];
    return Scaffold(
      body: SafeArea(child:
      Column(
        children: [
          CustomAppBar('Categorias', [

            GestureDetector(
              onTap: (){
                Navigator.of(context).pushNamed(SearchScreen.routeName);
              },
              child: Icon(Icons.search,
                color: Colors.green,),
            ),
            SizedBox(width: 16,)
          ]),
          Expanded(child: GridView(gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
            children: List.generate(categorias.length, (index) => CategoryCard(categorias[index])),))
        ],
      ))
    );
  }
}
