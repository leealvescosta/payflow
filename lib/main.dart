import 'package:flutter/material.dart';
import 'package:pay_flow/modules/login/login_page.dart';
import 'package:pay_flow/shared/themes/app_colors.dart';

void main() {
  runApp(AppFirebase());
}

class AppFirebase extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primaryColor: AppColors.primary),
      home: LoginPage(),
    );
  }
}
