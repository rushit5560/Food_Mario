import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../constants/colors.dart';

class TextFormFiledCustom extends StatelessWidget {
  TextEditingController fieldController;
  String hintText;
  TextInputType keyboardType;
  FormFieldValidator? validate;
  int? maxLength;
  Widget? suffixIcon;
  Color textColor;
  Color fillColor;
  Widget? prefixIcon;
  bool? obscureText;
  String textFontFamily;
  //TextAlign? textAlign;

  TextFormFiledCustom({
    Key? key,
    required this.fieldController,
    required this.hintText,
    required this.keyboardType,
    this.textColor = AppColors.grey400Color,
    this.fillColor = AppColors.gray100Color,
    this.validate,
    this.maxLength,
    this.suffixIcon,
    // this.suffixIcon,
    this.prefixIcon,
    //this.textAlign,
    this.textFontFamily = "SFProDisplayRegular",
    this.obscureText,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColors.blackColor,
      controller: fieldController,
      validator: validate,
      obscureText: obscureText ?? false,
      textInputAction: TextInputAction.next,
      keyboardType: keyboardType,
      maxLength: maxLength,
      //textAlign: textAlign!,
      decoration: InputDecoration(
        //fillColor: Colors.white,
        focusedBorder:const UnderlineInputBorder(
          borderSide: BorderSide(color: Colors.grey),
        ),
        hintText: hintText,
        errorMaxLines: 2,
        prefixIcon: prefixIcon,
        prefixIconColor: AppColors.blackColor,
        suffixIcon: suffixIcon,
        hintStyle: TextStyle(
          color: textColor,
          fontFamily: textFontFamily,
        ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      ),
    );
  }

  InputBorder inputBorder() {
    return const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(30)),
      borderSide: BorderSide.none
    );
  }
}


class codeVerifyTextFormFiledCustom extends StatelessWidget {
  TextEditingController fieldController;
  String hintText;
  TextInputType? keyboardType;
  FormFieldValidator? validate;
  int? maxLength;
  Widget? suffixIcon;
  Color textColor;
  Color fillColor;
  Widget? prefixIcon;
  bool? obscureText;
  String textFontFamily;
  Function(String)? onChanged;
  double? fontSize;
  TextStyle? textStyle;

  codeVerifyTextFormFiledCustom({
    Key? key,
    required this.fieldController,
    required this.hintText,
    this.keyboardType,
    this.textColor = AppColors.grey400Color,
    this.fillColor = AppColors.gray100Color,
    this.validate,
    this.maxLength,
    this.suffixIcon,
    required this.onChanged,
    // this.suffixIcon,
    this.prefixIcon,
    this.textStyle,
    this.fontSize,
    this.textFontFamily = "SFProDisplayRegular",
    this.obscureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColors.blackColor,
      controller: fieldController,
      readOnly: false,
      onChanged: onChanged,
      validator: validate,
      obscureText: obscureText ?? false,
      textInputAction: TextInputAction.next,
      keyboardType: keyboardType,
      maxLength: maxLength,
      style: textStyle,
      decoration: InputDecoration(
        enabledBorder: const UnderlineInputBorder(
            borderSide: BorderSide(color: AppColors.blackColor),
        ),
        //fillColor: Colors.white,
        focusedBorder:const UnderlineInputBorder(
          borderSide: BorderSide(color: AppColors.blackColor),
        ),
        hintText: hintText,
        errorMaxLines: 2,
        prefixIcon: prefixIcon,
        prefixIconColor: AppColors.blackColor,
        suffixIcon: suffixIcon,
        hintStyle: TextStyle(
          fontSize: fontSize,
          color: textColor,
          fontFamily: textFontFamily,
        ),
          contentPadding: const EdgeInsets.all(10)
      ),
      inputFormatters: [
        LengthLimitingTextInputFormatter(1),
        FilteringTextInputFormatter.digitsOnly,
      ],
    );
  }

  InputBorder inputBorder() {
    return const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        borderSide: BorderSide.none
    );
  }
}


class SearchBarTextFormFiledCustom extends StatelessWidget {
  TextEditingController fieldController;
  String hintText;
  TextInputType keyboardType;
  FormFieldValidator? validate;
  int? maxLength;
  Widget? suffixIcon;
  Color textColor;
  Color fillColor;

  Widget? prefixIcon;
  bool? obscureText;
  String textFontFamily;

  SearchBarTextFormFiledCustom({
    Key? key,
    required this.fieldController,
    required this.hintText,
    required this.keyboardType,
    this.textColor = AppColors.grey400Color,
    this.fillColor = AppColors.gray100Color,
    this.validate,
    this.maxLength,
    this.suffixIcon,
    // this.suffixIcon,

    this.prefixIcon,
    this.textFontFamily = "SFProDisplayRegular",
    this.obscureText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColors.blackColor,
      controller: fieldController,
      validator: validate,
      obscureText: obscureText ?? false,
      textInputAction: TextInputAction.next,
      keyboardType: keyboardType,
      maxLength: maxLength,
      decoration: InputDecoration(
        enabledBorder: inputBorder(),
        focusedBorder: inputBorder(),
        errorBorder: inputBorder(),
        focusedErrorBorder: inputBorder(),
        fillColor: fillColor,
        filled: true,
        hintText: hintText,
        errorMaxLines: 2,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,

        //counterText: '',
        hintStyle: TextStyle(
          color: textColor,
          fontFamily: textFontFamily,
        ),
        contentPadding:
        const EdgeInsets.symmetric(horizontal: 15, vertical: 11),
      ),
    );
  }

  InputBorder inputBorder() {
    return const OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(15)),
      borderSide: BorderSide(color: Colors.transparent),
    );
  }
}




class TextFiledCustom extends StatelessWidget {
  TextEditingController fieldController;
  String hintText;
  TextInputType keyboardType;
  FormFieldValidator? validate;
  int? maxLength;
  Widget? suffixIcon;
  Color textColor;
  Color fillColor;
  Widget? prefixIcon;
  bool? obscureText;
  String textFontFamily;
  //TextAlign? textAlign;

  TextFiledCustom({
    Key? key,
    required this.fieldController,
    required this.hintText,
    required this.keyboardType,
    this.textColor = AppColors.grey400Color,
    this.fillColor = AppColors.gray100Color,
    this.validate,
    this.maxLength,
    this.suffixIcon,
    // this.suffixIcon,
    this.prefixIcon,
    //this.textAlign,
    this.textFontFamily = "SFProDisplayRegular",
    this.obscureText,

  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColors.blackColor,
      controller: fieldController,
      validator: validate,
      obscureText: obscureText ?? false,
      textInputAction: TextInputAction.next,
      keyboardType: keyboardType,
      maxLength: maxLength,
      //textAlign: textAlign!,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.grey200Color,
        enabledBorder: inputBorder(),
        focusedBorder: inputBorder(),
        errorBorder: inputBorder(),
        focusedErrorBorder: inputBorder(),
        hintText: hintText,
        errorMaxLines: 2,
        prefixIcon: prefixIcon,
        prefixIconColor: AppColors.blackColor,
        suffixIcon: suffixIcon,
        hintStyle: TextStyle(
          color: textColor,
          fontFamily: textFontFamily,
        ),
        contentPadding:
        const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      ),
    );
  }

  InputBorder inputBorder() {
    return const OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(10)),
        borderSide: BorderSide.none
    );
  }
}

