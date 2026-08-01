// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhookRepositoryEditedChangesTopics {const WebhookRepositoryEditedChangesTopics({this.from = const Omittable.absent()});

factory WebhookRepositoryEditedChangesTopics.fromJson(Map<String, dynamic> json) { return WebhookRepositoryEditedChangesTopics(
  from: json.containsKey('from') ? Omittable((json['from'] as List<dynamic>?)?.map((e) => e as String).toList()) : const Omittable.absent(),
); }

final Omittable<List<String>?> from;

Map<String, dynamic> toJson() { return {
  if (from.isPresent) 'from': from.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'from'}.contains(key)); } 
WebhookRepositoryEditedChangesTopics copyWith({Omittable<List<String>?>? from}) { return WebhookRepositoryEditedChangesTopics(
  from: from ?? this.from,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookRepositoryEditedChangesTopics &&
          from.isPresent == other.from.isPresent &&
          listEquals(from.value, other.from.value); } 
@override int get hashCode { return Object.hashAll(from.value ?? const []).hashCode; } 
@override String toString() { return 'WebhookRepositoryEditedChangesTopics(from: $from)'; } 
 }
