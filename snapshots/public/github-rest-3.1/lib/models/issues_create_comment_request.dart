// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class IssuesCreateCommentRequest {const IssuesCreateCommentRequest({required this.body});

factory IssuesCreateCommentRequest.fromJson(Map<String, dynamic> json) { return IssuesCreateCommentRequest(
  body: json['body'] as String,
); }

/// The contents of the comment.
final String body;

Map<String, dynamic> toJson() { return {
  'body': body,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('body') && json['body'] is String; } 
IssuesCreateCommentRequest copyWith({String? body}) { return IssuesCreateCommentRequest(
  body: body ?? this.body,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuesCreateCommentRequest &&
          body == other.body; } 
@override int get hashCode { return body.hashCode; } 
@override String toString() { return 'IssuesCreateCommentRequest(body: $body)'; } 
 }
