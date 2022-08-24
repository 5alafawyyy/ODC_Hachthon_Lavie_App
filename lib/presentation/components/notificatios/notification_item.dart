import 'package:flutter/material.dart';
import 'package:odc_hackathon_lavie_app/core/design/colors/color_manager.dart';
import 'package:odc_hackathon_lavie_app/core/design/fonts/font_manager.dart';
import 'package:odc_hackathon_lavie_app/core/design/theme/theme_data.dart';
import 'package:odc_hackathon_lavie_app/core/utils/values_manager.dart';

class NotificationItem extends StatelessWidget {
  final VoidCallback onTap;
  final String imageUrl;
  final String title;
  final String date;

  const NotificationItem({
    Key? key,
    required this.onTap,
    required this.imageUrl,
    required this.title,
    required this.date,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(
          bottom: AppMargin.m10,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Image Section
            Container(
              width: AppSize.s30,
              height: AppSize.s30,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: ColorManager.white,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    imageUrl,
                  ),
                ),
              ),
            ),

            // Text Container
            Expanded(
              child: Container(
                // height: AppSize.s63,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(AppSize.s20),
                      bottomRight: Radius.circular(AppSize.s20)),
                  color: ColorManager.white,
                ),
                child: Padding(
                  padding: EdgeInsets.only(
                    left: AppPadding.p20,
                    right: AppPadding.p10,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        title,
                        style: getApplicattionThemeData()
                            .textTheme
                            .bodyMedium!
                            .copyWith(
                              fontSize: FontSize.s14,
                              fontWeight: FontWeightManager.bold,
                            ),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                      SizedBox(
                        height: AppSize.s5,
                      ),
                      Text(
                        date,
                        maxLines: 2,
                        style: getApplicattionThemeData()
                            .textTheme
                            .labelLarge!
                            .copyWith(
                              fontSize: FontSize.s14,
                            ),
                      ),
                      SizedBox(
                        height: AppSize.s5,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
