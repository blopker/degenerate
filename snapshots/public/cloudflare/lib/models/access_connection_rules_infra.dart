// GENERATED CODE - DO NOT MODIFY BY HAND

import 'access_connection_rules_ssh.dart';/// The rules that define how users may connect to the targets secured by your application.
final class AccessConnectionRulesInfra {const AccessConnectionRulesInfra({this.ssh});

factory AccessConnectionRulesInfra.fromJson(Map<String, dynamic> json) { return AccessConnectionRulesInfra(
  ssh: json['ssh'] != null ? AccessConnectionRulesSsh.fromJson(json['ssh'] as Map<String, dynamic>) : null,
); }

final AccessConnectionRulesSsh? ssh;

Map<String, dynamic> toJson() { return {
  if (ssh != null) 'ssh': ssh?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'ssh'}.contains(key)); } 
AccessConnectionRulesInfra copyWith({AccessConnectionRulesSsh Function()? ssh}) { return AccessConnectionRulesInfra(
  ssh: ssh != null ? ssh() : this.ssh,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessConnectionRulesInfra &&
          ssh == other.ssh; } 
@override int get hashCode { return ssh.hashCode; } 
@override String toString() { return 'AccessConnectionRulesInfra(ssh: $ssh)'; } 
 }
