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

  void bottomNavigationIndexChanged(int index) {
    currentIndex = index;

    if (currentIndex == 0) {
      emit(BlogScreenState());
    } else if (currentIndex == 1) {
      emit(QRCodeScreenState());
    } else if (currentIndex == 3) {
      emit(NotificationScreenState());
    } else if (currentIndex == 4) {
      emit(ProfileScreenState());
    } else {
      emit(HomeScreenState());
    }
  }

  void myscreen() {
    print(screens[currentIndex]);
  }
}
