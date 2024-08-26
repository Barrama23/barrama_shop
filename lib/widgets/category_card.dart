import 'package:barrama_shop/models/category.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final Category category;
  const CategoryCard(this.category);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 24,
          backgroundColor: category.color,
          child: SizedBox(
              width: 28,
              child: Image.asset(category.catIcon)),
        ),
        Text(category.catName)
      ],
    );
  }
}