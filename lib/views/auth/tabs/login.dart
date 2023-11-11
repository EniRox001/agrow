import 'package:agrow/exports.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.symmetric(horizontal: 24.0.w),
      children: [
        ScreenUtil().setVerticalSpacing(48.0.h),
        const AgrowInputField(
          hintText: 'Username',
        ),
        ScreenUtil().setVerticalSpacing(20.0.h),
        const AgrowInputField(
          hintText: 'Password',
        ),
        ScreenUtil().setVerticalSpacing(30.0.h),
        AgrowButton(
          text: 'Login',
          onPressed: () {},
        ),
        ScreenUtil().setVerticalSpacing(18.0.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            AgrowCheckbox(
              value: rememberMe,
              onChanged: (val) {
                setState(() {
                  rememberMe = val!;
                });
              },
            ),
            const Spacer(),
            Text(
              'Forgot Password?',
              style: AppTextStyles.regular,
            ),
          ],
        ),
        ScreenUtil().setVerticalSpacing(50.0.h),
        const AgrowDivider(
          text: 'OR',
        ),
        ScreenUtil().setVerticalSpacing(50.0.h),
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
        )
      ],
    );
  }
}
