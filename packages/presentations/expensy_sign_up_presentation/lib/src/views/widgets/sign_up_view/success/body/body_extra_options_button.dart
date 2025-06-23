import "package:expensy_common/expensy_common.dart";
import "package:flutter/material.dart";

class ExpensySignUpPresentationViewSuccessBodyExtraOptionsButton extends StatelessWidget {

  ExpensySignUpPresentationViewSuccessBodyExtraOptionsButton({
    super.key,
    required this.icon,
    required this.title,
    this.iconColor,
    this.onClick,
    this.isLoading = false
  });

  final IconData icon;
  final String title;
  final Color? iconColor;
  final void Function()? onClick;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: Icon(
          icon,
          color: iconColor
      ),
      onPressed: onClick,
      style: ButtonStyle(
          backgroundColor: WidgetStateColor.resolveWith((states) => Theme.of(context).extension<ExpensySignUpColors>()?.extraOptionBackgroundButtonColor ?? Colors.transparent),
          side: WidgetStateProperty.all(
            BorderSide(
              color: Theme.of(context).extension<ExpensySignUpColors>()?.extraOptionsButtonBorderColor ?? Colors.transparent,
              width: 1,
            ),
          ),
          elevation: WidgetStateProperty.all(0),
      ),
      label: isLoading
      ?Container(
        margin: EdgeInsets.symmetric(horizontal: 15),
        width: 12,
        height: 12,
        child: CircularProgressIndicator(
          color: Theme.of(context).extension<ExpensySignUpColors>()?.bodyFormExtraOptionProgressIndicatorColor ?? Colors.transparent,
          strokeWidth: 2,
        )
      )
      :Text(
          title,
          style: TextStyle(
            color: Theme.of(context).extension<ExpensySignUpColors>()?.extraOptionsButtonTextColor
          ),
      ),
    );
  }
}
