import 'package:odc_hackathon_lavie_app/core/network/error/exceptions.dart';
import 'package:odc_hackathon_lavie_app/core/network/remote/network_info.dart';
import 'package:odc_hackathon_lavie_app/core/utils/app_strings.dart';
import 'package:odc_hackathon_lavie_app/data/datasource/auth_remote_data_source.dart';
import 'package:odc_hackathon_lavie_app/data/models/auth/login_model.dart';
import 'package:odc_hackathon_lavie_app/core/network/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:odc_hackathon_lavie_app/domain/entities/auth/auth.dart';
import 'package:odc_hackathon_lavie_app/domain/repository/base_auth_repository.dart';

class AuthRepository extends BaseAuthRepository {
  final BaseAuthDataSource baseAuthDataSource;
  final BaseNetworkInfo baseNetworkInfo;
  AuthRepository(this.baseAuthDataSource, this.baseNetworkInfo);

  @override
  Future<Either<Failure, Auth>> login(LoginModel loginModel) async {
    

    if(await baseNetworkInfo.isConnected){
      final result = await baseAuthDataSource.login(loginModel);
      try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }}else{
return const Left( ServerFailure(AppStrings.noInternetConnection));
    }
    
  }
}
