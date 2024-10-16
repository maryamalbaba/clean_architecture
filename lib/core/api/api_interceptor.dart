import 'package:dio/dio.dart';

class ApiInterceptor extends Interceptor{
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers["accept"]="*/*";
    //options.headers["Content-Type"]="application/json";
    options.headers["Authorization"]="Bearer eyJhbGciOiJIUzI1NiJ9.eyJzdWIiOiIwOTA5OTkwOTA4IiwiaWF0IjoxNzI5MTAwNTM1LCJleHAiOjE3MjkxODY5MzV9.ImTckzjE9U7Z8R4i2RT5wJo44odrHYG-JRjEUISWNqM";
    super.onRequest(options, handler);
  }
}