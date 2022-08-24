import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:odc_hackathon_lavie_app/core/design/assets/assets_manager.dart';
import 'package:odc_hackathon_lavie_app/core/design/colors/color_manager.dart';
import 'package:odc_hackathon_lavie_app/core/services/services_locator.dart';
import 'package:odc_hackathon_lavie_app/core/utils/values_manager.dart';
import 'package:odc_hackathon_lavie_app/presentation/components/authentication/auth_navigation.dart';
import 'package:odc_hackathon_lavie_app/presentation/controllers/auth/auth_layout_cubit/auth_cubit.dart';
import 'package:odc_hackathon_lavie_app/presentation/controllers/auth/login_cubit/login_cubit.dart';
import 'package:odc_hackathon_lavie_app/presentation/controllers/auth/signup_cubit/signup_cubit.dart';

class AuthLayoutView extends StatelessWidget {
  const AuthLayoutView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => sl<AuthCubit>(),
        ),
        BlocProvider(
          create: (context) => sl<LoginCubit>(),
        ),
        BlocProvider(
          create: (context) => sl<SignupCubit>(),
        ),
      ],
      child: Scaffold(
          backgroundColor: ColorManager.white,
          body: BlocBuilder<SignupCubit, SignupState>(
            builder: (context, state1) {
              return BlocBuilder<LoginCubit, LoginState>(
                builder: (context, state) {
                  return ModalProgressHUD(
                    inAsyncCall: state is LoginLoadingState
                        ? true
                        : (state1 is SignupLoadingState ? true : false),
                    progressIndicator: const CircularProgressIndicator(
                        color: ColorManager.primary),
                    child: Stack(
                      clipBehavior: Clip.none,
                      fit: StackFit.expand,
                      children: [
                        Padding(
                          padding:
                              EdgeInsets.symmetric(horizontal: AppPadding.p20),
                          child: Column(
                            children: [
                              SizedBox(
                                height: AppMargin.m150,
                              ),
                              Image.asset(
                                ImageAssets.splashlogo,
                              ),
                              SizedBox(
                                height: AppMargin.m20,
                              ),
                              const AuthNavigation()
                            ],
                          ),
                        ),
                        Positioned(
                          top: AppPadding.p10Minus,
                          right: AppPadding.p10Minus,
                          child: Image.asset(
                            ImageAssets.authEdge,
                            color: ColorManager.primary,
                          ),
                        ),
                        Positioned(
                          bottom: AppPadding.p55Minus,
                          left: AppPadding.p5,
                          child: RotatedBox(
                            quarterTurns: AppPadding.p130Minus,
                            child: Image.asset(
                              ImageAssets.authEdge,
                              color: ColorManager.primary,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              );
            },
          )),
    );
  }
}
