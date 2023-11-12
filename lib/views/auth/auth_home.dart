import 'package:agrow/exports.dart';

class AuthHome extends StatefulWidget {
  const AuthHome({super.key});

  @override
  State<AuthHome> createState() => _AuthHomeState();
}

class _AuthHomeState extends State<AuthHome>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  initState() {
    super.initState();
    _tabController = TabController(
      length: 2,
      vsync: this,
    );
  }

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
              overlayColor: MaterialStateProperty.all(
                AppColors.primaryColor.withOpacity(0.1),
              ),
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
                children: const [
                  Login(),
                  Register(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
