// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class RulesetsManagedTransformsRequestManagedRequestHeaders {const RulesetsManagedTransformsRequestManagedRequestHeaders({required this.enabled, required this.id, });

factory RulesetsManagedTransformsRequestManagedRequestHeaders.fromJson(Map<String, dynamic> json) {return RulesetsManagedTransformsRequestManagedRequestHeaders(
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
RulesetsManagedTransformsRequestManagedRequestHeaders copyWith({bool? enabled, dynamic Function()? id, }) {return RulesetsManagedTransformsRequestManagedRequestHeaders(
  enabled: enabled ?? this.enabled,
  id: id != null ? id() : this.id,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is RulesetsManagedTransformsRequestManagedRequestHeaders &&
          enabled == other.enabled &&
          id == other.id;}
@override int get hashCode {return Object.hash(enabled, id);}
@override String toString() {return 'RulesetsManagedTransformsRequestManagedRequestHeaders(enabled: $enabled, id: $id)';}
}
