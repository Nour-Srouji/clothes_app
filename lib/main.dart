import 'package:clothes_app/users/uthentication/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
  // WidgetsFlutterBinding.ensureInitialized();
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Clothes App',
        home: FutureBuilder(
          future: null,
          builder: (context, datasnapshot) {
            return LoginScreen();
          },
        )
        // FutureBuilder(
        //   future: null,
        //   builder: (context, snapshot)
        //   {
        //
        //   }
        // )
        );
  }
}
