import 'package:agrow/exports.dart';

void main() {
  runApp(const Agrow());
}

class Agrow extends StatelessWidget {
  const Agrow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          title: Strings.appTitle,
          theme: ThemeData(
            useMaterial3: true,
          ),
          initialRoute: AllPages.initial,
          getPages: AllPages.routes,
        );
      },
    );
  }
}
