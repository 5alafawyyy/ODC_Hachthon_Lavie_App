import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odc_hackathon_lavie_app/core/design/assets/assets_manager.dart';
import 'package:odc_hackathon_lavie_app/core/design/colors/color_manager.dart';
import 'package:odc_hackathon_lavie_app/core/utils/values_manager.dart';
import 'package:odc_hackathon_lavie_app/presentation/controllers/layout_cubit/layout_cubit.dart';
import 'package:odc_hackathon_lavie_app/presentation/controllers/layout_cubit/layout_state.dart';

class CustomBottomNav extends StatelessWidget {
  CustomBottomNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LayoutCubit, LayoutState>(
      builder: (context, state) {
        return SafeArea(
          child: CurvedNavigationBar(
            index: 2,
            height: AppSize.s64,
            items: iconList,
            color: ColorManager.whiteShadow2,
            buttonBackgroundColor: ColorManager.primary,
            backgroundColor: ColorManager.white,
            animationCurve: Curves.easeInOut,
            animationDuration: const Duration(milliseconds: AppSize.s250),
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

  final List<Widget> iconList = [
    Padding(
        padding: const EdgeInsets.all(10.0),
        child: Image.asset(IconAssets.blogIcon)),
    Padding(
        padding: const EdgeInsets.all(10.0),
        child: Image.asset(IconAssets.qrCodeScanIcon)),
    Padding(
      padding: const EdgeInsets.all(8.0),
      child: Image.asset(
        IconAssets.homeIcon,
        color: ColorManager.white,
      ),
    ),
    Padding(
        padding: const EdgeInsets.all(10.0),
        child: Image.asset(IconAssets.notificationIcon)),
    Padding(
        padding: const EdgeInsets.all(10.0),
        child: Image.asset(IconAssets.profileIcon)),
  ];
}
