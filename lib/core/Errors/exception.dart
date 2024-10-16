// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cleanachtecture/core/Models/basic_mdel.dart';
import 'package:dio/dio.dart';

class serverException implements Exception {
  final ErrorModel errorModel;
  serverException({
    required this.errorModel,
  });
}

void HandleDioException(DioException e  )
{

        switch (e.type) {
        case DioExceptionType.connectionTimeout:
          throw serverException(
              errorModel: ErrorModel.fromJson(e.response!.data));
        case DioExceptionType.sendTimeout:
          throw serverException(
              errorModel: ErrorModel.fromJson(e.response!.data));
        case DioExceptionType.receiveTimeout:
          throw serverException(
              errorModel: ErrorModel.fromJson(e.response!.data));
        case DioExceptionType.badCertificate:
          throw serverException(
              errorModel: ErrorModel.fromJson(e.response!.data));
        case DioExceptionType.badResponse:
        switch(e.response!.statusCode){
      
          case 400: //bad req


          case 401://unauthorized

          case 403://forbidden

          case 404://not found


          case 409://cofficient

          case 422://un processable entity

          case 504://server excetion

          case 500://serer exception


        }
        case DioExceptionType.cancel:
          throw serverException(
              errorModel: ErrorModel.fromJson(e.response!.data));
        case DioExceptionType.connectionError:
          throw serverException(
              errorModel: ErrorModel.fromJson(e.response!.data));
        case DioExceptionType.unknown:
          throw serverException(
              errorModel: ErrorModel.fromJson(e.response!.data));
 
       }
  
}