import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odc_hackathon_lavie_app/core/design/assets/assets_manager.dart';
import 'package:odc_hackathon_lavie_app/core/design/colors/color_manager.dart';
import 'package:odc_hackathon_lavie_app/core/utils/values_manager.dart';
import 'package:odc_hackathon_lavie_app/presentation/controllers/layout_cubit/layout_cubit.dart';
import 'package:odc_hackathon_lavie_app/presentation/controllers/layout_cubit/layout_state.dart';

class CustomBottomNav extends StatelessWidget {
  const CustomBottomNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LayoutCubit, LayoutState>(
      builder: (context, state) {
        return SafeArea(
          child: CurvedNavigationBar(
            index: 2,
            height: AppSize.s64,
            items: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(
                  IconAssets.blogIcon,
                  color: BlocProvider.of<LayoutCubit>(context).currentIndex == 0
                      ? ColorManager.white
                      : ColorManager.black,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(
                  IconAssets.qrCodeScanIcon,
                  color: BlocProvider.of<LayoutCubit>(context).currentIndex == 1
                      ? ColorManager.white
                      : ColorManager.black,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  IconAssets.homeIcon,
                  color: BlocProvider.of<LayoutCubit>(context).currentIndex == 2
                      ? ColorManager.white
                      : ColorManager.black,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(
                  IconAssets.notificationIcon,
                  color: BlocProvider.of<LayoutCubit>(context).currentIndex == 3
                      ? ColorManager.white
                      : ColorManager.black,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Image.asset(
                  IconAssets.profileIcon,
                  color: BlocProvider.of<LayoutCubit>(context).currentIndex == 4
                      ? ColorManager.white
                      : ColorManager.black,
                ),
              ),
            ],
            color: ColorManager.whiteShadow2,
            buttonBackgroundColor: ColorManager.primary,
            backgroundColor: ColorManager.white,
            animationCurve: Curves.easeInOut,
            animationDuration: const Duration(milliseconds: AppSize.s250C),
            onTap: (index) {
              BlocProvider.of<LayoutCubit>(context)
                  .bottomNavigationIndexChanged(index);
            },
            letIndexChange: (index) => true,
          ),
        );
      },
    );
  }
}
