import 'package:agrow/exports.dart';

class AgrowPictureTile extends StatelessWidget {
  const AgrowPictureTile({
    super.key,
    this.onPressed,
    this.text,
    this.image,
    this.borderColor,
    this.backgroundColor,
  });

  final VoidCallback? onPressed;
  final String? text;
  final String? image;
  final Color? borderColor;
  final Color? backgroundColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        padding: EdgeInsets.all(16.0.sp),
        decoration: BoxDecoration(
          color: backgroundColor ?? AppColors.tertiaryColor.withOpacity(0.03),
          borderRadius: BorderRadius.circular(10.0.r),
          border: Border.all(
            color: borderColor ?? AppColors.transparent,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              text ?? '',
              style: AppTextStyles.xLargeBold.copyWith(
                color: AppColors.primaryColor,
              ),
            ),
            ScreenUtil().setVerticalSpacing(8.0.h),
            Visibility(
              visible: image != null,
              replacement: const SizedBox.shrink(),
              child: Image.asset(
                image ?? '',
                height: 110.h,
                width: 110.w,
              ),
            )
          ],
        ),
      ),
    );
  }
}
