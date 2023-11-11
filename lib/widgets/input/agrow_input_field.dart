import 'package:agrow/exports.dart';

class AgrowInputField extends StatelessWidget {
  const AgrowInputField({
    super.key,
    this.controller,
    this.hintText,
  });

  final TextEditingController? controller;
  final String? hintText;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      cursorColor: AppColors.primaryColor,
      decoration: InputDecoration(
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
