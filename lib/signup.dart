import 'package:flutter/material.dart';
import 'package:barrama_shop/login.dart';

class Signup extends StatelessWidget {
  static const routeName ='/signup';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
        RawMaterialButton(
        child: Icon(Icons.arrow_back_ios),
    onPressed: () {
    Navigator.of(context).pop();
    },
    constraints: const BoxConstraints.tightFor(
    width: 32,
    height: 40,
    ),
    ),
    Expanded(

    child: Padding(
    padding: EdgeInsets.symmetric(horizontal: 20),
    child: Column(
    children: [
    Spacer(),
    Row(
    children: [
    Text(
    'Crie conta para Continuar!',
    style: Theme.of(context).textTheme.headlineSmall,
    ),
    ],
    ),
    Spacer(),
    Row(
    children: [
    Expanded(
    child: Column(
    children: [
    SizedBox(
    height: 8,
    ),
    Divider(),
    SizedBox(
    height: 8,
    )
    ],
    ),
    ),
    Padding(
    padding: EdgeInsets.symmetric(horizontal: 16),
    child: Text(
    'Ou',
    style: Theme.of(context).textTheme.headlineSmall,
    ),
    ),
    Expanded(
    child: Column(
    children: [
    SizedBox(
    height: 8,
    ),
    Divider(),
    SizedBox(
    height: 8,
    )
    ],
    ),
    ),
    ],
    ),
    Spacer(),
    TextFormField(
    decoration: InputDecoration(
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(5),
    borderSide:
    BorderSide(color: Colors.grey.shade300)),
    enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(5),
    borderSide:
    BorderSide(color: Colors.grey.shade300)),
    hintText: 'Digite seu nome',
    hintStyle: TextStyle(color: Colors.grey.shade300)),
    ),
    Spacer(),
    TextFormField(
    decoration: InputDecoration(
    border: OutlineInputBorder(
    borderRadius: BorderRadius.circular(5),
    borderSide: BorderSide(color: Colors.grey.shade300)),
    enabledBorder: OutlineInputBorder(
    borderRadius: BorderRadius.circular(5),
    borderSide: BorderSide(color: Colors.grey.shade300)),
    hintText: 'Digite seu numero de celular',
    hintStyle: TextStyle(
    color: Colors.grey.shade300,
    ),
    ),
    ),
      Spacer(),
      TextFormField(
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(color: Colors.grey.shade300)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(color: Colors.grey.shade300)),
          hintText: 'Digite seu email',
          hintStyle: TextStyle(
            color: Colors.grey.shade300,
          ),
        ),
      ),
      Spacer(),
      TextFormField(
          obscureText: true,
        decoration: InputDecoration(
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(color: Colors.grey.shade300)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: BorderSide(color: Colors.grey.shade300)),
          hintText: 'Digite uma senha',
          suffixIcon: Image.asset('images/hide_icon.png'),
          hintStyle: TextStyle(
            color: Colors.grey.shade300,
          ),
        ),
      ),
      Spacer(),
    ElevatedButton(
    onPressed: () {},
    style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all<Color>(
    Colors.green), // Define a cor do botão
    shape:
    MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(
    10), // Faz o botão ser quadrado
    ),
    ),
    padding: MaterialStateProperty.all<EdgeInsets>(
    EdgeInsets.symmetric(
    horizontal: 130,
    vertical: 20), // Ajusta o tamanho do botão
    ),
    ),
    child: Text(
    'Criar Conta',
    style: TextStyle(
    color: Colors.white, fontWeight: FontWeight.bold),
    )),
    Spacer(),

    ],
    ),
    ),
    )
    ],
    )),
    );
  }
}

