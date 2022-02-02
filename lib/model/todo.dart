import 'package:flutter/cupertino.dart';

import 'package:bucketlist/utils.dart';

class TodoField {
  static const createdTime = 'createdTime';
}

class Todo {
  DateTime createdTime;
  DateTime dueDate;
  bool travel;
  String location;
  int priority;
  String category;
  String title;
  String id;
  String description;
  bool isDone;

  Todo({
    @required this.createdTime,
    @required this.title,
    this.description = '',
    this.id,
    this.isDone = false,
    this.dueDate,
    this.category = 'Other',
    this.location,
    this.priority = 2,
    this.travel = false,
  });

  static Todo fromJson(Map<String, dynamic> json) => Todo(
        createdTime: Utils.toDateTime(json['createdTime']),
        title: json['title'],
        description: json['description'],
        id: json['id'],
        isDone: json['isDone'],
        category: json['category'],
      );

  Map<String, dynamic> toJson() => {
        'createdTime': Utils.fromDateTimeToJson(createdTime),
        'title': title,
        'description': description,
        'id': id,
        'isDone': isDone,
        'category': category,
      };
}
