
import 'package:book_app/core/utils/responsive_util.dart';

import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';


import 'config/routes/app_router.dart';


Future<void> main() async {

  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  // we can create singleton of future instance here
  FlutterNativeSplash.remove();
  final container  = ProviderContainer();
  runApp(UncontrolledProviderScope(container: container, child: MyApp()));

}



class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Responsive.size = MediaQuery.sizeOf(context);
    return MaterialApp.router(
      title: 'Book App',
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.routers,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
    );
  }
}
