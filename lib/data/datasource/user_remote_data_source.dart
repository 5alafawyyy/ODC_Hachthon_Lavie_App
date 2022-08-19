import 'package:odc_hackathon_lavie_app/core/network/error/exceptions.dart';
import 'package:odc_hackathon_lavie_app/core/network/remote/api_constance.dart';
import 'package:odc_hackathon_lavie_app/core/network/remote/dio_helper.dart';
import 'package:odc_hackathon_lavie_app/core/network/remote/error_message_model.dart';
import 'package:odc_hackathon_lavie_app/data/models/user/user_model.dart';
import 'package:odc_hackathon_lavie_app/domain/entities/user/user.dart';

abstract class BaseUserRemoteDataSource {
  Future<List<User>> getUserData();
  Future<void> updateUserData(UserModel user);
}

class UserRemoteDataSource extends BaseUserRemoteDataSource {
  @override
  Future<List<User>> getUserData() async {
    final response = await DioHelper.getData(url: ApiConstance.userUrl);

    if (response.statusCode == 200) {
      return List<User>.from(
        (response.data['data'] as List).map(
          (e) => UserModel.fromJson(e),
        ),
      );
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromjson(response.data),
      );
    }
  }

  @override
  Future<void> updateUserData(UserModel user) async {
    final response = await DioHelper.postData(
        url: ApiConstance.userUrl, data: user.toJson());
    if (response.statusCode == 200) {
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromjson(response.data),
      );
    }
  }
}
