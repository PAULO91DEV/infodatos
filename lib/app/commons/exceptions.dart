import 'package:infodatos/app/commons/constants.dart';

class InvalidParametersException implements Exception {
  String cause;
  InvalidParametersException() {
    this.cause = kErrorTextInvalidParameters;
  }
}

class NotFoundException implements Exception {
  final String message;
  NotFoundException(this.message);
}
