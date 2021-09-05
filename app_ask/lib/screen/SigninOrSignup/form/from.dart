import 'package:flutter/material.dart';
import 'package:app_ask/screen/MainAsk/main_ask_screen.dart';
import 'package:app_ask/screen/welcome/welcome_screen.dart';
import 'package:app_ask/constants.dart';

import 'package:app_ask/screen/SigninOrSignup/signin_or_signup_screen.dart';

class SignInForm extends StatelessWidget {
  SignInForm({
    Key? key,
    required this.formKey,
  }) : super(key: key);

  final GlobalKey formKey;

  late String _email, _password;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          // TextFieldName(text: "Email"),
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(hintText: "test@email.com"),
            // validator: EmailValidator(errorText: "Use a valid email!"),
            onSaved: (email) => _email = email!,
          ),

          const SizedBox(height: kDefaultPadding),
          // TextFieldName(text: "Password"),

          TextFormField(
            // We want to hide our password
            obscureText: true,
            decoration: InputDecoration(hintText: "******"),
            // validator: passwordValidator,
            onSaved: (password) => _password = password!,
          ),

          const SizedBox(height: kDefaultPadding),

        ],
      ),
    );
  }
}