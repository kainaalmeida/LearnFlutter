import 'package:flutter/material.dart';

class CustomTextFieldWidget extends StatelessWidget {
  final Function(String) onChanged;
  final String label;
  final bool obscureText;
  final IconData icon;
  final bool showIcon;

  const CustomTextFieldWidget(
      {Key? key,
      required this.onChanged,
      required this.label,
      this.obscureText = false,
      required this.icon,
      this.showIcon = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5),
          borderSide: const BorderSide(color: Colors.pink),
        ),
        label: Text(label),
        icon: Visibility(
          child: Icon(icon),
          visible: showIcon,
        ),
      ),
      onChanged: onChanged,
      obscureText: obscureText,
    );
  }
}
