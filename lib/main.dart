import 'package:flutter/material.dart';
import 'package:odc_hackathon_lavie_app/core/design/theme/theme_data.dart';
import 'package:odc_hackathon_lavie_app/core/network/local/cache_helper.dart';
import 'package:odc_hackathon_lavie_app/core/network/remote/dio_helper.dart';
import 'package:odc_hackathon_lavie_app/core/routes/routes_manager.dart';
import 'package:odc_hackathon_lavie_app/core/utils/app_strings.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //Initialize DioHelper and CashHelper to Run.
  await DioHelper.init();
  await CacheHelper.init();
  runApp(const MyApp());
}



class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: AppStrings.appName,
      initialRoute: Routes.splashRoute,
      onGenerateRoute: RouteGenerator.getRoute,
      theme: getApplicattionThemeData(),
      debugShowCheckedModeBanner: false,
    );
  }
}
