// GENERATED CODE - DO NOT MODIFY BY HAND

import 'firewall_notes.dart';import 'firewall_schemas_mode.dart';final class IpAccessRulesForAUserUpdateAnIpAccessRuleRequest {const IpAccessRulesForAUserUpdateAnIpAccessRuleRequest({this.mode, this.notes, });

factory IpAccessRulesForAUserUpdateAnIpAccessRuleRequest.fromJson(Map<String, dynamic> json) { return IpAccessRulesForAUserUpdateAnIpAccessRuleRequest(
  mode: json['mode'] != null ? FirewallSchemasMode.fromJson(json['mode'] as String) : null,
  notes: json['notes'] != null ? FirewallNotes.fromJson(json['notes'] as String) : null,
); }

/// The action to apply to a matched request.
final FirewallSchemasMode? mode;

/// An informative summary of the rule, typically used as a reminder or explanation.
final FirewallNotes? notes;

Map<String, dynamic> toJson() { return {
  if (mode != null) 'mode': mode?.toJson(),
  if (notes != null) 'notes': notes?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
IpAccessRulesForAUserUpdateAnIpAccessRuleRequest copyWith({FirewallSchemasMode Function()? mode, FirewallNotes Function()? notes, }) { return IpAccessRulesForAUserUpdateAnIpAccessRuleRequest(
  mode: mode != null ? mode() : this.mode,
  notes: notes != null ? notes() : this.notes,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IpAccessRulesForAUserUpdateAnIpAccessRuleRequest &&
          mode == other.mode &&
          notes == other.notes; } 
@override int get hashCode { return Object.hash(mode, notes); } 
@override String toString() { return 'IpAccessRulesForAUserUpdateAnIpAccessRuleRequest(mode: $mode, notes: $notes)'; } 
 }
