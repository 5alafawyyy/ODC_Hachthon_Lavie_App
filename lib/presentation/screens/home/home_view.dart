import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odc_hackathon_lavie_app/core/design/assets/assets_manager.dart';
import 'package:odc_hackathon_lavie_app/core/design/colors/color_manager.dart';
import 'package:odc_hackathon_lavie_app/core/design/theme/theme_data.dart';
import 'package:odc_hackathon_lavie_app/core/services/services_locator.dart';
import 'package:odc_hackathon_lavie_app/core/utils/app_strings.dart';
import 'package:odc_hackathon_lavie_app/core/utils/values_manager.dart';
import 'package:odc_hackathon_lavie_app/presentation/components/home/home_filter.dart';
import 'package:odc_hackathon_lavie_app/presentation/controllers/cubit/home_cubit.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<HomeCubit>(),
      child: Scaffold(
        body: SafeArea(
            child: Padding(
          padding: const EdgeInsets.only(
            top: AppPadding.p40C,
            left: AppPadding.p16C,
            right: AppPadding.p16C,
          ),
          child: Column(
            children: [
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(
                    bottom: AppPadding.p30C,
                  ),
                  child: Image.asset(
                    ImageAssets.splashlogo,
                    height: AppSize.s30,
                    width: AppSize.s100,
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: ColorManager.whiteShadow1,
                        borderRadius: BorderRadius.circular(
                          AppSize.s10,
                        ),
                      ),
                      height: AppSize.s43,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: AppPadding.p20C,
                        ),
                        child: Row(children: [
                          Image.asset(
                            IconAssets.search,
                            height: AppSize.s17,
                            width: AppSize.s17,
                            fit: BoxFit.contain,
                            color: ColorManager.gray4,
                          ),
                          const SizedBox(
                            width: AppSize.s14C,
                          ),
                          Text(
                            AppStrings.search,
                            style: getApplicattionThemeData()
                                .textTheme
                                .headlineSmall!
                                .copyWith(
                                  color: ColorManager.gray4,
                                ),
                          ),
                        ]),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: AppSize.s14C,
                  ),
                  SizedBox(
                    height: AppSize.s43,
                    width: AppSize.s51,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                            AppPadding.p10,
                          ),
                        ),
                      ),
                      child: Image.asset(
                        IconAssets.cart,
                        color: ColorManager.white,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: AppSize.s26C,
              ),
              const Expanded(child: HomeFilter()),
            ],
          ),
        )),
      ),
    );
  }
}
