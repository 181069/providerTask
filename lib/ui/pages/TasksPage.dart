import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:todo_db/providers/todo_provider.dart';
import 'package:todo_db/ui/widgets/Task_List_item.dart';
import 'package:todo_db/ui/widgets/date_widget.dart';

class TaskPage extends StatefulWidget {
  @override
  _TaskPageState createState() => _TaskPageState();
}

class _TaskPageState extends State<TaskPage> {
  @override
  Widget build(BuildContext context) {

    return Consumer<TodoProvider>(builder: (context, todoProvider, x) {
      return SafeArea(
        child: Scaffold(
          body: Card(
            color: Color(0xFF284ab5),
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            )),
            child: Column(
              children: [
                Expanded(
                    flex: 3,
                    child: Column(
                      children: [
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(20, 15, 12, 5),

                            child: Column(
                              children: [
                                Expanded(
                                  flex:2,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                        child: Card(
                                         // color: Color(0xFFfe3569),
                                          shape: const RoundedRectangleBorder(
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(13),
                                                topRight: Radius.circular(13),
                                                bottomLeft: Radius.circular(13),
                                                bottomRight: Radius.circular(13),
                                              )),
                                          child: Container(
                                            width: 40,
                                            height:40,
                                            child: CircleAvatar(
                                              radius: 35.0,
                                              backgroundImage: AssetImage('assets/images/fat.png'),
                                              backgroundColor: Colors.transparent,
                                            ),

                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 5,
                                      child: Container(
                                        margin:EdgeInsets.fromLTRB(7, 0, 0, 0) ,
                                        child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          children: [
                                            Text("Samabta katae",style:GoogleFonts.poiretOne(fontSize:13,
                                            fontWeight:FontWeight.bold, color:Colors.white ) ,),
                                            Text("Golden Tower , NY 3100",style:GoogleFonts.poiretOne(fontSize:10,color: Color(0xFFffffff).withOpacity(0.5),fontWeight: FontWeight.bold
                                             ) ,),
                                          ],
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Container(
                                    // margin:EdgeInsets.fromLTRB(0, 0, 20, 0) ,
                                      child: Card(
                                        color: Color(0xFFffa8687),
                                        shape: const RoundedRectangleBorder(
                                            borderRadius: BorderRadius.only(
                                              topLeft: Radius.circular(13),
                                              topRight: Radius.circular(13),
                                              bottomLeft: Radius.circular(13),
                                              bottomRight: Radius.circular(13),
                                            )),
                                        child: Container(
                                          width: 40,
                                          height:40,
                                          child: Icon(Icons.list,color:Colors.white ,),

                                        ),
                                      ),
                                    ),)
                                  ],
                                ),
                                ),
                                Expanded(
                                  flex: 1,
                                    child: Container(),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 90,
                          child: Container(
                            margin: EdgeInsets.all(13),
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              children: [
                                DateWidget(true),
                                DateWidget(false),
                                DateWidget(false),
                                DateWidget(false),
                                DateWidget(false),
                                DateWidget(false),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )),
                Expanded(
                  flex: 5,
                  child: Card(
                    color: Colors.white,
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    )),
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0, 15, 0, 0),
                          child: Text(" Today's Task ",
                              style: GoogleFonts.poiretOne(
                                  textStyle: TextStyle(
                                fontSize: 23,
                                fontWeight: FontWeight.w800,
                                color: Colors.black,
                              ))),
                        ),
                        SizedBox(
                          height: 325,
                          child: ListView.builder(
                              itemCount: todoProvider.allTasks.length,
                              itemBuilder: (context, index) {
                                return TaskItem(
                                  todoProvider.allTasks[index],
                                );
                              }),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
