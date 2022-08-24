import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odc_hackathon_lavie_app/core/design/assets/assets_manager.dart';
import 'package:odc_hackathon_lavie_app/core/design/colors/color_manager.dart';
import 'package:odc_hackathon_lavie_app/core/design/fonts/font_manager.dart';
import 'package:odc_hackathon_lavie_app/core/design/theme/theme_data.dart';
import 'package:odc_hackathon_lavie_app/core/utils/app_strings.dart';
import 'package:odc_hackathon_lavie_app/core/utils/values_manager.dart';
import 'package:odc_hackathon_lavie_app/presentation/components/home/add_remove_button.dart';
import 'package:odc_hackathon_lavie_app/presentation/controllers/cubit/home_cubit.dart';

class ProductComponent extends StatelessWidget {
  const ProductComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(builder: (context, state) {
      return Stack(
        clipBehavior: Clip.none,
        children: [
          Card(
            clipBehavior: Clip.none,
            elevation: AppSize.s2,
            shadowColor: ColorManager.whiteShadow2,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                10.0,
              ),
            ),
            child: Container(
              height: AppSize.s220,
              width: AppSize.s170,
              decoration: BoxDecoration(
                color: ColorManager.white,
                borderRadius: BorderRadius.circular(
                  AppSize.s10,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      AddRemoveButton(text: AppStrings.minus, onTap: () {}),
                      SizedBox(
                        width: AppSize.s10,
                      ),
                      const Text('1'),
                      SizedBox(
                        width: AppSize.s10,
                      ),
                      AddRemoveButton(text: AppStrings.plus, onTap: () {}),
                    ],
                  ),
                  const Expanded(
                    child: SizedBox(),
                  ),
                  Text(
                    'GARDENIA PLANT',
                    style: getApplicattionThemeData()
                        .textTheme
                        .bodyLarge!
                        .copyWith(
                          color: ColorManager.black,
                        ),
                  ),
                  SizedBox(
                    height: AppSize.s5,
                  ),
                  Text(
                    '70 EGP',
                    style: getApplicattionThemeData()
                        .textTheme
                        .bodyLarge!
                        .copyWith(
                          color: ColorManager.black,
                          fontSize: FontSize.s14,
                        ),
                  ),
                  SizedBox(
                    height: AppSize.s5,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            AppSize.s16,
                          ),
                        ),
                      ),
                      child: const Text(
                        AppStrings.addToCart,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: -120,
            left: 0,
            child: Image.asset(
              ImageAssets.tree,
            ),
          ),
        ],
      );
    });
  }
}
