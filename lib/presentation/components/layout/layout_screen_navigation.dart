import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odc_hackathon_lavie_app/presentation/controllers/layout_cubit/layout_cubit.dart';
import 'package:odc_hackathon_lavie_app/presentation/controllers/layout_cubit/layout_state.dart';
import 'package:odc_hackathon_lavie_app/presentation/controllers/qr_code_cubit/qr_code_cubit.dart';

class CustomBody extends StatelessWidget {
  const CustomBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LayoutCubit, LayoutState>(
      builder: ((context, state) {
        if (state is BlogScreenState) {
          return BlocProvider.of<LayoutCubit>(context).screens[0];
        } else if (state is QRCodeScreenState) {
          // BlocProvider.of<QrCodeCubit>(context).scanQR();
          return BlocProvider.of<LayoutCubit>(context).screens[1];
        } else if (state is NotificationScreenState) {
          return BlocProvider.of<LayoutCubit>(context).screens[3];
        } else if (state is ProfileScreenState) {
          return BlocProvider.of<LayoutCubit>(context).screens[4];
        } else {
          return BlocProvider.of<LayoutCubit>(context).screens[2];
        }
      }),
    );
  }
}
