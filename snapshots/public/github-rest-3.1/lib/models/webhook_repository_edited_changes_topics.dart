// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class WebhookRepositoryEditedChangesTopics {const WebhookRepositoryEditedChangesTopics({this.from});

factory WebhookRepositoryEditedChangesTopics.fromJson(Map<String, dynamic> json) { return WebhookRepositoryEditedChangesTopics(
  from: (json['from'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

final List<String>? from;

Map<String, dynamic> toJson() { return {
  'from': ?from,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'from'}.contains(key)); } 
WebhookRepositoryEditedChangesTopics copyWith({List<String>? Function()? from}) { return WebhookRepositoryEditedChangesTopics(
  from: from != null ? from() : this.from,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookRepositoryEditedChangesTopics &&
          listEquals(from, other.from); } 
@override int get hashCode { return Object.hashAll(from ?? const []).hashCode; } 
@override String toString() { return 'WebhookRepositoryEditedChangesTopics(from: $from)'; } 
 }
