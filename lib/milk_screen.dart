import 'package:barrama_shop/widgets/custom_app_bar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MilkScreen extends StatelessWidget {
  static const routeName = '/milk_screen';

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController(text: '1');
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            CustomAppBar('Leite', [
              SizedBox(
                width: 24,
                child: Image.asset('images/cart_nav_fill.png', fit: BoxFit.cover,),
              ),
              SizedBox(width: 16,),
              Icon(Icons.share, color: Colors.green,),
              SizedBox(width: 16,),
            ]),
            SizedBox(height: 16,),
            ImagePlaceholder(),

            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Tittle(),
                      Text('Total de 25 Unidades', style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color: Colors.grey.shade400),),
                      SizedBox(height: 8,),
                      Row(children: [
                        PriceTab(),
                        Spacer(),
                        CustomIconButton(Icons.remove),
                        SizedBox(width: 4,),
                        QuantityInput(textController: textController),
                        SizedBox(width: 4,),
                        CustomIconButton(Icons.add)
                        ],),
                      SizedBox(height: 8,),
                      Row(
                        children: [
                          Text('Detalhes', style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                              fontWeight: FontWeight.w700),)
                        ],
                      ),
                      Text('O melhor leite para o seu bebe ', style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                          color: Colors.grey.shade400)),
                      Text('Adequado para lanches em sua casa')
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 60, // Altura igual para ambos os botões
                      child: OutlinedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10), // Borda arredondada
                            ),
                          ),
                          side: MaterialStateProperty.all<BorderSide>(
                            BorderSide(color: Colors.green, width: 2), // Cor e espessura da borda
                          ),
                          padding: MaterialStateProperty.all<EdgeInsets>(
                            EdgeInsets.symmetric(horizontal: 32), // Ajusta o preenchimento horizontal
                          ),
                        ),
                        child: SizedBox(
                          width: 32,
                          child: Image.asset('images/cart_nav_fill.png', fit: BoxFit.cover,),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(width: 16,),
                  Expanded(
                    flex: 3,
                    child: SizedBox(
                      height: 56, // Altura igual para ambos os botões
                      child: ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.green), // Define a cor do botão
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10), // Borda arredondada
                            ),
                          ),
                          padding: MaterialStateProperty.all<EdgeInsets>(
                            EdgeInsets.symmetric(horizontal: 32), // Ajusta o preenchimento horizontal
                          ),
                        ),
                        child: Text(
                          'Comprar Agora',
                          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class QuantityInput extends StatelessWidget {
  const QuantityInput({
    super.key,
    required this.textController,
  });

  final TextEditingController textController;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40,
        child: TextField(
          controller: textController,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.grey.shade300)
              ),
              enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide(color: Colors.grey.shade300)
              ),
              contentPadding: EdgeInsets.symmetric(vertical: 6, horizontal: 4)

        ),
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
          textAlign: TextAlign.center,
        ),);
  }
}

class PriceTab extends StatelessWidget {
  const PriceTab({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      decoration: ShapeDecoration(
          color: Colors.green.shade50,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))
      ),
      child: Text('\MZN 650', style: Theme.of(context).textTheme.headlineSmall?.copyWith
        (color: Colors.green),),
    );
  }
}

class CustomIconButton extends StatelessWidget {
 final IconData icon;

 const CustomIconButton(this.icon);

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      fillColor: Colors.grey.shade300,
      elevation: 0,
      constraints: BoxConstraints.tightFor(
        width: 40, height: 40
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),

      onPressed: () {},
      child: Icon(icon,
        color: Colors.grey.shade500,
      ),
    );
  }
}

class Tittle extends StatelessWidget {
  const Tittle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      Expanded(
        child: Text('Leite Nido', style: Theme.of(context).textTheme.headlineSmall?.copyWith
        (fontWeight: FontWeight.w700),),
      ),
      Icon(Icons.favorite_border_outlined, color: Colors.green, size: 32,)
    ],);
  }
}

class ImagePlaceholder extends StatelessWidget {
  const ImagePlaceholder({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Stack(
            children: [
              Container(
                child: Image.asset('images/nido.png'),
              ),
              Positioned(
                bottom: 16, // Ajuste a posição vertical conforme necessário
                left: 20,
                right: 0,
                child: Align(
                  alignment: Alignment.center,
                  child: CircleAvatar(
                    backgroundColor: Colors.grey.shade100
                    ,
                    radius: 8, // Ajuste o tamanho conforme necessário
                  ),

                ),
              ),
              Positioned(
                bottom: 16, // Ajuste a posição vertical conforme necessário
                left: 0,
                right: 20,
                child: Align(
                  alignment: Alignment.center,
                  child: CircleAvatar(
                    backgroundColor: Colors.grey,
                    radius: 8, // Ajuste o tamanho conforme necessário
                  ),

                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
