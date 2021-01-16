import 'package:flutter/widgets.dart';
import 'package:medicina/screens/forgot_password/forgot_password_Screen.dart';
import 'package:medicina/screens/login_success/login_success_screen.dart';
import 'package:medicina/screens/sign_in/sign_in_screen.dart';
import 'package:medicina/screens/splash/splash_screen.dart';

// We use name route
// All our routes will be available in here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
};
