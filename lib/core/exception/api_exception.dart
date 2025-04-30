
import 'package:dio/dio.dart';

class ApiException{

  final DioException exception;

  ApiException(this.exception);

  String get errorMessage{
    switch(exception.type){
      case DioExceptionType.cancel:
        return 'Request to API server was cancelled';

      case DioExceptionType.connectionTimeout:
        return 'Connection timeout with API server';

      case DioExceptionType.receiveTimeout:
        return 'Received timeout with API server';

      case DioExceptionType.badResponse:
        return '${exception.response}'; // uta  baata aako response

      case DioExceptionType.unknown:
        return 'Unexcepted error occured';

      case DioExceptionType.sendTimeout:
        return 'Send timeout with connection woth API server';

      case DioExceptionType.badCertificate:
        return 'Error occured while communication with API server';

      case DioExceptionType.connectionError:
        return 'Please check your internet connection';
    }
  }



 }