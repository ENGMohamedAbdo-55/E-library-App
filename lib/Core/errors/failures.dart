import 'package:dio/dio.dart';

abstract class Failure {
  final String errMessage;

  Failure(this.errMessage);
}

class ServerFailure extends Failure {
  ServerFailure(super.errMessage);

  factory ServerFailure.fromDioError(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return ServerFailure('Connection Time Out With ApiSever');
      case DioExceptionType.sendTimeout:
        return ServerFailure('Send Time Out With ApiSever');

      case DioExceptionType.receiveTimeout:
        return ServerFailure('ReceiveTime Out With ApiSever');

      case DioExceptionType.badCertificate:
        return ServerFailure(
            'Unexpected Error , Caused by an incorrect certificate  ! ');

      case DioExceptionType.badResponse:
        return ServerFailure.fromResponse(
            dioError.response!.statusCode!, dioError.response!.data);

      case DioExceptionType.cancel:
        return ServerFailure('Request To ApiServer Was Canceled');
      case DioExceptionType.connectionError:
        return ServerFailure('No InterNet Connection!');
      case DioExceptionType.unknown:
        return ServerFailure('Unexpected Error , Please Try Again Later ! ');
      default:
        return ServerFailure('Oops There Was An Error, Please Try Again !');
    }
  }
  factory ServerFailure.fromResponse(int statusCode, dynamic response) {
    if (statusCode == 400 || statusCode == 401 || statusCode == 403) {
      return ServerFailure(response['error']['message']);
    } else if (statusCode == 404) {
      return ServerFailure('You Request Not Found , Please Try Again Later!');
    } else if (statusCode == 500) {
      return ServerFailure('Internal Server Error, Please Try Later! ');
    } else {
      return ServerFailure('Oops There Was An Error, Please Try Again !!');
    }
  }
}
