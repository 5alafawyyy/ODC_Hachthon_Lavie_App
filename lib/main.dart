import 'package:flutter/material.dart';
import 'package:odc_hackathon_lavie_app/core/design/theme/theme_data.dart';
import 'package:odc_hackathon_lavie_app/core/routes/routes_manager.dart';
import 'package:odc_hackathon_lavie_app/core/utils/app_strings.dart';

void main() {
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
