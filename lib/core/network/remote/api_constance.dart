class ApiConstance {
  static const String baseUrl =
      'https://lavie.orangedigitalcenteregypt.com/api/v1';

  //Dio Headers
  static const String contentType = 'Content-Type';
  static const String applicationJson = 'application/json';
  static const String accept = 'Accept';
  static const String authorization = 'Authorization';
  static const String defaultLanguage = 'lang';
  static const String en = 'en';

  // Authentication Urls
  static const String baseAuthUrl = '/auth';
  static const String googleUrl = '$baseAuthUrl/google';
  static const String facebookUrl = '$baseAuthUrl/facebook';
  static const String signinUrl = '$baseAuthUrl/signin';
  static const String signupUrl = '$baseAuthUrl/signup';
  static const String forgetPasswordUrl = '$baseAuthUrl/forget-password';
  static const String verifyOtpUrl = '$baseAuthUrl/verify-otp';
  static const String resetPasswordUrl = '$baseAuthUrl/reset-password';

  // Products Urls
  static const String productsUrl = '/products';
  static const String productsFiltersUrl = '$productsUrl/filters';
  static const String productsBlogsUrl = '$productsUrl/blogs';
  static String productsBlogsUrWithlIdUrl(String id) =>
      '$productsUrl/blogs/{id}?id=$id';
  static String productsWithProductIdUrl(String id) =>
      '$productsUrl/blogs/{productId}?productId=$id';
  static String productsBuy = '$productsUrl/buy';

  // Plants Urls
  static const String plantsUrl = '/plants';
  static String plantsWithPlantIdUrl(String id) =>
      '$plantsUrl/{plantId}?plantId=$id';

  // Seeds Urls
  static const String seedsUrl = '/seeds';
  static String seedsWithSeedIdUrl(String id) =>
      '$seedsUrl/{seedId}?seedId=$id';

  // Tools Urls
  static const String toolsUrl = '/tools';
  static String toolsWithToolIdUrl(String id) =>
      '$toolsUrl/{toolid}?toolId=$id';

  // User Urls
  static const String userUrl = '/user/me';
  static const String claimFreeSeedsUrl = '$userUrl/claimFreeSeeds';
  static String recieptsWithRecieptId(String id) =>
      '/user/reciepts/{recieptId}?recieptId=$id';

  // Forums Urls
  static String forumsSearchByTitleUrl(String title) =>
      '/forums?search=$title';
  static const String forumMeUrl = '/forums/me';
}
