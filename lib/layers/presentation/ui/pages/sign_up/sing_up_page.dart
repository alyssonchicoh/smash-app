import 'package:flutter/material.dart';

class SingUpPage extends StatefulWidget {
  const SingUpPage({Key? key}) : super(key: key);

  @override
  State<SingUpPage> createState() => _SingUpPageState();
}

class _SingUpPageState extends State<SingUpPage> {
  final _nameTextController = TextEditingController();
  final _cpfTextController = TextEditingController();
  final _phoneTextController = TextEditingController();
  final _emailTextController = TextEditingController();
  final _passwordTextController = TextEditingController();
  final _repeatPasswordTextController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _passwordVisible = false;
  bool _repeatePasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cadastro de novo Usuário"),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: ListView(
        children: [
          Form(
            key: _formKey,
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Container(
                        height: 20,
                      ),
                      _createInputText(_nameTextController, "Nome",
                          Icons.person, _nameTextFildValidator()),
                      _createInputText(_cpfTextController, "CPF",
                          Icons.info_outline, _cpfTextFildValidator()),
                      _createInputText(_phoneTextController, "Telefone",
                          Icons.phone, _phoneTextFildValidator()),
                      _createInputText(_emailTextController, "E-mail",
                          Icons.email, _emnailTextFildValidator()),
                      _createInputObscureText(_emailTextController, "Senha",
                          Icons.lock, _emnailTextFildValidator()),
                      _createInputText(_emailTextController, "Repetir Senha",
                          Icons.repeat, _emnailTextFildValidator()),
                      const SizedBox(
                        width: 350,
                        child: Text(
                          "Crie uma senha que contenha:",
                          style: TextStyle(
                            color: Colors.grey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Container(
                        height: 10,
                      ),
                      SizedBox(
                        width: 350,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Icon(
                                  Icons.check_circle_outline,
                                  color: Colors.green,
                                ),
                                Container(
                                  width: 3,
                                ),
                                const Text(
                                  "Ao menos 8 caracteres",
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                const Icon(
                                  Icons.check_circle_outline,
                                  color: Colors.green,
                                ),
                                Container(
                                  width: 3,
                                ),
                                const Text(
                                  "Ao menos 1 número",
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.check_circle_outline,
                                  color: Colors.green,
                                ),
                                Container(
                                  width: 3,
                                ),
                                const Text(
                                  "Ao menos 1 caractere especial",
                                  style: TextStyle(
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 20,
                  ),
                  SizedBox(
                    width: 350,
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
                          _showDialogProcessing(context);
                        }
                      },
                      child: const Text('Salvar'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _createInputText(TextEditingController controller, String hintText,
      IconData prefixIcon, Function validator) {
    return SizedBox(
      width: 350,
      height: 75,
      child: TextFormField(
        decoration: InputDecoration(
          helperText: ' ',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              6.0,
            ),
          ),
          filled: false,
          fillColor: Colors.grey.withOpacity(
            0.2,
          ),
          prefixIcon: Icon(
            prefixIcon,
            color: Colors.amber,
            size: 30,
          ),
          hintText: hintText,
          hintStyle: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
        controller: controller,
        validator: (value) => validator(value),
      ),
    );
  }

  Widget _createInputObscureText(TextEditingController controller,
      String hintText, IconData prefixIcon, Function validator) {
    return SizedBox(
      width: 350,
      height: 75,
      child: TextFormField(
        obscureText: _passwordVisible,
        decoration: InputDecoration(
          helperText: ' ',
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(
              6.0,
            ),
          ),
          filled: false,
          fillColor: Colors.grey.withOpacity(
            0.2,
          ),
          prefixIcon: Icon(
            prefixIcon,
            color: Colors.amber,
            size: 30,
          ),
          suffixIcon: IconButton(
            icon: Icon(
              // Based on passwordVisible state choose the icon
              _passwordVisible ? Icons.visibility : Icons.visibility_off,
              color: Theme.of(context).primaryColorDark,
            ),
            onPressed: () {
              // Update the state i.e. toogle the state of passwordVisible variable
              setState(() {
                _passwordVisible = !_passwordVisible;
              });
            },
          ),
          hintText: hintText,
          hintStyle: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
        controller: controller,
        validator: (value) => validator(value),
      ),
    );
  }

  _showDialogProcessing(context) {
    showDialog(
      context: context,
      builder: (BuildContext ctx) {
        return AlertDialog(
          title: const Text(
            'Escolha uma Senha',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _createInputObscureText(_emailTextController, "Senha", Icons.lock,
                  _emnailTextFildValidator()),
              _createInputText(_emailTextController, "Repetir Senha",
                  Icons.repeat, _emnailTextFildValidator()),
              const Text(
                "Crie uma senha que contenha:",
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
              ),
              Container(
                height: 20,
              ),
              Row(
                children: [
                  const Icon(
                    Icons.check_circle_outline,
                    color: Colors.green,
                  ),
                  Container(
                    width: 3,
                  ),
                  const Text(
                    "Ao menos 8 caracteres",
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const Icon(
                    Icons.check_circle_outline,
                    color: Colors.green,
                  ),
                  Container(
                    width: 3,
                  ),
                  const Text(
                    "Ao menos 1 número",
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Row(
                children: [
                  const Icon(
                    Icons.check_circle_outline,
                    color: Colors.green,
                  ),
                  Container(
                    width: 3,
                  ),
                  const Text(
                    "Ao menos 1 caractere especial",
                    style: TextStyle(
                      color: Colors.green,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ],
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  Function _nameTextFildValidator() {
    return (value) {
      if (value == null || value.isEmpty) {
        return 'Digite o nome';
      }
      return null;
    };
  }

  Function _cpfTextFildValidator() {
    return (value) {
      if (value == null || value.isEmpty) {
        return 'Digite o CPF';
      }
      return null;
    };
  }

  Function _phoneTextFildValidator() {
    return (value) {
      if (value == null || value.isEmpty) {
        return 'Digite o Número do Telefone';
      }
      return null;
    };
  }

  Function _emnailTextFildValidator() {
    return (value) {
      if (value == null || value.isEmpty) {
        return 'Digite o email';
      }
      return null;
    };
  }
}
