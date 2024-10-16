import 'package:cleanachtecture/feature/categories/bloc/catgories_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:redacted/redacted.dart';


class CategorisUi extends StatelessWidget {
  const CategorisUi({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CatgoriesBloc()..add(getCategory()),
      child: BlocBuilder<CatgoriesBloc, CatgoriesState>(
        builder: (context, state) {
          if (state is Sucsess_get_Catgories) {
            return Scaffold(
              appBar: AppBar(
                centerTitle: true,
                leading: SizedBox(
                  height: 20,
                  width: 20,
                ),
                title: Text("Select Your Transport"),
              ),
              body: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                child: GridView.builder(
                    itemCount: state.listsucses.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisSpacing: 22,
                        mainAxisSpacing: 22,
                        crossAxisCount: 2),
                    itemBuilder: (context, index) {
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: InkWell(
                          // onTap: () {
                          //   Navigator.push(
                          //       context,
                          //       MaterialPageRoute(
                          //           builder: (context) => Getbikes_catag_Ui(
                          //                 catagoryname:
                          //                     state.listsucses[index].body,
                          //               )));
                          // },
                          child: Container_Category(
                            text: state.listsucses[index].body.toString(),
                          ),
                        ),
                      );
                    }),
              ),
            );
          } else {
            print(" be calm it is  an error");
            return Scaffold(
                body: GridView.builder(
                    itemCount: 4,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisSpacing: 22,
                      mainAxisSpacing: 22,
                      crossAxisCount: 2,
                    ),
                    itemBuilder: (context, index) {
                     return Center(
                       child: Container_Category(
                         text: "TextText",
                       ).redacted(
                                     context: context,
                                     redact: true,
                                     configuration: RedactedConfiguration(
                                       animationDuration: const Duration(milliseconds: 800), //default
                                     ),),
                     );
                    }
            ));
           
          }
        },
      ),
    );
  }
}

class Container_Category extends StatelessWidget {
  Container_Category({super.key, required, required this.text});
  String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 183, 210, 185),
          borderRadius: BorderRadius.circular(15),
          border: Border.all(
            color: const Color.fromARGB(255, 30, 59, 33),
          )),
      width: 160,
      height: 160,
      child: Center(
          child: Text(
        text,
        style: TextStyle(fontSize: 17),
      )),
    );
  }
}
