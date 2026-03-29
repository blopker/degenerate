// GENERATED CODE - DO NOT MODIFY BY HAND

final class IssuesUpdateCommentRequest {const IssuesUpdateCommentRequest({required this.body});

factory IssuesUpdateCommentRequest.fromJson(Map<String, dynamic> json) { return IssuesUpdateCommentRequest(
  body: json['body'] as String,
); }

/// The contents of the comment.
final String body;

Map<String, dynamic> toJson() { return {
  'body': body,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('body') && json['body'] is String; } 
IssuesUpdateCommentRequest copyWith({String? body}) { return IssuesUpdateCommentRequest(
  body: body ?? this.body,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuesUpdateCommentRequest &&
          body == other.body; } 
@override int get hashCode { return body.hashCode; } 
@override String toString() { return 'IssuesUpdateCommentRequest(body: $body)'; } 
 }
