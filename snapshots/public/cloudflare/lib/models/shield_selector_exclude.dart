// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'shield_uuid.dart';final class ShieldSelectorExclude {const ShieldSelectorExclude({this.operationIds});

factory ShieldSelectorExclude.fromJson(Map<String, dynamic> json) { return ShieldSelectorExclude(
  operationIds: (json['operation_ids'] as List<dynamic>?)?.map((e) => ShieldUuid.fromJson(e as String)).toList(),
); }

/// Excluded operation IDs.
final List<ShieldUuid>? operationIds;

Map<String, dynamic> toJson() { return {
  if (operationIds != null) 'operation_ids': operationIds?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'operation_ids'}.contains(key)); } 
ShieldSelectorExclude copyWith({List<ShieldUuid> Function()? operationIds}) { return ShieldSelectorExclude(
  operationIds: operationIds != null ? operationIds() : this.operationIds,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ShieldSelectorExclude &&
          listEquals(operationIds, other.operationIds); } 
@override int get hashCode { return Object.hashAll(operationIds ?? const []).hashCode; } 
@override String toString() { return 'ShieldSelectorExclude(operationIds: $operationIds)'; } 
 }
