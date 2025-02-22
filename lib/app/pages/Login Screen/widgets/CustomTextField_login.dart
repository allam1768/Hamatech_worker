import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomTextFieldLogin extends StatefulWidget {
  final String hintText;
  final String iconPath;
  final bool isPassword;

  const CustomTextFieldLogin({
    super.key,
    required this.hintText,
    required this.iconPath,
    this.isPassword = false,
  });

  @override
  State<CustomTextFieldLogin> createState() => _CustomTextFieldLoginState();
}

class _CustomTextFieldLoginState extends State<CustomTextFieldLogin> {
  bool isObscured = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48.h, // Tinggi box input field (default)
      child: TextField(
        obscureText: widget.isPassword ? isObscured : false,
        style: TextStyle(fontSize: 15.sp, color: Colors.black), // Ukuran teks default
        decoration: InputDecoration(
          hintText: widget.hintText,
          hintStyle: TextStyle(fontSize: 15.sp, color: Colors.grey),
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 12.w),
          prefixIcon: Padding(
            padding: EdgeInsets.all(12.w),
            child: SvgPicture.asset(
              widget.iconPath,
              width: 20.w,
              height: 20.h,
            ),
          ),
          suffixIcon: widget.isPassword
              ? IconButton(
            icon: Icon(
              isObscured ? Icons.visibility_off : Icons.visibility,
              color: Colors.black54,
              size: 20.sp,
            ),
            onPressed: () {
              setState(() {
                isObscured = !isObscured;
              });
            },
          )
              : null,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide: BorderSide(color: Colors.transparent, width: 1.w),
          ),
        ),
      ),
    );
  }
}
