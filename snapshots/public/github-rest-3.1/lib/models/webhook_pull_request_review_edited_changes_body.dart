// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookPullRequestReviewEditedChangesBody {const WebhookPullRequestReviewEditedChangesBody({required this.from});

factory WebhookPullRequestReviewEditedChangesBody.fromJson(Map<String, dynamic> json) { return WebhookPullRequestReviewEditedChangesBody(
  from: json['from'] as String,
); }

/// The previous version of the body if the action was `edited`.
final String from;

Map<String, dynamic> toJson() { return {
  'from': from,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('from') && json['from'] is String; } 
WebhookPullRequestReviewEditedChangesBody copyWith({String? from}) { return WebhookPullRequestReviewEditedChangesBody(
  from: from ?? this.from,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestReviewEditedChangesBody &&
          from == other.from; } 
@override int get hashCode { return from.hashCode; } 
@override String toString() { return 'WebhookPullRequestReviewEditedChangesBody(from: $from)'; } 
 }
