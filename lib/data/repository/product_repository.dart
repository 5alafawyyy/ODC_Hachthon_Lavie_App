import 'package:odc_hackathon_lavie_app/core/network/error/exceptions.dart';
import 'package:odc_hackathon_lavie_app/data/datasource/products_remote_data_source.dart';
import 'package:odc_hackathon_lavie_app/domain/entities/tool/tool.dart';
import 'package:odc_hackathon_lavie_app/domain/entities/seed/seed.dart';
import 'package:odc_hackathon_lavie_app/domain/entities/product/product.dart';
import 'package:odc_hackathon_lavie_app/domain/entities/plant/plant.dart';
import 'package:odc_hackathon_lavie_app/core/network/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:odc_hackathon_lavie_app/domain/repository/base_products_repository.dart';

class ProductRepository extends BaseProductsRepository {
  final BaseProductsRemoteDataSource baseProductsRemoteDataSource;

  ProductRepository(this.baseProductsRemoteDataSource);

  @override
  Future<Either<Failure, List<Product>>> getAllProducts() async {
    final result = await baseProductsRemoteDataSource.getAllProduct();

    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<Seed>>> getSeeds() async {
    final result = await baseProductsRemoteDataSource.getSeed();

    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<Tool>>> getTools() async {
    final result = await baseProductsRemoteDataSource.getTool();

    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }

  @override
  Future<Either<Failure, List<Plant>>> getplants() async {
    final result = await baseProductsRemoteDataSource.getPlant();

    try {
      return Right(result);
    } on ServerException catch (failure) {
      return Left(ServerFailure(failure.errorMessageModel.statusMessage));
    }
  }
}
