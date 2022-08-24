import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odc_hackathon_lavie_app/core/network/error/dio_exception.dart';
import 'package:odc_hackathon_lavie_app/core/network/remote/api_constance.dart';
import 'package:odc_hackathon_lavie_app/core/network/remote/dio_helper.dart';
import 'package:odc_hackathon_lavie_app/core/utils/app_constants.dart';
import 'package:odc_hackathon_lavie_app/data/models/shared_model.dart';

part 'home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitialState());

  SharedProductsModel? productsModel;
  SharedPlantsModel? plantModel;
  SharedToolsModel? toolModel;
  SharedSeedsModel? seedModel;

  String errorMessage = '';

  void allProduct() async {
    try {
      emit(HomeLoadingState());
      final List<dynamic>? response = await DioHelper.getData(
              url: ApiConstance.productsUrl, token: AppConstants.userToken)
          .then((value) {
        productsModel = SharedProductsModel.fromJson(value.data);

        print('====================SUCCESS=========================');
        print('=========Product Data===========');
        print(productsModel!.product);
        print('=====================================================');

        emit(HomeSuccessState(productsModel!));
      });
    } on DioError catch (e) {
      errorMessage = DioExceptions.fromDioError(e).toString();
      print('=========DIO FALIURE===========');
      print(errorMessage);
      print('=========================');
      emit(HomeFailureState(errorMessage));

      throw errorMessage;
    } catch (e) {
      errorMessage = e.toString();

      print('========= CATCH FALIURE===========');
      print(errorMessage);
      print('=========================');
      emit(HomeFailureState(errorMessage));

      throw errorMessage;
    }
  }

  void plants() async {
    try {
      emit(HomeLoadingState());
      final response = await DioHelper.getData(
              url: ApiConstance.plantsUrl, token: AppConstants.userToken)
          .then((value) {
        plantModel = SharedPlantsModel.fromJson(value.data);

        print('====================SUCCESS=========================');
        print('=========Plants Data===========');
        print(plantModel!.plant);
        print('=====================================================');

        emit(HomeSuccessState(productsModel!));
      });
    } on DioError catch (e) {
      errorMessage = DioExceptions.fromDioError(e).toString();
      print('=========DIO FALIURE===========');
      print(errorMessage);
      print('=========================');
      emit(HomeFailureState(errorMessage));

      throw errorMessage;
    } catch (e) {
      errorMessage = e.toString();

      print('========= CATCH FALIURE===========');
      print(errorMessage);
      print('=========================');
      emit(HomeFailureState(errorMessage));

      throw errorMessage;
    }
  }

  void tools() async {
    try {
      emit(HomeLoadingState());
      final response = await DioHelper.getData(
              url: ApiConstance.toolsUrl, token: AppConstants.userToken)
          .then((value) {
        toolModel = SharedToolsModel.fromJson(value.data);

        print('====================SUCCESS=========================');
        print('=========Tools Data===========');
        print(toolModel!.tool);
        print('=====================================================');

        emit(HomeSuccessState(productsModel!));
      });
    } on DioError catch (e) {
      errorMessage = DioExceptions.fromDioError(e).toString();
      print('=========DIO FALIURE===========');
      print(errorMessage);
      print('=========================');
      emit(HomeFailureState(errorMessage));

      throw errorMessage;
    } catch (e) {
      errorMessage = e.toString();

      print('========= CATCH FALIURE===========');
      print(errorMessage);
      print('=========================');
      emit(HomeFailureState(errorMessage));

      throw errorMessage;
    }
  }

  void seeds() async {
    try {
      emit(HomeLoadingState());
      final response = await DioHelper.getData(
              url: ApiConstance.seedsUrl, token: AppConstants.userToken)
          .then((value) {
        seedModel = SharedSeedsModel.fromJson(value.data);

        print('====================SUCCESS=========================');
        print('=========Seeds Data===========');
        print(seedModel!.seed);
        print('=====================================================');

        emit(HomeSuccessState(productsModel!));
      });
    } on DioError catch (e) {
      errorMessage = DioExceptions.fromDioError(e).toString();
      print('=========DIO FALIURE===========');
      print(errorMessage);
      print('=========================');
      emit(HomeFailureState(errorMessage));

      throw errorMessage;
    } catch (e) {
      errorMessage = e.toString();

      print('========= CATCH FALIURE===========');
      print(errorMessage);
      print('=========================');
      emit(HomeFailureState(errorMessage));

      throw errorMessage;
    }
  }

  List<bool> filterButtons = [
    true,
    false,
    false,
    false,
  ];

  void button1() {
    filterButtons = [
      true,
      false,
      false,
      false,
    ];
  }

  void button2() {
    filterButtons = [
      false,
      true,
      false,
      false,
    ];
  }

  void button3() {
    filterButtons = [
      false,
      false,
      true,
      false,
    ];
  }

  void button4() {
    filterButtons = [
      false,
      false,
      false,
      true,
    ];
  }
}
