import 'package:flutter/material.dart';

class Deal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomLeft,
      width: 280,
      height: 170,
      margin: EdgeInsets.only(left: 16),
      decoration: ShapeDecoration(shape:
      RoundedRectangleBorder( borderRadius:
      BorderRadius.circular(8), ),
          gradient: LinearGradient(begin: Alignment.bottomCenter,
              end: Alignment.topCenter, colors: [Colors.blueGrey,
                Colors.blueGrey.withOpacity(0)])
      ),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              'images/nido.png',
              width: 280,
              height: 170,
              fit: BoxFit.cover,
            ),
          ),Container(
            alignment: Alignment.bottomLeft,
            width: 280,
            height: 170,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
                colors: [
                  Colors.blueGrey.withOpacity(0.7),
                  Colors.blueGrey.withOpacity(0.3),
                ],
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Promoção de Leite', style:
                TextStyle( color: Colors.white,
                    fontSize: 20, fontWeight: FontWeight.w700)),
                Text('O melhor leite para o seu bebe', style:
                TextStyle( color: Colors.white),)
              ],),

          ),
        ],
      ),

    );
  }
}