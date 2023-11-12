import 'package:agrow/exports.dart';

class AgrowInputField extends StatelessWidget {
  const AgrowInputField({
    super.key,
    this.controller,
    this.hintText,
    this.obscureText,
    this.onSuffixIconPressed,
    this.suffixIcon,
  });

  final TextEditingController? controller;
  final String? hintText;
  final bool? obscureText;
  final VoidCallback? onSuffixIconPressed;
  final IconData? suffixIcon;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText ?? false,
      controller: controller,
      cursorColor: AppColors.primaryColor,
      decoration: InputDecoration(
        suffixIcon: suffixIcon != null
            ? IconButton(
                onPressed: onSuffixIconPressed,
                icon: Icon(
                  suffixIcon,
                  color: AppColors.tertiaryColor.withOpacity(0.3),
                ),
              )
            : null,
        contentPadding:
            EdgeInsets.symmetric(horizontal: 24.0.w, vertical: 16.0.h),
        hintText: hintText,
        hintStyle: AppTextStyles.regular.copyWith(
          color: AppColors.tertiaryColor.withOpacity(0.3),
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0.r),
          borderSide: BorderSide(
            color: AppColors.tertiaryColor.withOpacity(0.3),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0.r),
          borderSide: BorderSide(
            color: AppColors.tertiaryColor.withOpacity(0.3),
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0.r),
          borderSide: const BorderSide(
            color: AppColors.primaryColor,
          ),
        ),
      ),
    );
  }
}
