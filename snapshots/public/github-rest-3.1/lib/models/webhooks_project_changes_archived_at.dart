// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class WebhooksProjectChangesArchivedAt {const WebhooksProjectChangesArchivedAt({this.from, this.to, });

factory WebhooksProjectChangesArchivedAt.fromJson(Map<String, dynamic> json) { return WebhooksProjectChangesArchivedAt(
  from: json['from'] != null ? DateTime.parse(json['from'] as String) : null,
  to: json['to'] != null ? DateTime.parse(json['to'] as String) : null,
); }

final DateTime? from;

final DateTime? to;

Map<String, dynamic> toJson() { return {
  if (from != null) 'from': from?.toIso8601String(),
  if (to != null) 'to': to?.toIso8601String(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'from', 'to'}.contains(key)); } 
WebhooksProjectChangesArchivedAt copyWith({DateTime? Function()? from, DateTime? Function()? to, }) { return WebhooksProjectChangesArchivedAt(
  from: from != null ? from() : this.from,
  to: to != null ? to() : this.to,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhooksProjectChangesArchivedAt &&
          from == other.from &&
          to == other.to; } 
@override int get hashCode { return Object.hash(from, to); } 
@override String toString() { return 'WebhooksProjectChangesArchivedAt(from: $from, to: $to)'; } 
 }
