// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cleanachtecture/core/api/api_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

import 'package:cleanachtecture/core/Errors/exception.dart';
import 'package:cleanachtecture/core/Models/basic_mdel.dart';
import 'package:cleanachtecture/core/api/api_consumer.dart';
import 'package:cleanachtecture/core/services/catag.dart';

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

  @override
  delete() {
    // TODO: implement delete
    throw UnimplementedError();
  }

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

  @override
  patch() {
    // TODO: implement patch
    throw UnimplementedError();
  }

  @override
  post() {
    // TODO: implement post
    throw UnimplementedError();
  }
}
