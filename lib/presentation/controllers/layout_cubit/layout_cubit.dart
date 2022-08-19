import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odc_hackathon_lavie_app/presentation/controllers/layout_cubit/layout_state.dart';
import 'package:odc_hackathon_lavie_app/presentation/screens/blog/blog_view.dart';
import 'package:odc_hackathon_lavie_app/presentation/screens/home/home_view.dart';
import 'package:odc_hackathon_lavie_app/presentation/screens/notifications/notification_view.dart';
import 'package:odc_hackathon_lavie_app/presentation/screens/profile/profile_view.dart';
import 'package:odc_hackathon_lavie_app/presentation/screens/qr_code/qr_code_view.dart';

class LayoutCubit extends Cubit<LayoutState> {
  LayoutCubit() : super(LayoutInitialState());

  static LayoutCubit get(context) => BlocProvider.of(context);

  List<Widget> screens = const [
    BlogView(),
    QRCodeView(),
    HomeView(),
    NotificationView(),
    ProfileView(),
  ];

  int currentIndex = 2;

  void changeScreen(int index) {
    currentIndex = index;
    emit(ChangeScreenState(index));
  }
}
