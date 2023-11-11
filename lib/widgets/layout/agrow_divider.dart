import 'package:agrow/exports.dart';

class AgrowDivider extends StatelessWidget {
  const AgrowDivider({
    super.key,
    required this.text,
  });

  final String text;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: 2.0.h,
            color: AppColors.tertiaryColor.withOpacity(0.2),
          ),
        ),
        ScreenUtil().setHorizontalSpacing(8.0.w),
        Text(
          text,
          style: AppTextStyles.regular.copyWith(
            color: AppColors.primaryColor,
          ),
        ),
        ScreenUtil().setHorizontalSpacing(8.0.w),
        Expanded(
          child: Container(
            height: 2.0.h,
            color: AppColors.tertiaryColor.withOpacity(0.2),
          ),
        ),
      ],
    );
  }
}
