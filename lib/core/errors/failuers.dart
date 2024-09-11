import 'package:dio/dio.dart';

abstract class Failuer {
  final String errMessage;

  const Failuer(this.errMessage);
}

class ServerFailuer extends Failuer {
  ServerFailuer(super.errMessage);

  factory ServerFailuer.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailuer('Connection timeout with ApiServer');
      case DioExceptionType.sendTimeout:
        return ServerFailuer('Connection timeout with ApiServer');
      case DioExceptionType.receiveTimeout:
        return ServerFailuer('Receive timeout with ApiServer');
      case DioExceptionType.badCertificate:
        return ServerFailuer('Bad certificate');
      case DioExceptionType.badResponse:
        return ServerFailuer.fromResponse(dioError.response?.statusCode, dioError.response?.data);
      case DioExceptionType.cancel:
        return ServerFailuer('Request to ApiServer was cancelled');
      case DioExceptionType.connectionError:
        return ServerFailuer('No Internet Connection');
      case DioExceptionType.unknown:
      default:
        return ServerFailuer('Unknown error occurred');
    }
  }

  factory ServerFailuer.fromResponse(int? statusCode, dynamic response) {
    if (statusCode == null) {
      return ServerFailuer('Unknown error occurred');
    }

    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailuer(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailuer('Your request not found, try again');
    } else if (statusCode == 500) {
      return ServerFailuer('Internal server error, try later');
    } else {
      return ServerFailuer('Oops there was an error, please try again');
    }
  }
}
