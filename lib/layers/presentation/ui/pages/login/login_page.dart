import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:smash/core/util/dialogs.dart';
import 'package:smash/layers/domain/entities/user_entity.dart';
import 'package:smash/layers/presentation/controller/user_controller.dart';
import 'package:smash/layers/presentation/provider/user_provider.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  String login = "Login";
  final _formKey = GlobalKey<FormState>();

  var _userController = GetIt.I.get<UserController>();
  final _loginTextController = TextEditingController();
  final _passwortdTextController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Stack(
          children: [
            Opacity(
              opacity: 0.9,
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://mampituba.com.br/wp-content/uploads/2021/02/Beach-Tennis.jpeg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Container(
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                    color: Colors.white,
                  ),
                  height: 480,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Smash',
                        style: TextStyle(
                          fontFamily: 'Pacifico',
                          fontSize: 80.0,
                          color: Colors.amber,
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: SizedBox(
                              height: 75,
                              child: TextFormField(
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(6.0),
                                  ),
                                  filled: false,
                                  fillColor: Colors.grey.withOpacity(0.2),
                                  prefixIcon: const Icon(
                                    Icons.email,
                                    color: Colors.amber,
                                    size: 30,
                                  ),
                                  hintText: "Login",
                                  hintStyle: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey),
                                ),
                                controller: _loginTextController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter some text';
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10),
                            child: SizedBox(
                              height: 75,
                              child: TextFormField(
                                obscureText: true,
                                decoration: InputDecoration(
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(6.0),
                                  ),
                                  filled: false,
                                  fillColor: Colors.grey.withOpacity(0.2),
                                  prefixIcon: const Icon(
                                    Icons.lock,
                                    color: Colors.amber,
                                    size: 30,
                                  ),
                                  hintText: "Senha",
                                  hintStyle: const TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.grey),
                                ),
                                controller: _passwortdTextController,
                                validator: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter some text';
                                  }
                                  return null;
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 5,
                          bottom: 15,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: SizedBox(
                            height: 20,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: const [
                                Text(
                                  "Esqueci minha Senha",
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: SizedBox(
                          width: double.infinity,
                          height: 60,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              primary: Colors.amber,
                              textStyle: const TextStyle(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(6),
                              ),
                            ),
                            onPressed: () async {
                              if (_formKey.currentState!.validate()) {
                                Dialogs.showDialogProcessing(context);
                                var user = await _userController.login(
                                  _loginTextController.text,
                                  _passwortdTextController.text,
                                );

                                if (user.authenticate) {
                                  Provider.of<UserProvider>(
                                    context,
                                    listen: false,
                                  ).login(user);
                                  context.go('/reservations');
                                  Navigator.pop(context);
                                }
                              }
                            },
                            child: const Text('Entrar'),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: SizedBox(
                          height: 50,
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                child: Container(
                                  margin: const EdgeInsets.only(right: 20.0),
                                  child: const Divider(
                                    color: Colors.grey,
                                    height: 36,
                                  ),
                                ),
                              ),
                              const Text(
                                "OU",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                              Expanded(
                                child: Container(
                                  margin: const EdgeInsets.only(left: 20.0),
                                  child: const Divider(
                                    color: Colors.grey,
                                    height: 36,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 350,
                        height: 30,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {
                                context.push('/sign_up');
                              },
                              child: const Text(
                                "Criar Nova Conta",
                                style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
