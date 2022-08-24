import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:odc_hackathon_lavie_app/core/network/remote/network_info.dart';
import 'package:odc_hackathon_lavie_app/data/datasource/auth_remote_data_source.dart';
import 'package:odc_hackathon_lavie_app/data/datasource/products_remote_data_source.dart';
import 'package:odc_hackathon_lavie_app/data/repository/auth_repository.dart';
import 'package:odc_hackathon_lavie_app/data/repository/product_repository.dart';
import 'package:odc_hackathon_lavie_app/domain/repository/base_auth_repository.dart';
import 'package:odc_hackathon_lavie_app/domain/repository/base_products_repository.dart';
import 'package:odc_hackathon_lavie_app/domain/usecases/get_all_product_usecase.dart';
import 'package:odc_hackathon_lavie_app/domain/usecases/get_auth_usecase.dart';
import 'package:odc_hackathon_lavie_app/domain/usecases/get_plants_usecase.dart';
import 'package:odc_hackathon_lavie_app/domain/usecases/get_seeds_usecase.dart';
import 'package:odc_hackathon_lavie_app/domain/usecases/get_tools_usecase.dart';
import 'package:odc_hackathon_lavie_app/presentation/controllers/auth/auth_layout_cubit/auth_cubit.dart';
import 'package:odc_hackathon_lavie_app/presentation/controllers/auth/login_cubit/login_cubit.dart';
import 'package:odc_hackathon_lavie_app/presentation/controllers/auth/signup_cubit/signup_cubit.dart';
import 'package:odc_hackathon_lavie_app/presentation/controllers/cubit/home_cubit.dart';
import 'package:odc_hackathon_lavie_app/presentation/controllers/layout_cubit/layout_cubit.dart';
import 'package:odc_hackathon_lavie_app/presentation/controllers/qr_code_cubit/qr_code_cubit.dart';

final sl = GetIt.instance;

class ServicesLocator {
  void init() {
    // BloC
    sl.registerFactory(() => AuthCubit());
    sl.registerFactory(() => LayoutCubit());
    sl.registerFactory(() => LoginCubit(sl(), sl()));
    sl.registerFactory(() => SignupCubit());
    sl.registerFactory(() => QrCodeCubit());
    sl.registerFactory(() => HomeCubit());
    // sl.registerFactory(() => HomeBloc(
    //       sl(),
    //       sl(),
    //       sl(),
    //       sl(),
    //     ));

    // Use Cases
    sl.registerLazySingleton(() => GetAuthDataUseCase(sl()));
    sl.registerLazySingleton(() => GetAllProductsUseCase(sl()));
    sl.registerLazySingleton(() => GetPlantsUseCase(sl()));
    sl.registerLazySingleton(() => GetToolsUseCase(sl()));
    sl.registerLazySingleton(() => GetSeedsUseCase(sl()));

    // Repository
    sl.registerLazySingleton<BaseAuthRepository>(
        () => AuthRepository(sl(), sl()));
    sl.registerLazySingleton<BaseProductsRepository>(
        () => ProductRepository(sl()));

    // DATA SOURCE
    sl.registerLazySingleton<BaseAuthDataSource>(() => AuthDataSource());
    sl.registerLazySingleton<BaseNetworkInfo>(() => NetworkInfo(sl()));
    sl.registerLazySingleton(() => InternetConnectionChecker());
    sl.registerLazySingleton<BaseProductsRemoteDataSource>(
        () => ProductsRemoteDataSource());
  }
}
