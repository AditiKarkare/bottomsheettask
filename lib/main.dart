import 'package:fe_test/features/homeScreen/controller/homeScreen_controller.dart';
import 'package:fe_test/features/homeScreen/view/home_navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => HomeScreenController()),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(393, 870),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'CAR BX',
        theme: ThemeData(
          primaryColor: Color(0xff345BA5),
          colorScheme: ColorScheme.fromSeed(
              seedColor: Colors.deepPurple, primary: Color(0xff345BA5)),
          useMaterial3: false,
        ),
        home: const HomeNavigationPage(),
      ),
    );
  }
}
