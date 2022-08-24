import 'package:flutter/material.dart';
import 'package:odc_hackathon_lavie_app/core/design/navigation/navigation.dart';
import 'package:odc_hackathon_lavie_app/core/network/local/cache_helper.dart';
import 'package:odc_hackathon_lavie_app/core/routes/routes_manager.dart';
import 'package:odc_hackathon_lavie_app/core/utils/app_constants.dart';
import 'package:odc_hackathon_lavie_app/presentation/components/custom_elevated_button.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(50.0),
          child: CustomElevatedButton(
            onPressed: () async {
              // await CacheHelper.clearData();
              await CacheHelper.removeData(key: AppConstants.accessToken);
              await CacheHelper.removeData(key: AppConstants.refreshToken);
              // ignore: use_build_context_synchronously
              navigatorAndRemove(
                context,
                Routes.authLayoutRoute,
              );
            },
            text: 'LOGOUT',
          ),
        ),
      ),
    );
  }
}
