
// Network Server Exceptions
import 'package:odc_hackathon_lavie_app/core/network/remote/error_message_model.dart';

class ServerException implements Exception {
  final ErrorMessageModel errorMessageModel;

  ServerException({
    required this.errorMessageModel,
  });
}

// Local Database Exceptions
class LocalDatabaseexception implements Exception {
  final String message;

  LocalDatabaseexception({
    required this.message,
  });
}
