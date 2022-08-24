import 'package:flutter/material.dart';
import 'package:odc_hackathon_lavie_app/core/design/colors/color_manager.dart';
import 'package:odc_hackathon_lavie_app/core/utils/app_strings.dart';
import 'package:odc_hackathon_lavie_app/core/utils/values_manager.dart';
import 'package:odc_hackathon_lavie_app/data/models/notifications/dummy.dart';
import 'package:odc_hackathon_lavie_app/presentation/components/notificatios/notification_item.dart';

class NotificationView extends StatelessWidget {
  const NotificationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(AppStrings.notification),
      ),
      body: ListView.separated(
        physics: const BouncingScrollPhysics(),
        itemCount: notificationList.length,
        itemBuilder: ((context, index) {
          return Padding(
            padding: EdgeInsets.only(
              left: AppPadding.p16,
              right: AppPadding.p16,
              top: AppPadding.p16,
            ),
            child: NotificationItem(
              onTap: () {},
              title: notificationList[index].title,
              imageUrl: notificationList[index].imageUrl,
              date: notificationList[index].date,
            ),
          );
        }),
        separatorBuilder: (BuildContext context, int index) {
          return Divider(
            thickness: AppSize.s1,
            color: ColorManager.absoluteLightGrey,
            height: AppMargin.m10,
          );
        },
      ),
    );
  }
}
