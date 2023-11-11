import 'package:agrow/exports.dart';

class AgrowCheckbox extends StatelessWidget {
  const AgrowCheckbox({
    super.key,
    required this.value,
    required this.onChanged,
  });

  final bool value;
  final Function(bool?) onChanged;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Transform.scale(
          scale: 1.3,
          child: SizedBox(
            height: 24.0.h,
            width: 24.0.w,
            child: Checkbox(
              value: value,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4.0.r),
              ),
              activeColor: AppColors.primaryColor,
              onChanged: onChanged,
            ),
          ),
        ),
        ScreenUtil().setHorizontalSpacing(8.0.w),
        Text(
          'Remember me',
          style: AppTextStyles.regular,
        ),
      ],
    );
  }
}
