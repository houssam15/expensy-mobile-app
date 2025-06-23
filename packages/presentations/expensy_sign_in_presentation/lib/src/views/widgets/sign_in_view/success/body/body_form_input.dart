import "package:expensy_common/expensy_common.dart";
import "package:flutter/material.dart";

class ExpensySignInPresentationViewSuccessBodyFormInput extends StatelessWidget {
  ExpensySignInPresentationViewSuccessBodyFormInput({
    super.key,
    this.hintText,
    this.prefixIcon,
    this.prefixIconColor,
    this.obscureText = false,
    this.labelText,
    this.onChanged,
    String? initialValue
  }):
  _controller = TextEditingController(text : initialValue);

  final String? hintText;
  final IconData? prefixIcon;
  final Color? prefixIconColor;
  final bool obscureText;
  final String? labelText;
  final void Function(String)? onChanged;
  TextEditingController _controller;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: TextFormField(
        controller: _controller,
        onChanged: onChanged,
        obscureText: obscureText,
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(vertical: 0.0),
          border: OutlineInputBorder(),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Theme.of(context).extension<ExpensySignInColors>()?.inputBorderColor ?? Colors.transparent), // initial color
            borderRadius: BorderRadius.circular(5),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(
                color: Theme.of(context).extension<ExpensySignInColors>()?.inputBorderColor ?? Colors.transparent,
                width: 2.0
            ), // focused color
            borderRadius: BorderRadius.circular(5),
          ),
          prefixIcon: Padding(
              padding: EdgeInsets.all(0.0),
              child: Icon(
                prefixIcon,
                color: prefixIconColor
              ),
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            fontSize: 9
          ),
          labelText: labelText,
          labelStyle: TextStyle(
            color: Theme.of(context).colorScheme.secondary,
            fontSize: 11
          )
        ),
      ),
    );
  }
}
