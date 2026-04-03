// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_target_criteria_self_hosted_app.dart';import 'access_type.dart';@immutable final class AccessRdpProps {const AccessRdpProps({required this.targetCriteria, this.type, });

factory AccessRdpProps.fromJson(Map<String, dynamic> json) { return AccessRdpProps(
  targetCriteria: (json['target_criteria'] as List<dynamic>).map((e) => AccessTargetCriteriaSelfHostedApp.fromJson(e as Map<String, dynamic>)).toList(),
  type: json['type'] != null ? AccessType.fromJson(json['type'] as String) : null,
); }

final List<AccessTargetCriteriaSelfHostedApp> targetCriteria;

final AccessType? type;

Map<String, dynamic> toJson() { return {
  'target_criteria': targetCriteria.map((e) => e.toJson()).toList(),
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('target_criteria'); } 
AccessRdpProps copyWith({List<AccessTargetCriteriaSelfHostedApp>? targetCriteria, AccessType Function()? type, }) { return AccessRdpProps(
  targetCriteria: targetCriteria ?? this.targetCriteria,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessRdpProps &&
          listEquals(targetCriteria, other.targetCriteria) &&
          type == other.type; } 
@override int get hashCode { return Object.hash(Object.hashAll(targetCriteria), type); } 
@override String toString() { return 'AccessRdpProps(targetCriteria: $targetCriteria, type: $type)'; } 
 }
