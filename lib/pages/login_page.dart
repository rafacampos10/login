import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

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
            ),
            TextField(
              decoration: InputDecoration(
                label: Text ("Senha"),
              ),
              obscureText: true,
            ),
            SizedBox(height: 15),
            ElevatedButton(
                onPressed: (){},
                child: Text("Entrar"),
            ),
          ],
        ),
      ),
    );
  }
}
