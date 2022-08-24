import 'package:dartz/dartz.dart';
import 'package:odc_hackathon_lavie_app/core/network/error/failure.dart';
import 'package:odc_hackathon_lavie_app/data/models/auth/login_model.dart';
import 'package:odc_hackathon_lavie_app/domain/entities/auth/auth.dart';
import 'package:odc_hackathon_lavie_app/domain/repository/base_auth_repository.dart';

class GetAuthDataUseCase {
  final BaseAuthRepository baseAuthRepository;

  GetAuthDataUseCase(this.baseAuthRepository);

  Future<Either<Failure, Auth>> excute(LoginModel loginModel) async {
    return await baseAuthRepository.login(loginModel);
  }
}
