import 'package:get_it/get_it.dart';
import 'package:odc_hackathon_lavie_app/presentation/controllers/auth/auth_layout_cubit/auth_cubit.dart';
import 'package:odc_hackathon_lavie_app/presentation/controllers/layout_cubit/layout_cubit.dart';

final sl = GetIt.instance;

class ServicesLocator {
  void init() {
    // BloC
    sl.registerFactory(() => AuthCubit());
    sl.registerFactory(() => LayoutCubit());

    // Use Cases

    // Repository

    // DATA SOURCE
  }
}
