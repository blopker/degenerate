// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookProjectEditedChangesName {const WebhookProjectEditedChangesName({required this.from});

factory WebhookProjectEditedChangesName.fromJson(Map<String, dynamic> json) { return WebhookProjectEditedChangesName(
  from: json['from'] as String,
); }

/// The changes to the project if the action was `edited`.
final String from;

Map<String, dynamic> toJson() { return {
  'from': from,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('from') && json['from'] is String; } 
WebhookProjectEditedChangesName copyWith({String? from}) { return WebhookProjectEditedChangesName(
  from: from ?? this.from,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookProjectEditedChangesName &&
          from == other.from; } 
@override int get hashCode { return from.hashCode; } 
@override String toString() { return 'WebhookProjectEditedChangesName(from: $from)'; } 
 }
