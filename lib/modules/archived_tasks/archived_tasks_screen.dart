import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:task_todo_now/shared/components/task_item.dart';
import 'package:task_todo_now/shared/cubit/cubit.dart';
import 'package:task_todo_now/shared/cubit/states.dart';

class ArchivedTasksScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      listener: (context, state) {},
      builder: (context, state) {
        var tasks = AppCubit.get(context).archivedTasks;
        return SafeArea(
          child: SingleChildScrollView(
            physics:
                BouncingScrollPhysics(parent: AlwaysScrollableScrollPhysics()),
            child: Container(
              height: MediaQuery.of(context).size.height,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 100,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                      'Archived Tasks',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 35,
                          fontFamily: 'Helvetica',
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  // SizedBox(
                  //   height: 5,
                  // ),
                  Padding(
                    padding: const EdgeInsets.only(left: 18),
                    child: tasks.length > 0
                        ? Text(
                            'Archived tasks',
                            style: TextStyle(
                              color: Colors.teal,
                              fontSize: 13,
                              fontFamily: 'NotoSans',
                            ),
                          )
                        : null,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  tasks.length > 0
                      ? ListView.builder(
                          //scrollDirection: Axis.vertical,
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemBuilder: (context, index) {
                            //print(index);
                            return TaskItem(
                              tasks: tasks[index],
                            );
                          },
                          itemCount: tasks.length)
                      : Container(
                          child: Center(
                              child: Image.asset(
                          'images/nodata.png',
                          height: 350,
                          width: 350,
                        ))),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
