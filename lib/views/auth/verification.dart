import 'package:agrow/exports.dart';
import 'package:pinput/pinput.dart';

class Verification extends StatelessWidget {
  const Verification({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0.w),
          child: Column(
            children: [
              ScreenUtil().setVerticalSpacing(80.0.h),
              Center(child: Assets.icons.agrowIcon.image()),
              ScreenUtil().setVerticalSpacing(24.0.h),
              Text(
                'Welcome to agricultural connection app',
                style: AppTextStyles.mediumBold,
                textAlign: TextAlign.center,
              ),
              ScreenUtil().setVerticalSpacing(40.0.h),
              Text(
                'Enter the OTP you received from',
                style: AppTextStyles.medium,
                textAlign: TextAlign.center,
              ),
              Text(
                '+234 81 76943523',
                style: AppTextStyles.mediumBold.copyWith(
                  color: AppColors.primaryColor,
                ),
              ),
              ScreenUtil().setVerticalSpacing(24.0.h),
              Pinput(
                length: 4,
                defaultPinTheme: PinTheme(
                  height: 64.0.h,
                  width: 55.0.w,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.tertiaryColor.withOpacity(0.3),
                    ),
                    borderRadius: BorderRadius.circular(8.0.r),
                  ),
                ),
              ),
              ScreenUtil().setVerticalSpacing(24.0.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Resend OTP in',
                    style: AppTextStyles.medium,
                  ),
                  ScreenUtil().setHorizontalSpacing(4.0.w),
                  Text(
                    '60',
                    style: AppTextStyles.medium.copyWith(
                      color: AppColors.primaryColor,
                    ),
                  ),
                  ScreenUtil().setHorizontalSpacing(4.0.w),
                  Text(
                    'seconds',
                    style: AppTextStyles.medium,
                  ),
                ],
              ),
              ScreenUtil().setVerticalSpacing(40.0.h),
              AgrowButton(
                width: Get.width,
                onPressed: () {},
                text: 'Submit',
              )
            ],
          ),
        ),
      ),
    );
  }
}
