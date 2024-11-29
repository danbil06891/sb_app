import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sbapp/constants/color_constant.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    Key? key,
    required this.hinttext,
    this.keyboardtype,
    required this.labeltext,
    this.inputformatter,
    this.maxlenght,
    this.textalign,
    this.obscuretext = false,
    this.validator,
    this.controller,
    this.suffixicon,
    this.prefixicon,
    this.autoFocus = false,
    this.prefixStyle,
    this.prefixIconColor,
    this.onSaved,
    this.borderRadius,
    this.maxLines,
    this.contentPadding,
  }) : super(key: key);

  final String labeltext;
  final String hinttext;
  final TextInputType? keyboardtype;
  final int? maxlenght;
  final TextAlign? textalign;
  final bool obscuretext;
  final TextInputFormatter? inputformatter;
  final FormFieldValidator<String>? validator;
  final TextEditingController? controller;
  final Widget? suffixicon;
  final bool autoFocus;
  final Icon? prefixicon;
  final TextStyle? prefixStyle;
  final Color? prefixIconColor;
  final void Function(String?)? onSaved;
  final BorderRadius? borderRadius;
  final int? maxLines;
  final EdgeInsetsGeometry? contentPadding;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      child: TextFormField(
        textAlign: TextAlign.center,
        style: const TextStyle(fontSize: 15.0, color: Colors.black),
        autofocus: autoFocus,
        onSaved: onSaved,
        cursorColor: primaryColor,
        controller: controller,
        validator: validator,
        obscureText: obscuretext,
        keyboardType: keyboardtype,
        maxLength: maxlenght,
        maxLines: maxLines,
        textInputAction: TextInputAction.next,
        decoration: InputDecoration(
          prefixIconColor: prefixIconColor,
          border: OutlineInputBorder(
            borderRadius: borderRadius!,
          ),
          hintText: hinttext,
          prefixIcon: prefixicon,
          suffixIcon: suffixicon,
          prefixStyle: prefixStyle,
          // contentPadding: contentPadding,
          contentPadding: EdgeInsets.only(top: 0, left: 50),
          focusedBorder: OutlineInputBorder(
            borderSide: const BorderSide(color: primaryColor),
            borderRadius: borderRadius!,
          ),
          counter: const Offstage(),
        ),
      ),
    );
  }
}
