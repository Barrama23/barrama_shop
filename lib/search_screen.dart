import 'package:barrama_shop/home_screen.dart';
import 'package:barrama_shop/popular_product.dart';
import 'package:barrama_shop/widgets/custom_nav_bar.dart';
import 'package:barrama_shop/widgets/deal.dart';
import 'package:barrama_shop/widgets/deal_card.dart';
import 'package:barrama_shop/widgets/indi_deal_card.dart';
import 'package:flutter/material.dart';

import 'milk_screen.dart';

class SearchScreen extends StatelessWidget {
  static const routeName = '/searchscreen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SearchTab(),
              SizedBox(
                height: 32,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    DealCard(),
                    Deal(),
                  ],
                ),
              ),
              SizedBox(height: 16),
              TabTitle('Produtos Populares', () {
                Navigator.of(context).pushNamed(PopularProduct.routeName);
              }),
              Container(
                height: 240,
                child: Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context).pushNamed(MilkScreen.routeName);
                        },
                        child: IndiDealCard(
                          isLeft: true,
                          isSelected: true,
                          imagePath: 'images/nido.png',
                          title: 'Leite Nido',
                          weight: '400g',
                          price: 'MZN 800',
                        ),
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: IndiDealCard(
                        isLeft: false,
                        isSelected: false,
                        imagePath: 'images/juice.png',
                        title: 'Sumo Top',
                        weight: '5L',
                        price: 'MZN 350',
                      ),
                    ),
                  ],
                ),
              ),
              TabTitle('Mais Comprados', () {}),
              Container(
                height: 240,
                child: Row(
                  children: [
                    Expanded(
                      child: IndiDealCard(
                        isLeft: true,
                        isSelected: true,
                        imagePath: 'images/massa.png',
                        title: 'Massa',
                        weight: '100g',
                        price: 'MZN 45',
                      ),
                    ),
                    SizedBox(width: 8),
                    Expanded(
                      child: IndiDealCard(
                        isLeft: false,
                        isSelected: false,
                        imagePath: 'images/cocacola.png',
                        title: 'Refrigerante',
                        weight: '350ML',
                        price: 'MZN 50',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomNavBar(),
    );
  }
}

class SearchTab extends StatelessWidget {
  const SearchTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Expanded(
            child: CustomSearchBar(
              hintText: 'Pesquisar',
            ),
          ),
          SizedBox(width: 10),
          Image.asset('images/bell.png'),
        ],
      ),
    );
  }
}

class CustomSearchBar extends StatelessWidget {
  final String hintText;

  const CustomSearchBar({
    Key? key,
    required this.hintText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            offset: Offset(0, 2),
            blurRadius: 8,
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(Icons.search, color: Colors.grey.shade600),
          SizedBox(width: 8),
          Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: hintText,
                border: InputBorder.none,
                hintStyle: TextStyle(color: Colors.grey.shade500),
              ),
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
