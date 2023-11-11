import 'package:agrow/exports.dart';

part 'routes.dart';

class AllPages {
  AllPages._();
  static const initial = Routes.onboarding;
  static List<GetPage> routes = [
    GetPage(
      name: Routes.onboarding,
      page: () => const Onboarding(),
    ),
  ];
}
