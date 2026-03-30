// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'mconn_controller_upgrade_slot.dart';final class MconnControllerFetchUpgradeSlotsResponse {const MconnControllerFetchUpgradeSlotsResponse({this.result});

factory MconnControllerFetchUpgradeSlotsResponse.fromJson(Map<String, dynamic> json) { return MconnControllerFetchUpgradeSlotsResponse(
  result: (json['result'] as List<dynamic>?)?.map((e) => MconnControllerUpgradeSlot.fromJson(e as Map<String, dynamic>)).toList(),
); }

final List<MconnControllerUpgradeSlot>? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
MconnControllerFetchUpgradeSlotsResponse copyWith({List<MconnControllerUpgradeSlot> Function()? result}) { return MconnControllerFetchUpgradeSlotsResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is MconnControllerFetchUpgradeSlotsResponse &&
          listEquals(result, other.result); } 
@override int get hashCode { return Object.hashAll(result ?? const []).hashCode; } 
@override String toString() { return 'MconnControllerFetchUpgradeSlotsResponse(result: $result)'; } 
 }
