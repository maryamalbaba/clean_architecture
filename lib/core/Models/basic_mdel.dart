// ignore_for_file: public_member_api_docs, sort_constructors_first
class ResultModel {}

class Successmodel extends ResultModel {}





class ErrorModel extends ResultModel {
  final int status;
  final String errorMesage;
  ErrorModel({
    required this.status,
    required this.errorMesage,
  });
  factory ErrorModel.fromJson(Map<String,dynamic>jsondata ){
    return ErrorModel(status:jsondata["status"] , errorMesage: jsondata["errorMessage"]);
  }
}



class ExceptionModel extends ResultModel {}
class ListModel<T extends ResultModel> extends ResultModel{
  List<T>list;
ListModel({required this.list});
}