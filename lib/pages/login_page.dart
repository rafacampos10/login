import 'package:flutter/material.dart';
import 'package:login/components/login/custom_login_button_component.dart';
import 'package:login/controllers/login_controller.dart';
import 'package:login/widgets/custom_text_field_widget.dart';

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
            CustomTextFieldWidget(
              label: "Login",
              onChanged: _controller.setLogin,
            ),
            CustomTextFieldWidget(
              label: "Senha",
              onChanged: _controller.setPass,
              obscureText: true,
            ),
            SizedBox(height: 15),
            CustomLoginButtonComponent(loginController: _controller,),
          ],
        ),
      ),
    );
  }
}
