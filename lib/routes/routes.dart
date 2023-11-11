part of 'screens.dart';

abstract class Routes {
  Routes._();
  static const home = _Paths.home;
  static const onboarding = _Paths.onboarding;
}

abstract class _Paths {
  static const home = '/home';
  static const onboarding = '/onboarding';
}
