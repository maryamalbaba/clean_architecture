import 'package:cleanachtecture/core/Models/basic_mdel.dart';
import 'package:dio/dio.dart';

abstract class Apiconsumer {
  Future<Response> get(
    String path, {
      bool is_need_data_to_map=false,
    Object? data,
    Map<String, dynamic>? queryParameters,
    Options? options,
  
  });

  post();
  patch();
  delete();

}
