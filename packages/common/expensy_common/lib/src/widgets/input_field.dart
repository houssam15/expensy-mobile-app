import 'package:flutter/material.dart';

class InputField extends StatefulWidget {
  final String hint;
  final String placeholder;
  final TextEditingController? controller;
  final void Function(String)? onChanged;

  const InputField({
    super.key,
    this.hint = '',
    this.placeholder = '',
    this.controller,
    this.onChanged,
  });

  @override
  State<InputField> createState() => _InputFieldState();
}

class _InputFieldState extends State<InputField> {
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _controller = widget.controller ?? TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: _controller,
      decoration: InputDecoration(
        hintText: widget.hint,
        labelText: widget.placeholder,
        hintStyle: const TextStyle(
          color: Colors.black,
          fontSize: 12
        ),
        labelStyle: const TextStyle(
          color: Colors.black,
          fontSize: 12
        ),
        border: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey), // Grey border
          borderRadius: BorderRadius.circular(8.0),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.grey), // Grey when enabled
          borderRadius: BorderRadius.circular(8.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.blue), // Blue when focused (optional)
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),
      onChanged: widget.onChanged,
    );
  }
}