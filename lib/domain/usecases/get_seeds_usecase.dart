import 'package:odc_hackathon_lavie_app/core/network/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:odc_hackathon_lavie_app/core/usecase/base_usecase.dart';
import 'package:odc_hackathon_lavie_app/domain/entities/seed/seed.dart';
import 'package:odc_hackathon_lavie_app/domain/repository/base_products_repository.dart';

class GetSeedsUseCase extends BaseUsecase<List<Seed>, NoParameters> {
  final BaseProductsRepository baseProductsRepository;

  GetSeedsUseCase(this.baseProductsRepository);

  @override
  Future<Either<Failure, List<Seed>>> call(NoParameters parameters) async {
    return await baseProductsRepository.getSeeds();
  }
}
