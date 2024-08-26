import 'package:barrama_shop/category_screen.dart';
import 'package:barrama_shop/models/category.dart';
import 'package:barrama_shop/search_screen.dart';
import 'package:barrama_shop/widgets/category_card.dart';
import 'package:barrama_shop/widgets/custom_nav_bar.dart';
import 'package:barrama_shop/widgets/deal.dart';
import 'package:barrama_shop/widgets/deal_card.dart';
import 'package:barrama_shop/widgets/indi_deal_card.dart';
import 'package:flutter/material.dart';


class HomeScreen extends StatelessWidget {
  static const routeName = '/home_screen';

  @override
  Widget build(BuildContext context) {
    final List<Category> categorias =[
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
      body: SafeArea(

        child: Column(
          children: [
            Spacer(),
            HomeAppBar(),
            Spacer(),
            CategoryTab(categorias: categorias),
            Spacer(),
             DealsTab(),
            Spacer(),
            PopularDealsTab()

            ])
      ),
      bottomNavigationBar: CustomNavBar()

    );

  }
}

class PopularDealsTab extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 11,
      child: Column(children: [
        Padding(padding: EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          children: [
            Expanded(
              child: Text('Produtos', style:
              Theme.of(context).textTheme.headlineSmall,),
            ),
            TextButton(onPressed: (){

            },
                child: Text('Ver todas', style:
                TextStyle(color: Colors.green.shade200)))
          ],
        ),),
        Expanded(
          child: GridView(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount
            (crossAxisCount:2,
              childAspectRatio: 0.8,
          crossAxisSpacing: 8),

            children: [

              IndiDealCard(isLeft: true,
                  isSelected: true,
                imagePath: 'images/nido.png', title: 'Leite Nido', weight: '400g', price: '\MZN800',),

              IndiDealCard(isLeft: false,
                  isSelected: false,
                imagePath: 'images/juice.png', title: 'Sumo Top',
                weight: '5L', price: '\MZN350',)
              ],
          ),
        )

      ],),
    );
  }
}



class DealsTab extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
       mainAxisAlignment: MainAxisAlignment.start,
       children: [
         TabTitle('Ofertas Especiais', (){}),
             SizedBox(height: 10,),
             SingleChildScrollView(
               scrollDirection: Axis.horizontal,
               child: Row(
                 children: [
                   DealCard(), Deal(),
                 ],
               ),
             )]);
  }
}

class TabTitle extends StatelessWidget {
  final String title;
  final Function seeAll;

  const TabTitle(this.title, this.seeAll);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: 16,
      ),
    child:
    Row(
      children: [
        Expanded(child:
        Text( title, style:
        Theme.of(context).textTheme.headlineSmall?.copyWith(
          fontWeight: FontWeight.w700,)
        )),
        TextButton(onPressed: (){seeAll();},
            child: Text('Ver todas', style:
            TextStyle(color: Colors.green.shade200)) ,)
      ],
    ),);
  }
}



class CategoryTab extends StatelessWidget {
  const CategoryTab({
    super.key,
    required this.categorias,
  });

  final List<Category> categorias;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          Row(children: [
            Expanded(child: Text('Categorias', style:
            Theme.of(context).textTheme.headlineSmall,)),
            TextButton(
                onPressed: (){
                  Navigator.of(context).pushNamed(CategoryScreen.routeName);
                },
                child: Text ('Ver Todas', style:
                TextStyle(color: Colors.green.shade200),))
          ],),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children:
            List.generate(categorias.length, (index)=> CategoryCard(categorias[index]),

      ),
    )
              ],
            ),
          );
  }
}


class HomeAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Image.asset('images/web.png', width: 200, fit: BoxFit.cover),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(SearchScreen.routeName);
            },
            child: Icon(
              Icons.search,
              color: Colors.green.shade100,
            ),
          ),
        ],
      ),
    );
  }
}
