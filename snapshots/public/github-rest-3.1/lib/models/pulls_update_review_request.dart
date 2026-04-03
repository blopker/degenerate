// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PullsUpdateReviewRequest {const PullsUpdateReviewRequest({required this.body});

factory PullsUpdateReviewRequest.fromJson(Map<String, dynamic> json) { return PullsUpdateReviewRequest(
  body: json['body'] as String,
); }

/// The body text of the pull request review.
final String body;

Map<String, dynamic> toJson() { return {
  'body': body,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('body') && json['body'] is String; } 
PullsUpdateReviewRequest copyWith({String? body}) { return PullsUpdateReviewRequest(
  body: body ?? this.body,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PullsUpdateReviewRequest &&
          body == other.body; } 
@override int get hashCode { return body.hashCode; } 
@override String toString() { return 'PullsUpdateReviewRequest(body: $body)'; } 
 }
