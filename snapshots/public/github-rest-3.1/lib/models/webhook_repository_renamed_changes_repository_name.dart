// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookRepositoryRenamedChangesRepositoryName {const WebhookRepositoryRenamedChangesRepositoryName({required this.from});

factory WebhookRepositoryRenamedChangesRepositoryName.fromJson(Map<String, dynamic> json) { return WebhookRepositoryRenamedChangesRepositoryName(
  from: json['from'] as String,
); }

final String from;

Map<String, dynamic> toJson() { return {
  'from': from,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('from') && json['from'] is String; } 
WebhookRepositoryRenamedChangesRepositoryName copyWith({String? from}) { return WebhookRepositoryRenamedChangesRepositoryName(
  from: from ?? this.from,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookRepositoryRenamedChangesRepositoryName &&
          from == other.from; } 
@override int get hashCode { return from.hashCode; } 
@override String toString() { return 'WebhookRepositoryRenamedChangesRepositoryName(from: $from)'; } 
 }
