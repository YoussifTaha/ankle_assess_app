import 'package:ankle_assess_app/core/theming/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget button({
  required BuildContext context,
  Color color = ColorManger.primary,
  Color textColor = Colors.white,
  double width = double.infinity,
  double height = 50,
  required function,
  required String text,
  double fontSize = 14,
}) =>
    SizedBox(
      height: height,
      width: width,
      child: MaterialButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(6.0),
        ),
        elevation: 0,
        color: color,
        onPressed: function,
        child: Text(
          text.toUpperCase(),
          style: TextStyle(
            color: textColor,
            fontSize: fontSize,
            height: 1,
            fontWeight: FontWeight.w700,
            letterSpacing: 0.50,
          ),
        ),
      ),
    );

Widget outlinedButton({
  Color color = ColorManger.primary,
  Color textColor = ColorManger.primary,
  double? height,
  double width = double.infinity,
  double fontSize = 14,
  required function,
  required String text,
  MaterialStateProperty<OutlinedBorder?>? shape,
  ButtonStyle? style,
  MaterialStateProperty<BorderSide?>? side,
}) =>
    SizedBox(
      height: height,
      width: width,
      child: OutlinedButton(
        style: ButtonStyle(
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10))),
            side: MaterialStatePropertyAll(
              BorderSide(
                  style: BorderStyle.solid,
                  strokeAlign: -3.0,
                  width: 2.0,
                  color: color),
            )),
        onPressed: function,
        child: Text(text,
            style: TextStyle(
              fontSize: fontSize,
              color: textColor,
              fontWeight: FontWeight.bold,
            )),
      ),
    );

Widget defaultForm({
  required TextEditingController controller,
  required TextInputType type,
  Function(String)? onSubmit,
  EdgeInsetsGeometry? padding,
  onChanged,
  onTap,
  TextStyle? textStyle,
  TextStyle? hintStyle,
  TextStyle? labelStyle,
  validate,
  String? labeltext,
  IconData? prefix,
  bool isPassword = false,
  IconData? suffix,
  suffixPressed,
  String? hintText,
  InputBorder? border,
  InputBorder? errorBorder,
  InputBorder? enabledBorder,
  InputBorder? focusedBorder,
  InputBorder? disabledBorder,
  Color? prefixIconColor,
  Color? suffixIconColor,
  Color? focusColor,
  Color? fillColor,
  Icon? icon,
}) =>
    Container(
      padding: padding,
      decoration: const BoxDecoration(),
      child: TextFormField(
        style: textStyle,
        controller: controller,
        validator: validate,
        onChanged: onChanged,
        onFieldSubmitted: onSubmit,
        keyboardType: type,
        obscureText: isPassword,
        decoration: InputDecoration(
          prefixIcon: prefix != null
              ? IconButton(
                  icon: Icon(
                    prefix,
                  ),
                  onPressed: () {},
                )
              : null,
          filled: true,
          fillColor: fillColor,
          disabledBorder: disabledBorder,
          focusedBorder: focusedBorder,
          focusColor: focusColor,
          enabledBorder: enabledBorder,
          hintStyle: hintStyle,
          prefixIconColor: prefixIconColor,
          suffixIconColor: suffixIconColor,
          labelStyle: labelStyle,
          errorBorder: errorBorder,
          hintText: hintText,
          suffixIcon: suffix != null
              ? IconButton(
                  icon: (Icon(suffix)),
                  onPressed: suffixPressed,
                )
              : null,
          // prefixIcon: Icon (prefix,),
          border: border,
          labelText: labeltext,
        ),
        onTap: onTap,
      ),
    );

Widget myVerticalDivider() => Container(
      width: double.infinity,
      height: 1.0.h,
      color: ColorManger.lighterGray,
    );

Widget myHorizontalDivider({required double height}) => Container(
      width: 1.0.w,
      height: height,
      color: ColorManger.lighterGray,
    );
