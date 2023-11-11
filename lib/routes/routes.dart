part of 'screens.dart';

abstract class Routes {
  Routes._();
  static const home = _Paths.home;
  static const onboarding = _Paths.onboarding;
  static const authHome = _Paths.authHome;
}

abstract class _Paths {
  static const home = '/home';
  static const onboarding = '/onboarding';
  static const authHome = '/auth-home';
}
