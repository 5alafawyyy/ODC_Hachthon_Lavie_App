import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:odc_hackathon_lavie_app/core/design/colors/color_manager.dart';
import 'package:odc_hackathon_lavie_app/core/design/theme/theme_data.dart';
import 'package:odc_hackathon_lavie_app/core/network/local/cache_helper.dart';
import 'package:odc_hackathon_lavie_app/core/network/remote/dio_helper.dart';
import 'package:odc_hackathon_lavie_app/core/routes/routes_manager.dart';
import 'package:odc_hackathon_lavie_app/core/services/services_locator.dart';
import 'package:odc_hackathon_lavie_app/core/utils/app_strings.dart';
import 'package:odc_hackathon_lavie_app/presentation/controllers/observer.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  //Initialize DioHelper and CashHelper to Run.
  await DioHelper.init();
  await CacheHelper.init();
  await ScreenUtil.ensureScreenSize();
  ServicesLocator().init();
  Bloc.observer = MyObserver();
  runApp(const MyApp());

  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: ColorManager.transparent,
      statusBarIconBrightness: Brightness.light,
    ),
  );
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual,
      overlays: [SystemUiOverlay.top]);
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
          designSize: const Size(360, 690),
          minTextAdapt: true,
          splitScreenMode: true,
          builder: (BuildContext context, Widget? child) {
            return MaterialApp(
              title: AppStrings.appName,
              initialRoute: Routes.splashRoute,
              onGenerateRoute: RouteGenerator.getRoute,
              theme: getApplicattionThemeData(),
              debugShowCheckedModeBanner: false,
            );
          }
    );
  }
}
