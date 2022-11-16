/*
  Created by: Claizel Coubeili Cepe
  Date: 27 October 2022
  Description: Sample todo app with networking
*/

import 'dart:convert';

class Friend {
  // final int userId;
  final String? id;
  String title;
  bool completed;

  Friend({
    // required this.userId,
    this.id,
    required this.title,
    required this.completed,
  });

  factory Friend.fromJson(Map<String, dynamic> json) {
    return Friend(
      // userId: json['userId'],
      id: json['id'],
      title: json['title'],
      completed: json['completed'],
    );
  }

  static List<Friend> fromJsonArray(String jsonData) {
    final Iterable<dynamic> data = jsonDecode(jsonData);
    return data.map<Friend>((dynamic d) => Friend.fromJson(d)).toList();
  }

  Map<String, dynamic> toJson(Friend todo) {
    return {
      // 'userId': todo.userId,
      'title': todo.title,
      'completed': todo.completed,
    };
  }
}
