import 'package:add_members_app/core/theme/theme.dart';
import 'package:add_members_app/view/login_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  // WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: AppTheme.darkThemeMode,
      home: const LoginPage(),
    );
  }
}
