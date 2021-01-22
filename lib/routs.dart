import 'package:flutter/widgets.dart';
import 'package:medicina/screens/authentication/auth_screen.dart';
import 'package:medicina/screens/complete_profile/complete_profile_screen.dart';
import 'package:medicina/screens/forgot_password/forgot_password_Screen.dart';
import 'package:medicina/screens/home/home_screen.dart';
import 'package:medicina/screens/login_success/login_success_screen.dart';
import 'package:medicina/screens/otp/otp_screen.dart';
import 'package:medicina/screens/sign_in/sign_in_screen.dart';
import 'package:medicina/screens/sign_up/sign_up_screen.dart';
import 'package:medicina/screens/signup%20success/signup_success_screen.dart';
import 'package:medicina/screens/splash/splash_screen.dart';
import 'package:medicina/screens/upload_image/upload_image_screen.dart';

// We use name route
// All our routes will be available in here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  UploadImageScreen.routeName: (context) => UploadImageScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  SignUpSuccessScreen.routeName: (context) => SignUpSuccessScreen(),
  AuthScreen.routeName: (context) => AuthScreen(),
};
