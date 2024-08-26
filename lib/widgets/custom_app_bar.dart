import 'package:barrama_shop/popular_product.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
final String title;
final List<Widget> actions;
const CustomAppBar(this.title, this.actions);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: BackButtonText()),
        Text(title,
          style: TextStyle(fontSize: 17, fontWeight: FontWeight.w600),
        ),
        Expanded(child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: actions,
        ))
      ],
    );
  }
}
