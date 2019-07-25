import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';


class Recipe{
  final String title;
  final String description;
  final String image;

  final int likes;
  final int views;
  final List<String> comments;
  final DocumentReference reference;

  Recipe.fromMap(Map<String, dynamic> map, {this.reference})
      : assert(map['title'] != null),
        assert(map['description'] != null),
        assert(map['image'] != null),
        assert(map['likes'] != null),
        assert(map['views'] != null),
        assert(map['comments'] != null),
        title = map['title'],
        description = map['description'],
        image = map['image'],
        likes = map['likes'],
        views = map['views'],
        comments = map['comments'].cast<String>();

  Recipe.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data, reference: snapshot.reference);

  @override
  String toString() => "Record<$title:$likes>";

}