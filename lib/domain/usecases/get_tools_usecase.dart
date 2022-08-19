import 'package:odc_hackathon_lavie_app/core/network/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:odc_hackathon_lavie_app/core/usecase/base_usecase.dart';
import 'package:odc_hackathon_lavie_app/domain/entities/tool/tool.dart';
import 'package:odc_hackathon_lavie_app/domain/repository/base_products_repository.dart';

class GetToolsUseCase extends BaseUsecase<List<Tool>, NoParameters> {
  final BaseProductsRepository baseProductsRepository;

  GetToolsUseCase(this.baseProductsRepository);

  @override
  Future<Either<Failure, List<Tool>>> call(NoParameters parameters) async {
    return await baseProductsRepository.getTools();
  }
}
