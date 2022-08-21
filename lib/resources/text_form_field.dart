import 'package:flutter/material.dart';

class AuthTextFormField extends StatelessWidget {
  final Widget prefixIcon;
  final Widget suffixIcon;
  final String hintText;
  final bool obsecureText;
  final TextEditingController controller;
  final Function validator;
  const AuthTextFormField(this.prefixIcon, this.hintText, this.obsecureText,
      this.suffixIcon, this.controller, this.validator,
      {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        icon: prefixIcon,
        hintText: hintText,
        suffixIcon: suffixIcon,
      ),
      obscureText: obsecureText,
      controller: controller,
      validator: (value) => validator(value),
    );
  }
}
