import 'package:flutter/material.dart';

class IndiDealCard extends StatelessWidget {
  final bool isLeft;
  final bool isSelected;
  final String imagePath;
  final String title;
  final String weight;
  final String price;
  
  const IndiDealCard ({required this.isLeft, required this.isSelected,
    required this.imagePath,
  required this.title,
  required this.weight,
  required this.price});

  @override
  Widget build(BuildContext context) {
    return Padding(padding: 
        EdgeInsets.only(
          left: isLeft ? 16: 0,
          right: isLeft ? 0 :16
        ),
      child: Container(
        padding: EdgeInsets.all(
          8
        ),
        decoration: BoxDecoration(
           color: isSelected ? Colors.white : Colors.white.withOpacity(0.2),
          borderRadius: BorderRadius.circular(8),
          boxShadow:[ isSelected ? BoxShadow(
            color: Colors.grey.shade400,
            offset: Offset(
              24,40
            ),
    blurRadius: 88,
        )
            : BoxShadow( color: Colors.transparent)
        ]
      ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title, style: Theme.of(context).textTheme.headlineSmall?.copyWith(
              fontWeight: FontWeight.w700
            ),),
            SizedBox(height: 7),
            Image.asset(
              imagePath, // Caminho para a sua imagem
              height: 100, // Defina a altura da imagem
              width: 100, // Defina a largura da imagem
              fit: BoxFit.cover, // Ajusta a imagem para cobrir a área
            ),
            Spacer(),

                Text(weight, style: TextStyle(fontSize: 20, color: Colors.grey),
            ),
            Spacer(),
            Row(
              children: [
                Expanded(child: Text(price, style: Theme.of(context).textTheme.headlineSmall,)
                ),
                RawMaterialButton(onPressed: (){},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(8),
                ),
                  fillColor: Colors.green,
                  constraints: BoxConstraints.tightFor(
                    width: 40,
                    height: 40
                  ),
                  elevation: 0,
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),

                )
              ],
            )
          ],
        ),
    ));
  }
}
