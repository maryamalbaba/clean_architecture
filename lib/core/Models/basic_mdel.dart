import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class ResultModel {}

class Successmodel extends ResultModel {}






class ExceptionModel extends ResultModel {}
class ListModel<T extends ResultModel> extends ResultModel{
  List<T>list;
ListModel({required this.list});
}