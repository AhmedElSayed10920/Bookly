import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  const Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection timeout');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send timeout');
      case DioExceptionType.receiveTimeout:
        return ServerFailure('Receive timeout');
      case DioExceptionType.badResponse:
        ServerFailure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);
      case DioExceptionType.cancel:
        return ServerFailure('Request to api have been canceled');
      case DioExceptionType.unknown:
        if (dioError.message!.contains('SocketException')) {
          return ServerFailure('No internet connection');
        }
      default:
        return ServerFailure(
            'Oops there was an error, Please try again later!');
    }
    return ServerFailure('Oops there was an error, Please try again later!');
  }
  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('Your request not found, Please try again later!');
    } else if (statusCode == 500) {
      return ServerFailure('Internal server error, Please try again later!');
    }
    return ServerFailure('Oops there was an error, Please try again later!');
  }
}
