// GENERATED CODE - DO NOT MODIFY BY HAND

/// Define the settings for the Audit SSH action. Settable only for `l4` rules with `audit_ssh` action.
final class ZeroTrustGatewayRuleSettingsAuditSsh {const ZeroTrustGatewayRuleSettingsAuditSsh({this.commandLogging});

factory ZeroTrustGatewayRuleSettingsAuditSsh.fromJson(Map<String, dynamic> json) { return ZeroTrustGatewayRuleSettingsAuditSsh(
  commandLogging: json['command_logging'] as bool?,
); }

/// Enable SSH command logging.
final bool? commandLogging;

Map<String, dynamic> toJson() { return {
  'command_logging': ?commandLogging,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
ZeroTrustGatewayRuleSettingsAuditSsh copyWith({bool Function()? commandLogging}) { return ZeroTrustGatewayRuleSettingsAuditSsh(
  commandLogging: commandLogging != null ? commandLogging() : this.commandLogging,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustGatewayRuleSettingsAuditSsh &&
          commandLogging == other.commandLogging; } 
@override int get hashCode { return commandLogging.hashCode; } 
@override String toString() { return 'ZeroTrustGatewayRuleSettingsAuditSsh(commandLogging: $commandLogging)'; } 
 }
