// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:cleanachtecture/core/Errors/error_model.dart';
import 'package:cleanachtecture/core/Models/basic_mdel.dart';
import 'package:dio/dio.dart';

class ApiException  extends ResultModel implements Exception {
  final ErrorModel errorModel;
  ApiException({
    required this.errorModel,
  });
}
