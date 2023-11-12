import 'package:agrow/exports.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  bool showSelectAccountUI = false;

  bool rememberMe = false;
  AccountType? accountType;

  void setAccountType(AccountType type) {
    setState(() {
      accountType = type;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        AnimatedOpacity(
          opacity: showSelectAccountUI ? 1.0 : 0.0,
          duration: const Duration(milliseconds: 300),
          child: ListView(
            shrinkWrap: true,
            padding: EdgeInsets.symmetric(horizontal: 24.0.w),
            children: [
              ScreenUtil().setVerticalSpacing(24.0.h),
              const AgrowInputField(
                hintText: 'Username',
              ),
              ScreenUtil().setVerticalSpacing(20.0.h),
              const AgrowInputField(
                hintText: 'Email',
              ),
              ScreenUtil().setVerticalSpacing(20.0.h),
              const AgrowInputField(
                hintText: 'Password',
                suffixIcon: Icons.visibility_off_outlined,
              ),
              ScreenUtil().setVerticalSpacing(20.0.h),
              const AgrowInputField(
                hintText: 'Confirm Password',
                suffixIcon: Icons.visibility_off_outlined,
              ),
              ScreenUtil().setVerticalSpacing(40.0.h),
              AgrowButton(
                text: 'Register',
                onPressed: () {},
              ),
              ScreenUtil().setVerticalSpacing(18.0.h),
              AgrowCheckbox(
                value: rememberMe,
                onChanged: (val) {
                  setState(() {
                    rememberMe = val!;
                  });
                },
              ),
              ScreenUtil().setVerticalSpacing(15.0.h),
              Row(
                children: [
                  Text(
                    'Already have an account?',
                    style: AppTextStyles.regular,
                  ),
                  ScreenUtil().setHorizontalSpacing(8.0.w),
                  Text(
                    'Login',
                    style: AppTextStyles.regular.copyWith(
                      color: AppColors.primaryColor,
                    ),
                  ),
                ],
              ),
              ScreenUtil().setVerticalSpacing(28.0.h),
              const AgrowDivider(text: 'OR'),
              ScreenUtil().setVerticalSpacing(48.0.h),
              AgrowButton(
                onPressed: () {},
                buttonColor: AppColors.transparent,
                isBordered: true,
                borderColor: AppColors.tertiaryColor.withOpacity(0.3),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Assets.icons.googleIcon.image(),
                    ScreenUtil().setHorizontalSpacing(8.0.w),
                    Text(
                      'Login with Google',
                      style: AppTextStyles.regular,
                    ),
                  ],
                ),
              ),
              ScreenUtil().setVerticalSpacing(20.0.h),
              AgrowButton(
                onPressed: () {},
                buttonColor: AppColors.transparent,
                borderColor: AppColors.tertiaryColor.withOpacity(0.3),
                isBordered: true,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Assets.icons.appleIcon.image(),
                    ScreenUtil().setHorizontalSpacing(8.0.w),
                    Text(
                      'Login with Apple',
                      style: AppTextStyles.regular,
                    ),
                  ],
                ),
              ),
              ScreenUtil().setVerticalSpacing(48.0.h),
            ],
          ),
        ),
        Visibility(
          visible: !showSelectAccountUI,
          child: AnimatedOpacity(
            opacity: !showSelectAccountUI ? 1.0 : 0.0,
            duration: const Duration(milliseconds: 300),
            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 24.0.w),
              children: [
                ScreenUtil().setVerticalSpacing(24.0.h),
                Center(
                  child: Text(
                    'Select your account type',
                    style: AppTextStyles.xLargeBold.copyWith(
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
                ScreenUtil().setVerticalSpacing(16.0.h),
                Center(
                  child: Text(
                    'Choose the character if you are a farmer or buyer',
                    style: AppTextStyles.medium,
                    textAlign: TextAlign.center,
                  ),
                ),
                ScreenUtil().setVerticalSpacing(48.0.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AgrowPictureTile(
                      text: 'Farmer',
                      image: Assets.images.farmerImage.path,
                      onPressed: () => setAccountType(AccountType.farmer),
                      borderColor: accountType == AccountType.farmer
                          ? AppColors.primaryColor
                          : null,
                      backgroundColor: accountType == AccountType.farmer
                          ? AppColors.primaryColor.withOpacity(0.1)
                          : null,
                    ),
                    ScreenUtil().setHorizontalSpacing(16.0.w),
                    AgrowPictureTile(
                      text: 'Buyer',
                      image: Assets.images.buyerImage.path,
                      onPressed: () => setAccountType(AccountType.buyer),
                      borderColor: accountType == AccountType.buyer
                          ? AppColors.primaryColor
                          : null,
                      backgroundColor: accountType == AccountType.buyer
                          ? AppColors.primaryColor.withOpacity(0.1)
                          : null,
                    ),
                  ],
                ),
                ScreenUtil().setVerticalSpacing(48.0.h),
                AgrowButton(
                  onPressed: () {
                    setState(() {
                      showSelectAccountUI = true;
                    });
                  },
                  text: 'Continue Registration',
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
