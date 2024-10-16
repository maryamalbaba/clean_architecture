import 'package:cleanachtecture/core/Models/basic_mdel.dart';
import 'package:cleanachtecture/core/Models/catag_model.dart';
import 'package:cleanachtecture/core/api/api_consumer.dart';
import 'package:cleanachtecture/core/api/dio_consumer.dart';

import 'package:dio/dio.dart';

Apiconsumer api = Dio_consumer(dio: Dio());

Future<ResultModel> get_category_ser() async {
  //print("hi_hi from ser categ");
  Response response = await api.get(
    "bicycle/bicycles-categories",
  );
  try {
    print("hi from try in get categories");
    if (response.statusCode == 200) {
      print("hi from 200 in get categories");

      List<catgModel> adata = (response.data["body"] as List)
          .map((e) => catgModel(body: e))
          .toList();

      print("a list is $adata");
      return ListModel(list: adata);
    } else {
      print("hi from error in get categories");
      print(response.data["message"]);
      return ErrorModel(
          status: response.statusCode!, errorMesage: response.statusMessage!);
    }
  } catch (e) {
    print(response.data["message"]);
    print("hi from Exception in get categories");
    return ExceptionModel();
  }
}
