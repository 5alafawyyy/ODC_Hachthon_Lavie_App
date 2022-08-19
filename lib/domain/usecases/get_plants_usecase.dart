import 'package:odc_hackathon_lavie_app/core/network/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:odc_hackathon_lavie_app/core/usecase/base_usecase.dart';
import 'package:odc_hackathon_lavie_app/domain/entities/plant/plant.dart';
import 'package:odc_hackathon_lavie_app/domain/repository/base_products_repository.dart';

class GetPlantsUseCase extends BaseUsecase<List<Plant>, NoParameters> {
  final BaseProductsRepository baseProductsRepository;
  GetPlantsUseCase(this.baseProductsRepository);

  @override
  Future<Either<Failure, List<Plant>>> call(NoParameters parameters) async {
    return await baseProductsRepository.getplants();
  }
}
