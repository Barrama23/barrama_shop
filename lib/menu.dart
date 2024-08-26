import 'package:flutter/material.dart';
import 'package:barrama_shop/login.dart';
import 'package:barrama_shop/log.dart';

class Menu extends StatefulWidget {
  static const routeName = '/menu';

  @override
  State<Menu> createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int pageCount = 0;

  final PageController _controller = PageController();

  void setPageCount(int aPageCount) {
    setState(() {
      pageCount = aPageCount;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          child: Column(
        children: [
          illustrationPageView(_controller, setPageCount),
          TextView(pageCount),
        ],
      )),
    );
  }
}

class TextView extends StatelessWidget {
  final int pageCount;

  const TextView(this.pageCount);
  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> data = [
      {
        'title': 'Compre tudo que desejar',
        'desc':
            'Seja bem-vindo ao nosso universo de possibilidades! Aqui, você pode explorar e adquirir tudo o que desejar'
      },
      {
        'title': 'Fácil de Pagar',
        'desc':
            'Facilitamos o seu pagamento! Oferecemos diversas opções seguras e convenientes para você finalizar suas compras com tranquilidade'
      },
      {
        'title': 'Entrega Rápida',
        'desc':
            'Receba suas compras com rapidez e eficiência! Nosso serviço de entregas rápidas garante que seus produtos cheguem diretamente na sua porta'
      },
    ];
    return Expanded(
      flex: 2,
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Spacer(),
            Text(
              data[pageCount]['title']!,
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall!
                  .copyWith(color: Colors.black),
            ),
            Spacer(),
            Text(
              data[pageCount]['desc']!,
              textAlign: TextAlign.center,
              style: TextStyle(color: Colors.black),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Pageindicator(pageCount, 0),
                SizedBox(
                  width: 16,
                ),
                SizedBox(
                  width: 16,
                ),
                Pageindicator(pageCount, 1),
                SizedBox(
                  width: 16,
                ),
                Pageindicator(pageCount, 2)
              ],
            ),
            Spacer(),
            ElevatedButton(
                onPressed: () {
                  Navigator.of(context).pushNamed(Log.routeName);
                },
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(
                      Colors.green), // Define a cor do botão
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
                  'Começar Agora',
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.bold),
                )),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

class Pageindicator extends StatelessWidget {
  const Pageindicator(this.pageCount, this.index);

  final int pageCount;
  final int index;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
        duration: Duration(milliseconds: 300),
        width: pageCount == index ? 32 : 8,
        height: 8,
        decoration: BoxDecoration(
            color: pageCount == index ? Colors.green : Colors.white,
            borderRadius: BorderRadius.circular(4)));
  }
}

class illustrationPageView extends StatelessWidget {
  final controller;
  final Function(int) callback;

  const illustrationPageView(this.controller, this.callback);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: Container(
          width: double.infinity,
          color: kDefaultIconLightColor,
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed(Log.routeName);
                    },
                    child: Text(
                      'Seguinte',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  )
                ],
              ),
              SizedBox(
                height: 40,
              ),
              Expanded(
                child: PageView(
                  controller: controller,
                  onPageChanged: (pageNum) {
                    callback(pageNum);
                  },
                  children: [
                    Image.asset('images/illu1.png'),
                    Image.asset('images/illu2.png'),
                    Image.asset('images/illu3.png'),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
