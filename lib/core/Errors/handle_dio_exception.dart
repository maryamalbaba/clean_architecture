// ignore: non_constant_identifier_names

import 'package:cleanachtecture/core/Errors/error_model.dart';
import 'package:cleanachtecture/core/Errors/exception.dart';
import 'package:dio/dio.dart';

void HandleDioException(DioException e) {
  switch (e.type) {
    case DioExceptionType.connectionTimeout:
      print("connectio exception");
      throw ApiException(errorModel: ErrorModel.fromMap(e.response!.data));
    case DioExceptionType.sendTimeout:
      print("connectio exception");
      throw ApiException(errorModel: ErrorModel.fromMap(e.response!.data));
    case DioExceptionType.receiveTimeout:
      print("connectio exception");
      throw ApiException(errorModel: ErrorModel.fromMap(e.response!.data));

    case DioExceptionType.badCertificate:
      print("connectio exception");
      throw ApiException(errorModel: ErrorModel.fromMap(e.response!.data));

    case DioExceptionType.cancel:
      print("connectio exception");
      throw ApiException(errorModel: ErrorModel.fromMap(e.response!.data));
    case DioExceptionType.connectionError:
      print("connectio exception");
      throw ApiException(errorModel: ErrorModel.fromMap(e.response!.data));
    case DioExceptionType.unknown:
      print("connectio exception");
      throw ApiException(errorModel: ErrorModel.fromMap(e.response!.data));

    case DioExceptionType.badResponse:
    print("bad response");
      throw ApiException(errorModel: ErrorModel.fromMap(e.response!.data));
  }
}
