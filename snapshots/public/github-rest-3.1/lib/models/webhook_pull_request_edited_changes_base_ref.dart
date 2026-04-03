// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookPullRequestEditedChangesBaseRef {const WebhookPullRequestEditedChangesBaseRef({required this.from});

factory WebhookPullRequestEditedChangesBaseRef.fromJson(Map<String, dynamic> json) { return WebhookPullRequestEditedChangesBaseRef(
  from: json['from'] as String,
); }

final String from;

Map<String, dynamic> toJson() { return {
  'from': from,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('from') && json['from'] is String; } 
WebhookPullRequestEditedChangesBaseRef copyWith({String? from}) { return WebhookPullRequestEditedChangesBaseRef(
  from: from ?? this.from,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookPullRequestEditedChangesBaseRef &&
          from == other.from; } 
@override int get hashCode { return from.hashCode; } 
@override String toString() { return 'WebhookPullRequestEditedChangesBaseRef(from: $from)'; } 
 }
