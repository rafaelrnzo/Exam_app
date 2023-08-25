import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextForm extends StatelessWidget {
  TextForm({
    required this.labelText,
    required this.hintText,
    Key? key,
  }) : super(key: key);

  String labelText;
  String hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide.none,
        ),
        filled: true,
        fillColor: Colors.grey[200],
        labelText: '${labelText}',
        hintText: '${hintText}',
        contentPadding: const EdgeInsets.symmetric(horizontal: 20.0),
      ),
    );
  }
}