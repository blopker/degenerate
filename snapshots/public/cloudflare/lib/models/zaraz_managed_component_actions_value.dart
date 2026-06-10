// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class ZarazManagedComponentActionsValue {const ZarazManagedComponentActionsValue({required this.actionType, required this.blockingTriggers, required this.data, required this.firingTriggers, });

factory ZarazManagedComponentActionsValue.fromJson(Map<String, dynamic> json) { return ZarazManagedComponentActionsValue(
  actionType: json['actionType'] as String,
  blockingTriggers: (json['blockingTriggers'] as List<dynamic>).map((e) => e as String).toList(),
  data: json['data'] as Map<String, dynamic>,
  firingTriggers: (json['firingTriggers'] as List<dynamic>).map((e) => e as String).toList(),
); }

/// Tool event type
final String actionType;

/// List of blocking triggers IDs
final List<String> blockingTriggers;

/// Event payload
final Map<String,dynamic> data;

/// List of firing triggers IDs
final List<String> firingTriggers;

Map<String, dynamic> toJson() { return {
  'actionType': actionType,
  'blockingTriggers': blockingTriggers,
  'data': data,
  'firingTriggers': firingTriggers,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('actionType') && json['actionType'] is String &&
      json.containsKey('blockingTriggers') &&
      json.containsKey('data') &&
      json.containsKey('firingTriggers'); } 
ZarazManagedComponentActionsValue copyWith({String? actionType, List<String>? blockingTriggers, Map<String,dynamic>? data, List<String>? firingTriggers, }) { return ZarazManagedComponentActionsValue(
  actionType: actionType ?? this.actionType,
  blockingTriggers: blockingTriggers ?? this.blockingTriggers,
  data: data ?? this.data,
  firingTriggers: firingTriggers ?? this.firingTriggers,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZarazManagedComponentActionsValue &&
          actionType == other.actionType &&
          listEquals(blockingTriggers, other.blockingTriggers) &&
          data == other.data &&
          listEquals(firingTriggers, other.firingTriggers); } 
@override int get hashCode { return Object.hash(actionType, Object.hashAll(blockingTriggers), data, Object.hashAll(firingTriggers)); } 
@override String toString() { return 'ZarazManagedComponentActionsValue(actionType: $actionType, blockingTriggers: $blockingTriggers, data: $data, firingTriggers: $firingTriggers)'; } 
 }
