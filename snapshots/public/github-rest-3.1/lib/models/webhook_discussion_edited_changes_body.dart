// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookDiscussionEditedChangesBody {const WebhookDiscussionEditedChangesBody({required this.from});

factory WebhookDiscussionEditedChangesBody.fromJson(Map<String, dynamic> json) { return WebhookDiscussionEditedChangesBody(
  from: json['from'] as String,
); }

final String from;

Map<String, dynamic> toJson() { return {
  'from': from,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('from') && json['from'] is String; } 
WebhookDiscussionEditedChangesBody copyWith({String? from}) { return WebhookDiscussionEditedChangesBody(
  from: from ?? this.from,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookDiscussionEditedChangesBody &&
          from == other.from; } 
@override int get hashCode { return from.hashCode; } 
@override String toString() { return 'WebhookDiscussionEditedChangesBody(from: $from)'; } 
 }
