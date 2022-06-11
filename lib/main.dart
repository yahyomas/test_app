import 'package:flutter/material.dart';

import 'app/app.locator.dart';
import 'app/app.router.dart';
import 'domain/services/navigation_service.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  setUpLocator();

  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      navigatorKey: NavigationService.navigatorKey,
      onGenerateRoute: StackedRouter().onGenerateRoute,
      builder: (context, child) {
        return MediaQuery(
            data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
            child: child!);
      },
    );
  }
}
