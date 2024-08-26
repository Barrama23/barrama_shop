import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({required this.hint, required this.icon});
  final String hint;
  final Widget icon;

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController(text: '1');
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.grey.shade300)
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide(color: Colors.grey.shade300)
        ),
        hintText: hint,
        hintStyle: Theme.of(context).textTheme.headlineSmall?.copyWith(color:
        Colors.grey.shade300),
        suffixIcon: icon,
        contentPadding: EdgeInsets.symmetric(vertical: 10)
      ),
    );
  }
}
