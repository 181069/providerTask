import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class TaskModel {
  int id;
  String taskName;
  bool isComplete;
  DateTime dueDate;
  TimeOfDay dueTime;
  TaskModel({
    this.id,
    @required this.taskName,
    @required this.isComplete,
    @required this.dueDate,
    @required this.dueTime,
  });

  Map<String, dynamic> toMap() {
    return {
      'taskName': taskName,
      'isComplete': isComplete ? 1 : 0,
      'dueDate' : DateFormat('yyyy-MM-dd').format(dueDate),
      'dueTime' : '${dueTime.hour} : ${dueTime.minute}'
    };
  }

  factory TaskModel.fromMap(Map<String, dynamic> map) {
    return TaskModel(
      id: map['id'],
      taskName: map['taskName'],
      isComplete: map['isComplete'] == 1 ? true : false,
      dueDate : DateTime.parse(map['dueDate']),
      dueTime : TimeOfDay(hour:15,minute:8)
    );
  }
}
