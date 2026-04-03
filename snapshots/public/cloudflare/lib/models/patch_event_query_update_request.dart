// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PatchEventQueryUpdateRequest {const PatchEventQueryUpdateRequest({this.alertEnabled, this.alertRollupEnabled, this.name, this.queryJson, this.ruleEnabled, this.ruleScope, });

factory PatchEventQueryUpdateRequest.fromJson(Map<String, dynamic> json) { return PatchEventQueryUpdateRequest(
  alertEnabled: json['alert_enabled'] as bool?,
  alertRollupEnabled: json['alert_rollup_enabled'] as bool?,
  name: json['name'] as String?,
  queryJson: json['query_json'] as String?,
  ruleEnabled: json['rule_enabled'] as bool?,
  ruleScope: json['rule_scope'] as String?,
); }

/// Enable alerts for this query
final bool? alertEnabled;

/// Enable alert rollup for this query
final bool? alertRollupEnabled;

/// Unique name for the saved query
final String? name;

/// JSON string containing the query parameters
final String? queryJson;

/// Enable rule for this query
final bool? ruleEnabled;

/// Scope for the rule
final String? ruleScope;

Map<String, dynamic> toJson() { return {
  'alert_enabled': ?alertEnabled,
  'alert_rollup_enabled': ?alertRollupEnabled,
  'name': ?name,
  'query_json': ?queryJson,
  'rule_enabled': ?ruleEnabled,
  'rule_scope': ?ruleScope,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'alert_enabled', 'alert_rollup_enabled', 'name', 'query_json', 'rule_enabled', 'rule_scope'}.contains(key)); } 
PatchEventQueryUpdateRequest copyWith({bool Function()? alertEnabled, bool Function()? alertRollupEnabled, String Function()? name, String Function()? queryJson, bool Function()? ruleEnabled, String Function()? ruleScope, }) { return PatchEventQueryUpdateRequest(
  alertEnabled: alertEnabled != null ? alertEnabled() : this.alertEnabled,
  alertRollupEnabled: alertRollupEnabled != null ? alertRollupEnabled() : this.alertRollupEnabled,
  name: name != null ? name() : this.name,
  queryJson: queryJson != null ? queryJson() : this.queryJson,
  ruleEnabled: ruleEnabled != null ? ruleEnabled() : this.ruleEnabled,
  ruleScope: ruleScope != null ? ruleScope() : this.ruleScope,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PatchEventQueryUpdateRequest &&
          alertEnabled == other.alertEnabled &&
          alertRollupEnabled == other.alertRollupEnabled &&
          name == other.name &&
          queryJson == other.queryJson &&
          ruleEnabled == other.ruleEnabled &&
          ruleScope == other.ruleScope; } 
@override int get hashCode { return Object.hash(alertEnabled, alertRollupEnabled, name, queryJson, ruleEnabled, ruleScope); } 
@override String toString() { return 'PatchEventQueryUpdateRequest(alertEnabled: $alertEnabled, alertRollupEnabled: $alertRollupEnabled, name: $name, queryJson: $queryJson, ruleEnabled: $ruleEnabled, ruleScope: $ruleScope)'; } 
 }
