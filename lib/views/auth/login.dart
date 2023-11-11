import 'package:agrow/exports.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  initState() {
    super.initState();
    _tabController = TabController(
      length: 2,
      vsync: this,
    );
  }

  bool rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            TabBar(
              padding: EdgeInsets.symmetric(horizontal: 24.0.w),
              indicatorSize: TabBarIndicatorSize.tab,
              indicatorColor: AppColors.primaryColor,
              labelStyle: AppTextStyles.medium,
              labelColor: AppColors.primaryColor,
              unselectedLabelColor: AppColors.tertiaryColor,
              controller: _tabController,
              tabs: const [
                Tab(
                  text: 'Login',
                ),
                Tab(
                  text: 'Sign Up',
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  ListView(
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
                  ),
                  const Center(
                    child: Text('Sign Up'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

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
