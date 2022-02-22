import 'package:flutter/material.dart';
import 'package:login/controllers/login_controller.dart';

class LoginPage extends StatelessWidget {
  LoginPage({Key? key}) : super(key: key);

  final LoginController _controller = LoginController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(28),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.people,
              size: 48,
              color: Colors.blue.shade900,
            ),
            TextField(
              decoration: InputDecoration(
                label: Text ("E-mail"),
              ),
              onChanged: _controller.setLogin,
            ),
            TextField(
              decoration: InputDecoration(
                label: Text ("Senha"),
              ),
              obscureText: true,
                onChanged: _controller.setPass,
            ),
            SizedBox(height: 15),

            ValueListenableBuilder<bool>(
              valueListenable: _controller.inLoader,
                builder: (_,inLoader,__) => inLoader
                    ? CircularProgressIndicator()
                    : ElevatedButton(
                    onPressed: () {
                      _controller.auth().then(
                            (result) {
                              if (result) {
                                Navigator.of(context).pushReplacementNamed(
                                    "/home");
                              } else {
                                ScaffoldMessenger.of(context)
                                    .showSnackBar(SnackBar(
                                  content: const Text('Falha ao realizar o login'),
                                  duration: const Duration(seconds: 5),
                                ),
                                );

                              }
                            }
                      );
                    },
                    child: Text("Entrar"),
                  ),
    ),

          ],
        ),
      ),
    );
  }
}
