import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({
    Key? key,
    required this.controller_,
    this.icons,
    this.placeholder,
  }) : super(key: key);
  final TextEditingController controller_;
  final IconData? icons;
  final String? placeholder;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller_,
      decoration: InputDecoration(
        prefixIcon: Icon(
          icons,
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(
            10.0,
          )),
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
        hintText: placeholder,
        hintStyle: const TextStyle(
          fontSize: 14,
          color: Colors.black54,
        ),
      ),
    );
  }
}
