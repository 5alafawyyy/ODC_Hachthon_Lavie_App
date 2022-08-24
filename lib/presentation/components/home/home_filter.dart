import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odc_hackathon_lavie_app/core/utils/app_strings.dart';
import 'package:odc_hackathon_lavie_app/core/utils/values_manager.dart';
import 'package:odc_hackathon_lavie_app/presentation/components/home/product_component.dart';
import 'package:odc_hackathon_lavie_app/presentation/components/home/custom_text_button.dart';
import 'package:odc_hackathon_lavie_app/presentation/controllers/cubit/home_cubit.dart';

class HomeFilter extends StatelessWidget {
  const HomeFilter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      bloc: HomeCubit()
      // ..allProduct()
      // ..plants()
      // ..seeds()
      // ..tools()
      ,
      builder: (context, state) {
        return Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomTextButton(
                  filterName: AppStrings.all,
                  onPressed: () {
                    BlocProvider.of<HomeCubit>(context).button1();
                  },
                  isActive:
                      BlocProvider.of<HomeCubit>(context).filterButtons[0],
                ),
                CustomTextButton(
                  filterName: AppStrings.plants,
                  onPressed: () {
                    BlocProvider.of<HomeCubit>(context).button2();
                  },
                  isActive:
                      BlocProvider.of<HomeCubit>(context).filterButtons[1],
                ),
                CustomTextButton(
                  filterName: AppStrings.seeds,
                  onPressed: () {
                    BlocProvider.of<HomeCubit>(context).button3();
                  },
                  isActive:
                      BlocProvider.of<HomeCubit>(context).filterButtons[2],
                ),
                CustomTextButton(
                  filterName: AppStrings.tools,
                  onPressed: () {
                    BlocProvider.of<HomeCubit>(context).button4();
                  },
                  isActive:
                      BlocProvider.of<HomeCubit>(context).filterButtons[3],
                ),
              ],
            ),
            SizedBox(
              height: AppSize.s130,
            ),
            Expanded(
              child: GridView.builder(
                clipBehavior: Clip.none,
                itemCount: 20,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: AppSize.s120,
                ),
                itemBuilder: ((context, index) {
                  return const ProductComponent();
                }),
              ),
            ),
          ],
        );
      },
    );
  }
}
