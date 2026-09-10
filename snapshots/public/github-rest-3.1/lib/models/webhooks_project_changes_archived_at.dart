// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhooksProjectChangesArchivedAt {const WebhooksProjectChangesArchivedAt({this.from = const Omittable.absent(), this.to = const Omittable.absent(), });

factory WebhooksProjectChangesArchivedAt.fromJson(Map<String, dynamic> json) { return WebhooksProjectChangesArchivedAt(
  from: json.containsKey('from') ? Omittable(json['from'] != null ? DateTime.parse(json['from'] as String) : null) : const Omittable.absent(),
  to: json.containsKey('to') ? Omittable(json['to'] != null ? DateTime.parse(json['to'] as String) : null) : const Omittable.absent(),
); }

final Omittable<DateTime?> from;

final Omittable<DateTime?> to;

Map<String, dynamic> toJson() { return {
  if (from.isPresent) 'from': from.value?.toIso8601String(),
  if (to.isPresent) 'to': to.value?.toIso8601String(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'from', 'to'}.contains(key)); } 
WebhooksProjectChangesArchivedAt copyWith({Omittable<DateTime?>? from, Omittable<DateTime?>? to, }) { return WebhooksProjectChangesArchivedAt(
  from: from ?? this.from,
  to: to ?? this.to,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhooksProjectChangesArchivedAt &&
          from == other.from &&
          to == other.to; } 
@override int get hashCode { return Object.hash(from, to); } 
@override String toString() { return 'WebhooksProjectChangesArchivedAt(from: $from, to: $to)'; } 
 }
