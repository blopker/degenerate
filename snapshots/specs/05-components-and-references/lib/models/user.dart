// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class User {const User({required this.id, required this.email, required this.nickname, });

factory User.fromJson(Map<String, dynamic> json) { return User(
  id: json['id'] as String,
  email: json['email'] as String,
  nickname: json['nickname'] as String?,
); }

final String id;

final String email;

final String? nickname;

Map<String, dynamic> toJson() { return {
  'id': id,
  'email': email,
  'nickname': nickname,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String &&
      json.containsKey('email') && json['email'] is String &&
      json.containsKey('nickname') && (json['nickname'] == null || json['nickname'] is String); } 
User copyWith({String? id, String? email, String? Function()? nickname, }) { return User(
  id: id ?? this.id,
  email: email ?? this.email,
  nickname: nickname != null ? nickname() : this.nickname,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is User &&
          id == other.id &&
          email == other.email &&
          nickname == other.nickname; } 
@override int get hashCode { return Object.hash(id, email, nickname); } 
@override String toString() { return 'User(id: $id, email: $email, nickname: $nickname)'; } 
 }
