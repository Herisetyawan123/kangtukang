import 'package:flutter/material.dart';

class InputPassword extends StatefulWidget {
  const InputPassword({Key? key, required this.controllerPw}) : super(key: key);
  final TextEditingController controllerPw;
  @override
  State<InputPassword> createState() => _InputPasswordState();
}

class _InputPasswordState extends State<InputPassword> {
  bool eye = false;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controllerPw,
      obscureText: !eye,
      decoration: InputDecoration(
        prefixIcon: const Icon(
          Icons.lock_outline,
        ),
        suffixIcon: InkWell(
          onTap: () {
            setState(() {
              eye = !eye;
            });
          },
          child: Icon(
            eye ? Icons.visibility : Icons.visibility_off,
          ),
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              10.0,
            ),
          ),
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
        hintText: "Masukan password",
        hintStyle: const TextStyle(
          fontSize: 14,
          color: Colors.black54,
        ),
      ),
    );
  }
}
