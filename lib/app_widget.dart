import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pay_flow/models/user_model.dart';
import 'package:pay_flow/modules/barcode_scanner/barcode_scanner_page.dart';
import 'package:pay_flow/modules/home/home_page.dart';
import 'package:pay_flow/modules/insert_boleto/insert_boleto_page.dart';
import 'package:pay_flow/modules/login/login_page.dart';
import 'package:pay_flow/modules/splash/splash_page.dart';
import 'package:pay_flow/shared/auth/auth_controller.dart';
import 'package:pay_flow/shared/themes/app_colors.dart';

class AppWidget extends StatelessWidget {
  AppWidget() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitDown,
      DeviceOrientation.portraitUp,
    ]);
  }
  static late UserModel user;

  @override
  Widget build(BuildContext context) {
    final authController = AuthController();
    authController.getUser(context);

    return MaterialApp(
      title: '',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.orange, primaryColor: AppColors.primary),
      initialRoute: "/splash",
      routes: {
        "/splash": (context) => SplashPage(),
        "/login": (context) => LoginPage(),
        "/home": (context) => HomePage(),
        "/barcode": (context) => BarcodeScannerPage(),
        "/insere_boleto": (context) => InsertBoletoPage(),
      },
    );
  }
}
