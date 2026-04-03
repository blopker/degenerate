// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookPullRequestEditedChangesBody {const WebhookPullRequestEditedChangesBody({required this.from});

factory WebhookPullRequestEditedChangesBody.fromJson(Map<String, dynamic> json) { return WebhookPullRequestEditedChangesBody(
  from: json['from'] as String,
); }

/// The previous version of the body if the action was `edited`.
final String from;

Map<String, dynamic> toJson() { return {
  'from': from,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('from') && json['from'] is String; } 
WebhookPullRequestEditedChangesBody copyWith({String? from}) { return WebhookPullRequestEditedChangesBody(
  from: from ?? this.from,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestEditedChangesBody &&
          from == other.from; } 
@override int get hashCode { return from.hashCode; } 
@override String toString() { return 'WebhookPullRequestEditedChangesBody(from: $from)'; } 
 }
