// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cleanachtecture/core/Errors/handle_dio_exception.dart';
import 'package:cleanachtecture/core/api/api_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';



import 'package:cleanachtecture/core/api/api_consumer.dart';


class Dio_consumer extends Apiconsumer {
  final Dio dio;
  Dio_consumer({
    required this.dio,
  }) {
    dio.options.baseUrl = "https://rideshare.devscape.online/api/v1/";
    dio.interceptors.add(ApiInterceptor());
    dio.interceptors.add(LogInterceptor(
        //لطباعة تفاصيل الريكوست
        request: true,
        requestHeader: true,
        requestBody: true,
        responseBody: true,
        responseHeader: true,
        error: true));
  }
//!GET
  @override
  Future<Response> get(
    String path, {
    bool is_need_data_to_map = false,
    dynamic data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  }) async {
    try {
      Response response = await dio.get(path,
          options: options,
          queryParameters: queryParameters,
          data: is_need_data_to_map ? data.toMap() : data);

      return response;
    } on DioException catch (e) {
      HandleDioException(e);
    }
    throw UnimplementedError();
  }
//!Delete
  @override
  delete(String path,
      {bool is_need_data_to_map = false,
      dynamic data,
      Map<String, dynamic>? queryParameters,
      Options? options}) async {
    try {
      Response response = await dio.delete(path,
          options: options,
          queryParameters: queryParameters,
          data: is_need_data_to_map ? data!.toMap() : data);

      return response;
    } on DioException catch (e) {
      HandleDioException(e);
    }
    throw UnimplementedError();
  }

//!PATCH

  @override
  patch(String path,
      {bool is_need_data_to_map = false,
      dynamic data,
      Map<String, dynamic>? queryParameters,
      Options? options}) {
    throw UnimplementedError();
  }
//!POST
  @override
  post(String path,
      {bool is_need_data_to_map = false,
      dynamic data,
      Map<String, dynamic>? queryParameters,
      Options? options}) async {
    try {
      Response response = await dio.post(path,
          options: options,
          queryParameters: queryParameters,
          data: is_need_data_to_map ? data!.toMap() : data);

      return response;
    } on DioException catch (e) {
      HandleDioException(e);
    }
    throw UnimplementedError();
  }
}
