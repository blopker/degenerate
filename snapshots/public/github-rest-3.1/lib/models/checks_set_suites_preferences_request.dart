// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'checks_set_suites_preferences_request_auto_trigger_checks.dart';@immutable final class ChecksSetSuitesPreferencesRequest {const ChecksSetSuitesPreferencesRequest({this.autoTriggerChecks});

factory ChecksSetSuitesPreferencesRequest.fromJson(Map<String, dynamic> json) { return ChecksSetSuitesPreferencesRequest(
  autoTriggerChecks: (json['auto_trigger_checks'] as List<dynamic>?)?.map((e) => ChecksSetSuitesPreferencesRequestAutoTriggerChecks.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// Enables or disables automatic creation of CheckSuite events upon pushes to the repository. Enabled by default.
final List<ChecksSetSuitesPreferencesRequestAutoTriggerChecks>? autoTriggerChecks;

Map<String, dynamic> toJson() { return {
  if (autoTriggerChecks != null) 'auto_trigger_checks': autoTriggerChecks?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'auto_trigger_checks'}.contains(key)); } 
ChecksSetSuitesPreferencesRequest copyWith({List<ChecksSetSuitesPreferencesRequestAutoTriggerChecks> Function()? autoTriggerChecks}) { return ChecksSetSuitesPreferencesRequest(
  autoTriggerChecks: autoTriggerChecks != null ? autoTriggerChecks() : this.autoTriggerChecks,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ChecksSetSuitesPreferencesRequest &&
          listEquals(autoTriggerChecks, other.autoTriggerChecks); } 
@override int get hashCode { return Object.hashAll(autoTriggerChecks ?? const []).hashCode; } 
@override String toString() { return 'ChecksSetSuitesPreferencesRequest(autoTriggerChecks: $autoTriggerChecks)'; } 
 }
