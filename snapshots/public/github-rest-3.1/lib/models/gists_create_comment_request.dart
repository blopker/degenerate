// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class GistsCreateCommentRequest {const GistsCreateCommentRequest({required this.body});

factory GistsCreateCommentRequest.fromJson(Map<String, dynamic> json) { return GistsCreateCommentRequest(
  body: json['body'] as String,
); }

/// The comment text.
final String body;

Map<String, dynamic> toJson() { return {
  'body': body,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('body') && json['body'] is String; } 
GistsCreateCommentRequest copyWith({String? body}) { return GistsCreateCommentRequest(
  body: body ?? this.body,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is GistsCreateCommentRequest &&
          body == other.body; } 
@override int get hashCode { return body.hashCode; } 
@override String toString() { return 'GistsCreateCommentRequest(body: $body)'; } 
 }
