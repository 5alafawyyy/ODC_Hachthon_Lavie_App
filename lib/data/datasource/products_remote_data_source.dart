import 'package:odc_hackathon_lavie_app/core/network/error/exceptions.dart';
import 'package:odc_hackathon_lavie_app/core/network/remote/api_constance.dart';
import 'package:odc_hackathon_lavie_app/core/network/remote/dio_helper.dart';
import 'package:odc_hackathon_lavie_app/core/network/remote/error_message_model.dart';
import 'package:odc_hackathon_lavie_app/data/models/product/product_model.dart';
import 'package:odc_hackathon_lavie_app/domain/entities/plant/plant.dart';
import 'package:odc_hackathon_lavie_app/domain/entities/product/product.dart';
import 'package:odc_hackathon_lavie_app/domain/entities/seed/seed.dart';
import 'package:odc_hackathon_lavie_app/domain/entities/tool/tool.dart';

abstract class BaseProductsRemoteDataSource {
  Future<List<Plant>> getPlant();
  Future<List<Seed>> getSeed();
  Future<List<Tool>> getTool();
  Future<List<Product>> getAllProduct();
}

class ProductsRemoteDataSource extends BaseProductsRemoteDataSource {
  @override
  Future<List<Product>> getAllProduct() async {
    final response = await DioHelper.getData(url: ApiConstance.productsUrl);

    if (response.statusCode == 200) {
      return List<Product>.from(
        (response.data['data'] as List).map(
          (e) => ProductModel.fromJson(e),
        ),
      );
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromjson(response.data),
      );
    }
  }

  @override
  Future<List<Plant>> getPlant() async {
    final response = await DioHelper.getData(url: ApiConstance.plantsUrl);

    if (response.statusCode == 200) {
      return List<Plant>.from(
        (response.data['data'] as List).map(
          (e) => ProductModel.fromJson(e),
        ),
      );
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromjson(response.data),
      );
    }
  }

  @override
  Future<List<Seed>> getSeed() async {
    final response = await DioHelper.getData(url: ApiConstance.seedsUrl);

    if (response.statusCode == 200) {
      return List<Seed>.from(
        (response.data['data'] as List).map(
          (e) => ProductModel.fromJson(e),
        ),
      );
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromjson(response.data),
      );
    }
  }

  @override
  Future<List<Tool>> getTool() async {
    final response = await DioHelper.getData(url: ApiConstance.toolsUrl);

    if (response.statusCode == 200) {
      return List<Tool>.from(
        (response.data['data'] as List).map(
          (e) => ProductModel.fromJson(e),
        ),
      );
    } else {
      throw ServerException(
        errorMessageModel: ErrorMessageModel.fromjson(response.data),
      );
    }
  }
}
