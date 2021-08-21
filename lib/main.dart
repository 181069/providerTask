import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_db/helpers/db_helper.dart';
import 'package:todo_db/providers/todo_provider.dart';
import 'package:todo_db/ui/pages/TasksPage.dart';
import 'package:todo_db/ui/pages/main_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DbHelper.dbHelper.initDatabase();
  runApp(ChangeNotifierProvider<TodoProvider>(
      create: (context) => TodoProvider(),
      child: MaterialApp(home: TaskPage())));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
         Container(),

        ],
      ),
    );
  }
}
