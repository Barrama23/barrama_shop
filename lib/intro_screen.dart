import 'package:flutter/material.dart';
import 'package:barrama_shop/menu.dart';

class IntroScreen extends StatefulWidget {
  const IntroScreen({super.key});

  @override
  State<IntroScreen> createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Image.asset('images/bg.jpg', width:
          media.width, height: media.height, fit: BoxFit.cover,),
          SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: [
                   const Text('Seja Bem Vindo!', style: TextStyle(color:  Colors.white, fontSize: 40,
                        fontWeight: FontWeight.w600
                    ),),
                 ],
               ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                     Text('Receba as suas compras em casa', style: TextStyle(color:
                    const Color(0xffFCFCFC).withOpacity(0.9), fontSize: 16,
                        fontWeight: FontWeight.w600
                    ),),
                  ],
                ),
                const SizedBox(height: 20,),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/menu');
                  },
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all<Color>(
                        Colors.green.shade400), // Define a cor do botão
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                        borderRadius:
                        BorderRadius.circular(10), // Faz o botão ser quadrado
                      ),
                    ),
                    padding: MaterialStateProperty.all<EdgeInsets>(
                      EdgeInsets.symmetric(
                          horizontal: 100,
                          vertical: 20), // Ajusta o tamanho do botão
                    ),
                  ),
                  child: Text(
                    'Comece Agora',
                    style: TextStyle(
                      color: Colors.white, // Define a cor do texto como branca
                      fontWeight: FontWeight.bold, // Define o texto como negrito
                    ),
                  ),
                ),
                const SizedBox(height: 20,),
              ],
            ),
          )
        ],
      ),
    );
  }
}
