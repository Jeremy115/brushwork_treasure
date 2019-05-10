import 'package:brushwork_treasure/src/comportants/tab_navigator.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  // MyApp() {
  //   final router = new Router();
  //   Routes.configureRoutes(router);
  //   Application.router = router;
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: TabNavigator()
    );
  }
}
