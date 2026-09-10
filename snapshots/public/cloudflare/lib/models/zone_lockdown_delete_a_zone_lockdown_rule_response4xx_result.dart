// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'firewall_lockdowns_components_schemas_id.dart';@immutable final class ZoneLockdownDeleteAZoneLockdownRuleResponse4xxResult {const ZoneLockdownDeleteAZoneLockdownRuleResponse4xxResult({this.id});

factory ZoneLockdownDeleteAZoneLockdownRuleResponse4xxResult.fromJson(Map<String, dynamic> json) {return ZoneLockdownDeleteAZoneLockdownRuleResponse4xxResult(
  id: json['id'] != null ? FirewallLockdownsComponentsSchemasId.fromJson(json['id'] as String) : null,
);}

/// The unique identifier of the Zone Lockdown rule.
final FirewallLockdownsComponentsSchemasId? id;

Map<String, dynamic> toJson() {return {
  if (id != null) 'id': id?.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.keys.any((key) => const {'id'}.contains(key));}
ZoneLockdownDeleteAZoneLockdownRuleResponse4xxResult copyWith({FirewallLockdownsComponentsSchemasId? Function()? id}) {return ZoneLockdownDeleteAZoneLockdownRuleResponse4xxResult(
  id: id != null ? id() : this.id,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is ZoneLockdownDeleteAZoneLockdownRuleResponse4xxResult &&
          id == other.id;}
@override int get hashCode {return id.hashCode;}
@override String toString() {return 'ZoneLockdownDeleteAZoneLockdownRuleResponse4xxResult(id: $id)';}
}
