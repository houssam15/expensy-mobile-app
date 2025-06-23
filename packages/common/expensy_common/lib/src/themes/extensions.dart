

import 'package:flutter/material.dart';



class ExpensyBackButtonColors extends ThemeExtension<ExpensyBackButtonColors>  {
  final Color backButtonBackground;
  final Color buttonColor;

  const ExpensyBackButtonColors({
    required this.backButtonBackground,
    required this.buttonColor,
  });

  @override
  ExpensyBackButtonColors copyWith({
    Color? backButtonBackground,
    Color? buttonColor,
  }) {
    return ExpensyBackButtonColors(
      backButtonBackground: backButtonBackground ?? this.backButtonBackground,
      buttonColor: buttonColor ?? this.buttonColor,
    );
  }

  @override
  ExpensyBackButtonColors lerp(ThemeExtension<ExpensyBackButtonColors>? other, double t) {
    if (other is! ExpensyBackButtonColors) return this;

    return ExpensyBackButtonColors(
      backButtonBackground: Color.lerp(backButtonBackground, other.backButtonBackground, t)!,
      buttonColor: Color.lerp(buttonColor, other.buttonColor, t)!,
    );
  }

}

class ExpensySignInColors extends ThemeExtension<ExpensySignInColors> {

  final Color inputPrefixIconColor;
  final Color inputHintTextColor;
  final Color inputBorderColor;
  final Color inputLabelTextColor;
  final Color forgotPasswordColor;
  final Color submitButtonBackgroundColor;
  final Color submitButtonTextColor;
  final Color extraOptionFacebookColor;
  final Color extraOptionGoogleColor;
  final Color extraOptionBackgroundButtonColor;
  final Color extraOptionsButtonBorderColor;
  final Color extraOptionsButtonTextColor;
  final Color goToSignUpDonNotHaveAccountColor;
  final Color registerColor;
  final Color bodyFormAlertSuccessColor;
  final Color bodyFormAlertErrorColor;
  final Color bodyFormAlertWarningColor;
  final Color bodyFormAlertContentColor;
  final Color bodyFormExtraOptionProgressIndicatorColor;

  const ExpensySignInColors({
    Color? inputPrefixIconColor,
    Color? inputHintTextColor,
    Color? inputLabelTextColor,
    Color? forgotPasswordColor,
    Color? submitButtonBackgroundColor,
    Color? submitButtonTextColor,
    Color? inputBorderColor,
    Color? extraOptionFacebookColor,
    Color? extraOptionGoogleColor,
    Color? extraOptionBackgroundButtonColor,
    Color? extraOptionsButtonBorderColor,
    Color? extraOptionsButtonTextColor,
    Color? goToSignUpDonNotHaveAccountColor,
    Color? registerColor,
    Color? bodyFormAlertSuccessColor,
    Color? bodyFormAlertErrorColor,
    Color? bodyFormAlertWarningColor,
    Color? bodyFormAlertContentColor,
    Color? bodyFormExtraOptionProgressIndicatorColor
  })  : inputPrefixIconColor = inputPrefixIconColor ?? Colors.black,
        inputHintTextColor = inputHintTextColor ?? Colors.grey,
        inputLabelTextColor = inputLabelTextColor ?? Colors.grey,
        inputBorderColor = inputBorderColor ?? Colors.grey,
        forgotPasswordColor = forgotPasswordColor ?? Colors.grey,
        submitButtonBackgroundColor = submitButtonBackgroundColor ?? Colors.purple,
        submitButtonTextColor = submitButtonTextColor ?? Colors.white,
        extraOptionFacebookColor = extraOptionFacebookColor ?? Colors.blue,
        extraOptionGoogleColor = extraOptionGoogleColor ?? Colors.orange,
        extraOptionBackgroundButtonColor = extraOptionBackgroundButtonColor ?? Colors.transparent,
        extraOptionsButtonBorderColor = extraOptionsButtonBorderColor ?? Colors.grey,
        extraOptionsButtonTextColor = extraOptionsButtonTextColor ?? Colors.transparent,
        goToSignUpDonNotHaveAccountColor = goToSignUpDonNotHaveAccountColor ?? Colors.transparent,
        registerColor = registerColor ?? Colors.orange,
        bodyFormAlertErrorColor = bodyFormAlertErrorColor ?? Colors.red,
        bodyFormAlertSuccessColor = bodyFormAlertSuccessColor ?? Colors.green,
        bodyFormAlertWarningColor = bodyFormAlertWarningColor ?? Colors.yellow,
        bodyFormAlertContentColor = bodyFormAlertContentColor ?? Colors.white,
        bodyFormExtraOptionProgressIndicatorColor = bodyFormExtraOptionProgressIndicatorColor ?? Colors.grey;

  @override
  ExpensySignInColors copyWith({
    Color? inputPrefixIconColor,
    Color? inputHintTextColor,
    Color? inputBorderColor,
    Color? inputLabelTextColor,
    Color? forgotPasswordColor,
    Color? submitButtonBackgroundColor,
    Color? submitButtonTextColor,
    Color? extraOptionFacebookColor,
    Color? extraOptionGoogleColor,
    Color? extraOptionBackgroundButtonColor,
    Color? extraOptionsButtonBorderColor,
    Color? extraOptionsButtonTextColor,
    Color? goToSignUpDonNotHaveAccountColor,
    Color? registerColor,
    Color? bodyFormAlertSuccessColor,
    Color? bodyFormAlertErrorColor,
    Color? bodyFormAlertWarningColor,
    Color? bodyFormAlertContentColor,
    Color? bodyFormExtraOptionProgressIndicatorColor
  }) {
    return ExpensySignInColors(
      inputPrefixIconColor: inputPrefixIconColor ?? this.inputPrefixIconColor,
      inputHintTextColor: inputHintTextColor ?? this.inputHintTextColor,
      inputBorderColor: inputBorderColor ?? this.inputBorderColor,
      inputLabelTextColor: inputLabelTextColor ?? this.inputLabelTextColor,
      forgotPasswordColor: forgotPasswordColor ?? this.forgotPasswordColor,
      submitButtonBackgroundColor: submitButtonBackgroundColor ?? this.submitButtonBackgroundColor,
      submitButtonTextColor: submitButtonTextColor ?? this.submitButtonTextColor,
      extraOptionFacebookColor: extraOptionFacebookColor ?? this.extraOptionFacebookColor,
      extraOptionGoogleColor: extraOptionGoogleColor ?? this.extraOptionGoogleColor,
      extraOptionBackgroundButtonColor: extraOptionBackgroundButtonColor ?? this.extraOptionBackgroundButtonColor,
      extraOptionsButtonBorderColor: extraOptionsButtonBorderColor ?? this.extraOptionsButtonBorderColor,
      extraOptionsButtonTextColor: extraOptionsButtonTextColor ?? this.extraOptionsButtonTextColor,
      goToSignUpDonNotHaveAccountColor: goToSignUpDonNotHaveAccountColor ?? this.goToSignUpDonNotHaveAccountColor,
      registerColor: registerColor ?? this.registerColor,
      bodyFormAlertErrorColor: bodyFormAlertErrorColor ?? this.bodyFormAlertErrorColor,
      bodyFormAlertSuccessColor: bodyFormAlertSuccessColor ?? this.bodyFormAlertSuccessColor,
      bodyFormAlertWarningColor: bodyFormAlertWarningColor ?? this.bodyFormAlertWarningColor,
      bodyFormAlertContentColor : bodyFormAlertContentColor ?? this.bodyFormAlertContentColor,
      bodyFormExtraOptionProgressIndicatorColor : bodyFormExtraOptionProgressIndicatorColor ?? this.bodyFormExtraOptionProgressIndicatorColor
    );
  }

  @override
  ExpensySignInColors lerp(ThemeExtension<ExpensySignInColors>? other, double t) {
    if (other is! ExpensySignInColors) return this;
    return ExpensySignInColors(
      inputPrefixIconColor: Color.lerp(inputPrefixIconColor, other.inputPrefixIconColor, t),
      inputHintTextColor: Color.lerp(inputHintTextColor, other.inputHintTextColor, t),
      inputBorderColor: Color.lerp(inputBorderColor, other.inputBorderColor, t),
      inputLabelTextColor: Color.lerp(inputLabelTextColor, other.inputLabelTextColor, t),
      forgotPasswordColor: Color.lerp(forgotPasswordColor, other.forgotPasswordColor, t),
      submitButtonBackgroundColor: Color.lerp(submitButtonBackgroundColor, other.submitButtonBackgroundColor, t),
      submitButtonTextColor: Color.lerp(submitButtonTextColor, other.submitButtonTextColor, t),
      extraOptionFacebookColor: Color.lerp(extraOptionFacebookColor, other.extraOptionFacebookColor, t),
      extraOptionGoogleColor: Color.lerp(extraOptionGoogleColor, other.extraOptionGoogleColor, t),
      extraOptionBackgroundButtonColor: Color.lerp(extraOptionBackgroundButtonColor, other.extraOptionBackgroundButtonColor, t),
      extraOptionsButtonBorderColor: Color.lerp(extraOptionsButtonBorderColor, other.extraOptionsButtonBorderColor, t),
      extraOptionsButtonTextColor: Color.lerp(extraOptionsButtonTextColor, other.extraOptionsButtonTextColor, t),
      goToSignUpDonNotHaveAccountColor: Color.lerp(goToSignUpDonNotHaveAccountColor, other.goToSignUpDonNotHaveAccountColor, t),
      registerColor: Color.lerp(registerColor, other.registerColor, t),
      bodyFormAlertWarningColor: Color.lerp(bodyFormAlertWarningColor, other.bodyFormAlertWarningColor, t),
      bodyFormAlertSuccessColor: Color.lerp(bodyFormAlertSuccessColor, other.bodyFormAlertSuccessColor, t),
      bodyFormAlertErrorColor: Color.lerp(bodyFormAlertErrorColor, other.bodyFormAlertErrorColor, t),
      bodyFormAlertContentColor: Color.lerp(bodyFormAlertContentColor, other.bodyFormAlertContentColor, t),
      bodyFormExtraOptionProgressIndicatorColor : Color.lerp(bodyFormExtraOptionProgressIndicatorColor, other.bodyFormExtraOptionProgressIndicatorColor, t),
    );
  }
}



class ExpensySignUpColors extends ThemeExtension<ExpensySignUpColors> {

  final Color inputPrefixIconColor;
  final Color inputHintTextColor;
  final Color inputBorderColor;
  final Color inputLabelTextColor;
  final Color forgotPasswordColor;
  final Color submitButtonBackgroundColor;
  final Color submitButtonTextColor;
  final Color extraOptionFacebookColor;
  final Color extraOptionGoogleColor;
  final Color extraOptionBackgroundButtonColor;
  final Color extraOptionsButtonBorderColor;
  final Color extraOptionsButtonTextColor;
  final Color goToSignUpDonNotHaveAccountColor;
  final Color registerColor;
  final Color bodyFormAlertSuccessColor;
  final Color bodyFormAlertErrorColor;
  final Color bodyFormAlertWarningColor;
  final Color bodyFormAlertContentColor;
  final Color bodyFormExtraOptionProgressIndicatorColor;

  const ExpensySignUpColors({
    Color? inputPrefixIconColor,
    Color? inputHintTextColor,
    Color? inputLabelTextColor,
    Color? forgotPasswordColor,
    Color? submitButtonBackgroundColor,
    Color? submitButtonTextColor,
    Color? inputBorderColor,
    Color? extraOptionFacebookColor,
    Color? extraOptionGoogleColor,
    Color? extraOptionBackgroundButtonColor,
    Color? extraOptionsButtonBorderColor,
    Color? extraOptionsButtonTextColor,
    Color? goToSignUpDonNotHaveAccountColor,
    Color? registerColor,
    Color? bodyFormAlertSuccessColor,
    Color? bodyFormAlertErrorColor,
    Color? bodyFormAlertWarningColor,
    Color? bodyFormAlertContentColor,
    Color? bodyFormExtraOptionProgressIndicatorColor
  })  : inputPrefixIconColor = inputPrefixIconColor ?? Colors.black,
        inputHintTextColor = inputHintTextColor ?? Colors.grey,
        inputLabelTextColor = inputLabelTextColor ?? Colors.grey,
        inputBorderColor = inputBorderColor ?? Colors.grey,
        forgotPasswordColor = forgotPasswordColor ?? Colors.grey,
        submitButtonBackgroundColor = submitButtonBackgroundColor ?? Colors.purple,
        submitButtonTextColor = submitButtonTextColor ?? Colors.white,
        extraOptionFacebookColor = extraOptionFacebookColor ?? Colors.blue,
        extraOptionGoogleColor = extraOptionGoogleColor ?? Colors.orange,
        extraOptionBackgroundButtonColor = extraOptionBackgroundButtonColor ?? Colors.transparent,
        extraOptionsButtonBorderColor = extraOptionsButtonBorderColor ?? Colors.grey,
        extraOptionsButtonTextColor = extraOptionsButtonTextColor ?? Colors.transparent,
        goToSignUpDonNotHaveAccountColor = goToSignUpDonNotHaveAccountColor ?? Colors.transparent,
        registerColor = registerColor ?? Colors.orange,
        bodyFormAlertErrorColor = bodyFormAlertErrorColor ?? Colors.red,
        bodyFormAlertSuccessColor = bodyFormAlertSuccessColor ?? Colors.green,
        bodyFormAlertWarningColor = bodyFormAlertWarningColor ?? Colors.yellow,
        bodyFormAlertContentColor = bodyFormAlertContentColor ?? Colors.white,
        bodyFormExtraOptionProgressIndicatorColor = bodyFormExtraOptionProgressIndicatorColor ?? Colors.grey;


  @override
  ExpensySignUpColors copyWith({
    Color? inputPrefixIconColor,
    Color? inputHintTextColor,
    Color? inputBorderColor,
    Color? inputLabelTextColor,
    Color? forgotPasswordColor,
    Color? submitButtonBackgroundColor,
    Color? submitButtonTextColor,
    Color? extraOptionFacebookColor,
    Color? extraOptionGoogleColor,
    Color? extraOptionBackgroundButtonColor,
    Color? extraOptionsButtonBorderColor,
    Color? extraOptionsButtonTextColor,
    Color? goToSignUpDonNotHaveAccountColor,
    Color? registerColor,
    Color? bodyFormAlertSuccessColor,
    Color? bodyFormAlertErrorColor,
    Color? bodyFormAlertWarningColor,
    Color? bodyFormAlertContentColor,
    Color? bodyFormExtraOptionProgressIndicatorColor
  }) {
    return ExpensySignUpColors(
      inputPrefixIconColor: inputPrefixIconColor ?? this.inputPrefixIconColor,
      inputHintTextColor: inputHintTextColor ?? this.inputHintTextColor,
      inputBorderColor: inputBorderColor ?? this.inputBorderColor,
      inputLabelTextColor: inputLabelTextColor ?? this.inputLabelTextColor,
      forgotPasswordColor: forgotPasswordColor ?? this.forgotPasswordColor,
      submitButtonBackgroundColor: submitButtonBackgroundColor ?? this.submitButtonBackgroundColor,
      submitButtonTextColor: submitButtonTextColor ?? this.submitButtonTextColor,
      extraOptionFacebookColor: extraOptionFacebookColor ?? this.extraOptionFacebookColor,
      extraOptionGoogleColor: extraOptionGoogleColor ?? this.extraOptionGoogleColor,
      extraOptionBackgroundButtonColor: extraOptionBackgroundButtonColor ?? this.extraOptionBackgroundButtonColor,
      extraOptionsButtonBorderColor: extraOptionsButtonBorderColor ?? this.extraOptionsButtonBorderColor,
      extraOptionsButtonTextColor: extraOptionsButtonTextColor ?? this.extraOptionsButtonTextColor,
      goToSignUpDonNotHaveAccountColor: goToSignUpDonNotHaveAccountColor ?? this.goToSignUpDonNotHaveAccountColor,
      registerColor: registerColor ?? this.registerColor,
      bodyFormAlertErrorColor: bodyFormAlertErrorColor ?? this.bodyFormAlertErrorColor,
      bodyFormAlertSuccessColor: bodyFormAlertSuccessColor ?? this.bodyFormAlertSuccessColor,
      bodyFormAlertWarningColor: bodyFormAlertWarningColor ?? this.bodyFormAlertWarningColor,
      bodyFormAlertContentColor : bodyFormAlertContentColor ?? this.bodyFormAlertContentColor,
      bodyFormExtraOptionProgressIndicatorColor : bodyFormExtraOptionProgressIndicatorColor ?? this.bodyFormExtraOptionProgressIndicatorColor
    );
  }

  @override
  ExpensySignUpColors lerp(ThemeExtension<ExpensySignUpColors>? other, double t) {
    if (other is! ExpensySignUpColors) return this;
    return ExpensySignUpColors(
      inputPrefixIconColor: Color.lerp(inputPrefixIconColor, other.inputPrefixIconColor, t),
      inputHintTextColor: Color.lerp(inputHintTextColor, other.inputHintTextColor, t),
      inputBorderColor: Color.lerp(inputBorderColor, other.inputBorderColor, t),
      inputLabelTextColor: Color.lerp(inputLabelTextColor, other.inputLabelTextColor, t),
      forgotPasswordColor: Color.lerp(forgotPasswordColor, other.forgotPasswordColor, t),
      submitButtonBackgroundColor: Color.lerp(submitButtonBackgroundColor, other.submitButtonBackgroundColor, t),
      submitButtonTextColor: Color.lerp(submitButtonTextColor, other.submitButtonTextColor, t),
      extraOptionFacebookColor: Color.lerp(extraOptionFacebookColor, other.extraOptionFacebookColor, t),
      extraOptionGoogleColor: Color.lerp(extraOptionGoogleColor, other.extraOptionGoogleColor, t),
      extraOptionBackgroundButtonColor: Color.lerp(extraOptionBackgroundButtonColor, other.extraOptionBackgroundButtonColor, t),
      extraOptionsButtonBorderColor: Color.lerp(extraOptionsButtonBorderColor, other.extraOptionsButtonBorderColor, t),
      extraOptionsButtonTextColor: Color.lerp(extraOptionsButtonTextColor, other.extraOptionsButtonTextColor, t),
      goToSignUpDonNotHaveAccountColor: Color.lerp(goToSignUpDonNotHaveAccountColor, other.goToSignUpDonNotHaveAccountColor, t),
      registerColor: Color.lerp(registerColor, other.registerColor, t),
      bodyFormAlertWarningColor: Color.lerp(bodyFormAlertWarningColor, other.bodyFormAlertWarningColor, t),
      bodyFormAlertSuccessColor: Color.lerp(bodyFormAlertSuccessColor, other.bodyFormAlertSuccessColor, t),
      bodyFormAlertErrorColor: Color.lerp(bodyFormAlertErrorColor, other.bodyFormAlertErrorColor, t),
      bodyFormAlertContentColor: Color.lerp(bodyFormAlertContentColor, other.bodyFormAlertContentColor, t),
      bodyFormExtraOptionProgressIndicatorColor : Color.lerp(bodyFormExtraOptionProgressIndicatorColor, other.bodyFormExtraOptionProgressIndicatorColor, t),
    );
  }
}