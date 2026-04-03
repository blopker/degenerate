// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class User {const User({required this.id, required this.email, });

factory User.fromJson(Map<String, dynamic> json) { return User(
  id: json['id'] as String,
  email: json['email'] as String,
); }

final String id;

final String email;

Map<String, dynamic> toJson() { return {
  'id': id,
  'email': email,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String &&
      json.containsKey('email') && json['email'] is String; } 
User copyWith({String? id, String? email, }) { return User(
  id: id ?? this.id,
  email: email ?? this.email,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is User &&
          id == other.id &&
          email == other.email; } 
@override int get hashCode { return Object.hash(id, email); } 
@override String toString() { return 'User(id: $id, email: $email)'; } 
 }
