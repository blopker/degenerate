// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mconn_admin_upgrade_slot.dart';@immutable final class MconnAdminUpgradeSlotsReplaceResponse {const MconnAdminUpgradeSlotsReplaceResponse({this.result});

factory MconnAdminUpgradeSlotsReplaceResponse.fromJson(Map<String, dynamic> json) { return MconnAdminUpgradeSlotsReplaceResponse(
  result: (json['result'] as List<dynamic>?)?.map((e) => MconnAdminUpgradeSlot.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<MconnAdminUpgradeSlot>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MconnAdminUpgradeSlotsReplaceResponse copyWith({List<MconnAdminUpgradeSlot> Function()? result}) { return MconnAdminUpgradeSlotsReplaceResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnAdminUpgradeSlotsReplaceResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'MconnAdminUpgradeSlotsReplaceResponse(result: $result)'; } 
 }
