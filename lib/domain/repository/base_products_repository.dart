import 'package:dartz/dartz.dart';
import 'package:odc_hackathon_lavie_app/core/network/error/failure.dart';
import 'package:odc_hackathon_lavie_app/domain/entities/plant/plant.dart';
import 'package:odc_hackathon_lavie_app/domain/entities/product/product.dart';
import 'package:odc_hackathon_lavie_app/domain/entities/seed/seed.dart';
import 'package:odc_hackathon_lavie_app/domain/entities/tool/tool.dart';

abstract class BaseProductsRepository {
  Future<Either<Failure, List<Product>>> getAllProducts();
  Future<Either<Failure, List<Plant>>> getplants();
  Future<Either<Failure, List<Seed>>> getSeeds();
  Future<Either<Failure, List<Tool>>> getTools();
}
