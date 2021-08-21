import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:provider/provider.dart';
import 'package:todo_db/models/task_model.dart';
import 'package:todo_db/providers/todo_provider.dart';

class TaskItem extends StatelessWidget {
  TaskModel taskModel;
  TimeOfDay time11;
  bool isCompletedd;
  int progresss;
  String TaskNamee;


  TaskItem(this.taskModel);

  @override
  Widget build(BuildContext context) {
    isCompletedd= taskModel.isComplete;
    TaskNamee=taskModel.taskName;
    progresss=isCompletedd?100:0;
    time11 = taskModel.dueTime;
    return Container(
      margin: EdgeInsets.fromLTRB(10,0,0,5),
      child: Row(
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(15, 5, 7, 5),
                child: Text(
                  '${time11.hour}' + ':' + '${time11.minute}',
                  style: GoogleFonts.montserrat(
                    fontWeight: FontWeight.w400,
                    fontSize: 16,
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(3, 0, 0, 0),
                child: GestureDetector(
                  onTap:(){
                    taskModel.isComplete = !taskModel.isComplete;
                Provider.of<TodoProvider>(context, listen: false)
                    .updateTask(taskModel);
                  } ,
                  child: Icon(
                    Icons.assignment_turned_in_rounded,
                    color: isCompletedd ? Color(0xFFc9869d) : Color(0xFFc9c9c9),
                    size: 18,

                  ),
                ),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.fromLTRB(7, 3, 3, 3),
            child: Card(
              
              color: Color(0xFFf6f5fd),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                topLeft: Radius.circular(25),
                topRight: Radius.circular(25),
                bottomLeft: Radius.circular(25),
                bottomRight: Radius.circular(25),
              )),
              child: Container(
               
                child: Container(
                  width: 240,
                  height: 90,
                  padding: EdgeInsets.all(17),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Card(
                          color: Color(0xFFfe3569),
                          shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(13),
                            topRight: Radius.circular(13),
                            bottomLeft: Radius.circular(13),
                            bottomRight: Radius.circular(13),
                          )),
                          child: SizedBox(
                            width: 45,
                            height: 48,
                            child: Icon(
                              Icons.ac_unit_sharp,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Container(
                          margin: EdgeInsets.fromLTRB(11, 0, 0, 0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(TaskNamee,style: GoogleFonts.montserrat(
                              wordSpacing:0 ,
                              fontWeight: FontWeight.w500,
                              fontSize: 15,

                            ),),
                            Container(
                              margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                              child: new LinearPercentIndicator(
                                width: 130.0,
                                lineHeight: 3.0,
                                percent: progresss*.01,
                                progressColor: Color(0xFFfe3569),
                              ),
                            ),
                          ],
                      ),
                        ))
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
