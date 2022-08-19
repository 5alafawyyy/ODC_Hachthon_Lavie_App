import 'package:odc_hackathon_lavie_app/core/network/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:odc_hackathon_lavie_app/core/usecase/base_usecase.dart';
import 'package:odc_hackathon_lavie_app/domain/entities/product/product.dart';
import 'package:odc_hackathon_lavie_app/domain/repository/base_products_repository.dart';

class GetAllProductsUseCase extends BaseUsecase<List<Product>, NoParameters> {
  final BaseProductsRepository baseProductsRepository;

  GetAllProductsUseCase(this.baseProductsRepository);

  @override
  Future<Either<Failure, List<Product>>> call(NoParameters parameters) async {
    return await baseProductsRepository.getAllProducts();
  }
}
