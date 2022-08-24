import 'package:odc_hackathon_lavie_app/core/network/local/cache_helper.dart';

class AppConstants {
  static const int splashDelay = 3;
  static const String accessToken = "accessToken";
  static const String refreshToken = "refreshToken";

  static String? userToken = CacheHelper.get(key: accessToken);
  static String? userRefreshToken = CacheHelper.get(key: refreshToken);
}
