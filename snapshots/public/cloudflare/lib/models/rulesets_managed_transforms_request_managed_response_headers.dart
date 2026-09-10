// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RulesetsManagedTransformsRequestManagedResponseHeaders {const RulesetsManagedTransformsRequestManagedResponseHeaders({required this.enabled, required this.id, });

factory RulesetsManagedTransformsRequestManagedResponseHeaders.fromJson(Map<String, dynamic> json) {return RulesetsManagedTransformsRequestManagedResponseHeaders(
  enabled: json['enabled'] as bool,
  id: json['id'],
);}

/// Whether the Managed Transform is enabled.
final bool enabled;

final dynamic id;

Map<String, dynamic> toJson() {return {
  'enabled': enabled,
  'id': id,
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('enabled') && json['enabled'] is bool &&
      json.containsKey('id');}
RulesetsManagedTransformsRequestManagedResponseHeaders copyWith({bool? enabled, dynamic Function()? id, }) {return RulesetsManagedTransformsRequestManagedResponseHeaders(
  enabled: enabled ?? this.enabled,
  id: id != null ? id() : this.id,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is RulesetsManagedTransformsRequestManagedResponseHeaders &&
          enabled == other.enabled &&
          id == other.id;}
@override int get hashCode {return Object.hash(enabled, id);}
@override String toString() {return 'RulesetsManagedTransformsRequestManagedResponseHeaders(enabled: $enabled, id: $id)';}
}
