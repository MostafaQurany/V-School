import 'package:flutter/material.dart';
import 'package:v_school/core/theme/app_colors.dart';

class CustomTextFormField extends StatefulWidget {
  final String hintText;
  final Widget? suffixWidget;

  final TextInputType? keyboardType;
  final TextInputAction? textInputAction;
  final TextEditingController controller;
  final bool isObscureText;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onEditingComplete;
  final String? Function(String?)? validator;
  const CustomTextFormField({
    super.key,
    required this.hintText,
    this.keyboardType,
    this.textInputAction,
    required this.controller,
    this.isObscureText = false,
    this.onChanged,
    this.onEditingComplete,
    this.validator,
    this.suffixWidget,
  });

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: widget.keyboardType,
      textInputAction: widget.textInputAction,
      validator: widget.validator,
      controller: widget.controller,
      obscureText: widget.isObscureText,
      onChanged: widget.onChanged,
      onEditingComplete: widget.onEditingComplete,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: Theme.of(context)
            .textTheme
            .bodyMedium!
            .copyWith(color: AppColors.secondary),
        suffixIcon: widget.suffixWidget,
      ),
    );
  }
}
