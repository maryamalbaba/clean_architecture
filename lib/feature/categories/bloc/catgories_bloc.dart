
import 'package:cleanachtecture/core/Models/basic_mdel.dart';
import 'package:cleanachtecture/core/Models/catag_model.dart';
import 'package:cleanachtecture/core/services/catag.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';


part 'catgories_event.dart';
part 'catgories_state.dart';

class CatgoriesBloc extends Bloc<CatgoriesEvent, CatgoriesState> {
  CatgoriesBloc() : super(CatgoriesInitial()) {
    print("bloc up ");
    on<getCategory>((event, emit) async {
      print("hi from bloc");
      ResultModel res = await get_category_ser();
      print("res is $res");
      emit(loading_get_Catgories());
      if (res is ListModel<catgModel>) {
        print("in bloc catagmodel model");
        emit(Sucsess_get_Catgories(listsucses: res.list));
      }

    else  if (res is ErrorModel) {
        print("in bloc error model");
        emit(Error_get_Catgories());
      } else {
        print("in bloc Exc model");
        emit(Exception_get_Catgories());
      }
    });
  }
}
