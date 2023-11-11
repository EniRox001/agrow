import 'package:agrow/exports.dart';

class OnboardingSlide extends StatelessWidget {
  const OnboardingSlide({
    super.key,
    required this.image,
    required this.titleDark,
    required this.titlePrimary,
    required this.description,
  });

  final String image;
  final String titleDark;
  final String titlePrimary;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.0.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            image,
            height: 363.h,
            width: 335.w,
          )
              .animate()
              .fadeIn(
                duration: 900.ms,
              )
              .slideY(
                begin: 0.4,
                end: 0,
                curve: Curves.easeIn,
              ),
          ScreenUtil().setVerticalSpacing(24.0.h),
          Text(
            titleDark,
            style: AppTextStyles.xxxLargeBold,
          )
              .animate()
              .fadeIn(
                duration: 600.ms,
                delay: 1000.ms,
              )
              .slideY(
                begin: 0.2,
                end: 0,
                curve: Curves.easeIn,
              ),
          Text(
            titlePrimary,
            style: AppTextStyles.xxxLargeBold.copyWith(
              color: AppColors.primaryColor,
            ),
          )
              .animate()
              .fadeIn(
                duration: 600.ms,
                delay: 1000.ms,
              )
              .slideY(
                begin: 0.2,
                end: 0,
                curve: Curves.easeIn,
              ),
          ScreenUtil().setVerticalSpacing(24.0.h),
          Text(
            description,
            style: AppTextStyles.medium,
            textAlign: TextAlign.center,
          )
              .animate()
              .fadeIn(
                duration: 600.ms,
                delay: 1000.ms,
              )
              .slideY(
                begin: 0.2,
                end: 0,
                curve: Curves.easeIn,
              ),
        ],
      ),
    );
  }
}
