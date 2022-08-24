import 'package:dartz/dartz.dart';
import 'package:odc_hackathon_lavie_app/core/network/error/failure.dart';
import 'package:odc_hackathon_lavie_app/data/models/auth/login_model.dart';
import 'package:odc_hackathon_lavie_app/domain/entities/auth/auth.dart';

abstract class BaseAuthRepository {
  Future<Either<Failure, Auth>> login(LoginModel loginModel);
}
