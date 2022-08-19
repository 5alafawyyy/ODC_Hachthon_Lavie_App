import 'package:flutter/material.dart';
import 'package:odc_hackathon_lavie_app/core/utils/app_strings.dart';
import 'package:odc_hackathon_lavie_app/presentation/screens/authentication/forget_password/forget_password_view.dart';
import 'package:odc_hackathon_lavie_app/presentation/screens/authentication/login/login_view.dart';
import 'package:odc_hackathon_lavie_app/presentation/screens/authentication/register/register_view.dart';
import 'package:odc_hackathon_lavie_app/presentation/screens/blog/blog_view.dart';
import 'package:odc_hackathon_lavie_app/presentation/screens/home/home_view.dart';
import 'package:odc_hackathon_lavie_app/presentation/screens/notifications/notification_view.dart';
import 'package:odc_hackathon_lavie_app/presentation/screens/profile/profile_view.dart';
import 'package:odc_hackathon_lavie_app/presentation/screens/qr_code/qr_code_view.dart';
import 'package:odc_hackathon_lavie_app/presentation/screens/splash/splach_view.dart';

class Routes {
  // Splash
  static const String splashRoute = '/';

  // Auth
  static const String loginRoute = '/login';
  static const String registerRoute = '/register';
  static const String forgetPasswordRoute = '/forgetPassword';

  // Main Bottom
  static const String homeRoute = '/home';
  static const String notificationRoute = '/notification';
  static const String profileRoute = '/profile';
  static const String qrCodeScannerRoute = '/qrCodeScanner';
  static const String leaveRoute = '/leave';

  // Main Top
  static const String searchRoute = '/search';
  static const String cartRoute = '/cart';
}

class RouteGenerator {
  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashView());
      case Routes.loginRoute:
        return MaterialPageRoute(builder: (_) => const LoginView());
      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) => const RegisterView());
      case Routes.forgetPasswordRoute:
        return MaterialPageRoute(builder: (_) => const ForgetPasswordView());
      case Routes.homeRoute:
        return MaterialPageRoute(builder: (_) => const HomeView());
      case Routes.notificationRoute:
        return MaterialPageRoute(builder: (_) => const NotificationView());
      case Routes.profileRoute:
        return MaterialPageRoute(builder: (_) => const ProfileView());
      case Routes.qrCodeScannerRoute:
        return MaterialPageRoute(builder: (_) => const QRCodeView());
      case Routes.leaveRoute:
        return MaterialPageRoute(builder: (_) => const BlogView());

      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: const Text(
            AppStrings.noRouteFound,
          ),
        ),
        body: const Center(
          child: Text(
            AppStrings.noRouteFound,
          ),
        ),
      ),
    );
  }
}
