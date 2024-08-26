import 'package:flutter/material.dart';

class  PopularProduct extends StatelessWidget {
static const routeName = '/popular_product';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(children: [
        CustomAppBarPro(),
        Expanded(child: ListView(
          padding: EdgeInsets.symmetric(horizontal: 16),
          children: [
          Listcard(isSelected: true, isDiscount: true, title: 'Fraldas', imagePath: 'images/pamper.jpg',
            price: '\MZN520', weight: '10', disc: '\MZN650',),
            Listcard(isSelected: false, isDiscount: true,
                title: 'Leite',
                imagePath: 'images/nido.png',
                price: '\MZN680', weight: '400g', disc: '\MZN850'),
        ],))

      ],),),

    );
  }
}

class Listcard extends StatelessWidget {
  final bool isSelected;
  final bool isDiscount;
  final String imagePath;
  final String title;
  final String weight;
  final String disc;
  final String price;

  const Listcard({required this.isSelected,required
  this.isDiscount,
  required this.title, required this.imagePath, required this.price, required this.weight,
  required this.disc
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100,
      padding: EdgeInsets.all(8),
      decoration: ShapeDecoration(shape:
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)
      ),
        color: isSelected? Colors.white: Colors.transparent,
        shadows: [
          isSelected ? BoxShadow(
            color: Colors.grey.shade400,
            offset: Offset(
                24,40
            ),
            blurRadius: 88,
          ):BoxShadow(color: Colors.transparent)
        ]
      ),

        child: Row(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade500,
                  borderRadius: BorderRadius.circular(8)
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    imagePath, // Caminho para a imagem passado como parâmetro
                    fit: BoxFit.cover, // Ajusta a imagem para cobrir a área
                  ),
                ),

              ),
            ),
            SizedBox(width: 10,),
            Expanded(
              flex: 2,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if(isDiscount)Container(

                  padding:EdgeInsets.symmetric(horizontal: 4),
                  decoration: ShapeDecoration(shape: StadiumBorder(),
                  color: Colors.red.shade600),
                  child: Text('Disc de 20%', style: TextStyle(color: Colors.white,
                      ),),

                ),
                if (isDiscount)Spacer(),
                Text(title, style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight:
                FontWeight.w700),),
                Spacer(),
                Text(weight, style: TextStyle(fontSize: 12, color: Colors.grey.shade400),
                ),

                if(!isDiscount)Spacer(),

              ],
            )),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [

                if(isDiscount)Text(disc, style: TextStyle(color: Colors.grey.shade400,
                    decoration:TextDecoration.lineThrough ),),
                Text(price, style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),)
              ],
            )
          ],
        ),

    );
  }
}

class CustomAppBarPro extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(child:
      BackButtonText()),
      Image.asset('images/web.png', width: 200, fit: BoxFit.cover,),

      Expanded(child:
      Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          Icon(Icons.search, color: Colors.green,),
          SizedBox(width: 16,)
        ],
      )),

    ],);
  }
}

class BackButtonText extends StatelessWidget {
  const BackButtonText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){Navigator.of(context).pop();},
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
        Icon(
            Icons.arrow_back, size: 30, color: Colors.green,),
        Text('Voltar', style: TextStyle(color: Colors.green.shade400),)
      ],),
    );
  }
}
