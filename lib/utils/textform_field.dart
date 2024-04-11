import 'package:flutter/material.dart';
import 'package:gradient_borders/gradient_borders.dart';
import 'package:poll_creation_app/utils/text_style.dart';
import 'package:poll_creation_app/utils/utils.dart';


class CustomTextFormField extends StatelessWidget {
  final String hintTxt;
  final int? maxLines;
  final String? caption;
  final TextEditingController? controller;
  final String Function(String?)? validator;
  const CustomTextFormField({
    super.key,
    required this.hintTxt,
    this.maxLines,
    this.validator,  this.caption,
    this.controller,
  }
  );

  @override
  Widget build(BuildContext context) {
    return Column(
     crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         kHeight20,
        CustomText(text: caption! ,color: kwhite,fs: 16,),
         kHeight20,
        TextFormField(
          validator: validator,
          maxLines: maxLines,
          controller: controller,
          
           decoration: InputDecoration(
            hintText: hintTxt,
            hintStyle: TextStyle(color: darkGrey),
                      border: GradientOutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                      gradient:LinearGradient(
                      begin: Alignment.bottomCenter,
                      end: Alignment.topCenter,
                      colors: const [kLightGrey,kblack87]))),
        ),
      
      ],
    );
  }
}