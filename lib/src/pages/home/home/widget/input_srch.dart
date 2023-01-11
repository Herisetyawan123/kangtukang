import 'package:flutter/material.dart';
import 'package:kang_tukang/src/constants/theme.dart';

class InputSearch extends StatelessWidget {
  const InputSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(
        fontSize: 20,
        color: ThemeApp.white,
      ),
      decoration: InputDecoration(
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.white,
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(
              20.0,
            ),
          ),
        ),
        focusColor: ThemeApp.white,
        fillColor: ThemeApp.dark,
        prefixIcon: Container(
          margin: const EdgeInsets.only(
            left: 15,
            right: 15,
          ),
          child: const Icon(
            Icons.search,
            size: 40,
          ),
        ),
        prefixIconColor: Colors.white60,
        // prefixStyle: ,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(
              20.0,
            ),
          ),
          borderSide: BorderSide(
            color: Colors.grey,
          ),
        ),
        hintText: "Mencari Pekerja",
        hintStyle: const TextStyle(
          fontSize: 20,
          color: Colors.white60,
        ),
      ),
    );
  }
}
