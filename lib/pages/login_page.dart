import 'package:flutter/material.dart';
import 'package:splashscreen_login/components/login/custom_login_button_component.dart';
import 'package:splashscreen_login/controllers/login_controller.dart';
import 'package:splashscreen_login/widgets/custom_text_field_widget.dart';

// ignore: must_be_immutable
class LoginPage extends StatelessWidget {
  LoginController _controller = LoginController();

  LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(28),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Icon(Icons.people, size: 120),
            CustomTextFieldWidget(
              onChanged: _controller.setLogin,
              label: 'Login',
              showIcon: true,
              icon: Icons.email,
            ),
            const SizedBox(
              height: 15,
            ),
            CustomTextFieldWidget(
              onChanged: _controller.setPass,
              label: 'Senha',
              obscureText: true,
              showIcon: true,
              icon: Icons.password,
            ),
            const SizedBox(
              height: 15,
            ),
            CustomLoginButtonComponent(
              loginController: _controller,
            )
          ],
        ),
      ),
    );
  }
}
