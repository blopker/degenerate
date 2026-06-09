// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAuthResponse201 {const PostAuthResponse201({required this.userId});

factory PostAuthResponse201.fromJson(Map<String, dynamic> json) { return PostAuthResponse201(
  userId: (json['userId'] as num).toInt(),
); }

final int userId;

Map<String, dynamic> toJson() { return {
  'userId': userId,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('userId') && json['userId'] is num; } 
PostAuthResponse201 copyWith({int? userId}) { return PostAuthResponse201(
  userId: userId ?? this.userId,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAuthResponse201 &&
          userId == other.userId; } 
@override int get hashCode { return userId.hashCode; } 
@override String toString() { return 'PostAuthResponse201(userId: $userId)'; } 
 }
