// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PullsUpdateReviewCommentRequest {const PullsUpdateReviewCommentRequest({required this.body});

factory PullsUpdateReviewCommentRequest.fromJson(Map<String, dynamic> json) { return PullsUpdateReviewCommentRequest(
  body: json['body'] as String,
); }

/// The text of the reply to the review comment.
final String body;

Map<String, dynamic> toJson() { return {
  'body': body,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('body') && json['body'] is String; } 
PullsUpdateReviewCommentRequest copyWith({String? body}) { return PullsUpdateReviewCommentRequest(
  body: body ?? this.body,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PullsUpdateReviewCommentRequest &&
          body == other.body; } 
@override int get hashCode { return body.hashCode; } 
@override String toString() { return 'PullsUpdateReviewCommentRequest(body: $body)'; } 
 }
