import 'package:advanced/presentation/forgot_password/forgot_password_view.dart';
import 'package:advanced/presentation/login/login_view.dart';
import 'package:advanced/presentation/main/main_view.dart';
import 'package:advanced/presentation/register/register_view.dart';
import 'package:advanced/presentation/resources/string_manager.dart';
import 'package:advanced/presentation/splash/splash_view.dart';
import 'package:advanced/presentation/store_details/store_detailse_view.dart';
import 'package:flutter/material.dart';

class Routs {
  static const String splashRoute = "/";
  static const String loginRoute = "/login";
  static const String registerRoute = "/register";
  static const String forgotPasswordRoute = "/forgotPassword";
  static const String mainRoute = "/main";
  static const String storeDetailsRoute = "/storeDetails";
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routs.splashRoute:
        return MaterialPageRoute(builder: (_) => SplashView());
      case Routs.loginRoute:
        return MaterialPageRoute(builder: (_) => LogInView());
      case Routs.registerRoute:
        return MaterialPageRoute(builder: (_) => RegisterView());
      case Routs.forgotPasswordRoute:
        return MaterialPageRoute(builder: (_) => ForgotPasswordView());
      case Routs.mainRoute:
        return MaterialPageRoute(builder: (_) => MainView());
      case Routs.storeDetailsRoute:
        return MaterialPageRoute(builder: (_) => StoreDetailsView());
      default:
        return unDefinedPage();
    }
  }

  static Route<dynamic> unDefinedPage() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text(AppStrings.notRouteFound),
        ),
        body: const Center(
          child: Text(AppStrings.notRouteFound),
        ),
      ),
    );
  }
}
