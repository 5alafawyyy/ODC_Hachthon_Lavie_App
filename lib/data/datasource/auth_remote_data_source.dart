import 'package:odc_hackathon_lavie_app/core/network/error/exceptions.dart';
import 'package:odc_hackathon_lavie_app/core/network/remote/api_constance.dart';
import 'package:odc_hackathon_lavie_app/core/network/remote/dio_helper.dart';
import 'package:odc_hackathon_lavie_app/core/network/remote/error_message_model.dart';
import 'package:odc_hackathon_lavie_app/data/models/auth/login_model.dart';
import 'package:odc_hackathon_lavie_app/domain/entities/auth/auth.dart';

abstract class BaseAuthDataSource {
  Future<Auth> login(LoginModel loginModel);
}

class AuthDataSource extends BaseAuthDataSource {
  @override
  Future<Auth> login(LoginModel loginModel) async {
    final response = await DioHelper.postData(
        url: ApiConstance.signinUrl, data: loginModel.toJson());

    if (response.statusCode == 200) {
      return response.data ;
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromjson(response.data),
      );
    }
  }
}
