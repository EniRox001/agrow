import 'package:agrow/exports.dart';
import 'package:flutter_animate/flutter_animate.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({super.key});

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  String buttonText = 'Next';
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: PageView(
          controller: controller,
          children: [
            OnboardingSlide(
              image: Assets.images.onboardingOneImage.path,
              titleDark: 'Your No. 1',
              titlePrimary: 'Agro-Tech Platform',
              description:
                  'Experience a different way of growing a healthy crop and selling to best customers!',
            ),
            OnboardingSlide(
              image: Assets.images.onboardingTwoImage.path,
              titleDark: 'Connecting',
              titlePrimary: 'Farmers to Buyers',
              description:
                  'Fostering partnerships and creating mutually beneficial ecosystem in the agricultural industry.',
            ),
            OnboardingSlide(
              image: Assets.images.onboardingThreeImage.path,
              titleDark: 'Nurturing Growth',
              titlePrimary: 'With Captivating Insights',
              description:
                  'Learn how to boost your crop healthy life from exclusive educational resources.',
            ),
          ],
          onPageChanged: (index) {
            if (index == 2) {
              setState(() {
                buttonText = 'Get Started';
              });
            } else {
              setState(() {
                buttonText = 'Next';
              });
            }
          },
        ),
      ),
      bottomNavigationBar: Padding(
        padding: EdgeInsets.fromLTRB(24.0.w, 0, 24.0.w, 48.0.h),
        child: SizedBox(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SmoothPageIndicator(
                controller: controller,
                count: 3,
                effect: ExpandingDotsEffect(
                  dotColor: AppColors.primaryColor.withOpacity(0.5),
                  activeDotColor: AppColors.primaryColor,
                  dotHeight: 8.0.h,
                  dotWidth: 8.0.w,
                  expansionFactor: 4.0,
                  spacing: 8.0.w,
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
              AgrowButton(
                onPressed: () {
                  controller.nextPage(duration: 600.ms, curve: Curves.easeIn);
                },
                width: Get.width,
                text: buttonText,
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
                  )
            ],
          ),
        ),
      ),
    );
  }
}

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
