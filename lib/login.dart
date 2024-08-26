import 'package:barrama_shop/home_screen.dart';
import 'package:barrama_shop/signup.dart';
import 'package:flutter/material.dart';



import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  static const routeName = '/login';
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
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
                            'Faça Login para Continuar!',
                            style: Theme.of(context).textTheme.headlineSmall,
                          ),
                        ],
                      ),
                      Spacer(),
                      ElevatedButton(
                          onPressed: () {},
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Colors.grey.shade200), // Define a cor do botão
                            shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(
                                    5), // Faz o botão ser quadrado
                              ),
                            ),
                            padding: MaterialStateProperty.all<EdgeInsets>(
                              EdgeInsets.symmetric(
                                  horizontal: 100,
                                  vertical: 20), // Ajusta o tamanho do botão
                            ),
                          ),
                          child: Text(
                            'Continuar facebook',
                            style: TextStyle(
                              color: Colors.green.shade200,
                              fontWeight: FontWeight.bold,
                            ),
                          )),
                      Spacer(),
                      ElevatedButton(
                        onPressed: () {},
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(
                              Colors.grey.shade200),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                          padding: MaterialStateProperty.all<EdgeInsets>(
                            EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                          ),
                        ),
                        child: Text(
                          'Continuar google     ',
                          style: TextStyle(
                              color: Colors.green.shade200,
                              fontWeight: FontWeight.bold),
                        ),
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
                                style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: Colors.grey.shade200)
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
                        controller: _emailController,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide:
                                BorderSide(color: Colors.grey.shade300)),
                            enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(5),
                                borderSide:
                                BorderSide(color: Colors.grey.shade300)),
                            hintText: 'Email',
                            hintStyle: TextStyle(color: Colors.grey.shade300)),
                      ),
                      Spacer(),
                      TextFormField(
                        controller: _passwordController,
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(color: Colors.grey.shade300)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(5),
                              borderSide: BorderSide(color: Colors.grey.shade300)),
                          hintText: 'Senha',
                          suffixIcon: Image.asset('images/hide_icon.png'),
                          hintStyle: TextStyle(
                            color: Colors.grey.shade300,
                          ),
                        ),
                      ),
                      Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Esqueceu a senha?',
                            style: TextStyle(
                                color: Colors.green.shade200,
                                fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      Spacer(),
                      ElevatedButton(
                          onPressed: () async {
                            try {
                              UserCredential userCredential = await FirebaseAuth.instance.signInWithEmailAndPassword(
                                email: _emailController.text,
                                password: _passwordController.text,
                              );
                              Navigator.of(context).pushNamed(HomeScreen.routeName);
                            } on FirebaseAuthException catch (e) {
                              if (e.code == 'user-not-found') {
                                print('No user found for that email.');
                              } else if (e.code == 'wrong-password') {
                                print('Wrong password provided.');
                              }
                            }
                          },
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
                                  horizontal: 150,
                                  vertical: 20), // Ajusta o tamanho do botão
                            ),
                          ),
                          child: Text(
                            'Login',
                            style: TextStyle(
                                color: Colors.white, fontWeight: FontWeight.bold),
                          )),
                      Spacer(),
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pushNamed(Signup.routeName);
                        },
                        child: RichText(
                            text: TextSpan(
                                style: Theme.of(context).textTheme.bodyMedium,
                                children: [
                                  TextSpan(text: 'Ainda não tem uma conta?'),
                                  TextSpan(
                                      text: 'Criar Conta',
                                      style: TextStyle(
                                          color: Colors.green.shade200,
                                          fontWeight: FontWeight.bold))
                                ])),
                      ),
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
