// GENERATED CODE - DO NOT MODIFY BY HAND

/// Configure a notification to display on the user's device when this rule matched. Settable for all types of rules with the action set to `block`.
final class ZeroTrustGatewayRuleSettingsNotificationSettings {const ZeroTrustGatewayRuleSettingsNotificationSettings({this.enabled, this.includeContext, this.msg, this.supportUrl, });

factory ZeroTrustGatewayRuleSettingsNotificationSettings.fromJson(Map<String, dynamic> json) { return ZeroTrustGatewayRuleSettingsNotificationSettings(
  enabled: json['enabled'] as bool?,
  includeContext: json['include_context'] as bool?,
  msg: json['msg'] as String?,
  supportUrl: json['support_url'] as String?,
); }

/// Enable notification.
final bool? enabled;

/// Indicates whether to pass the context information as query parameters.
final bool? includeContext;

/// Customize the message shown in the notification.
final String? msg;

/// Defines an optional URL to direct users to additional information. If unset, the notification opens a block page.
final String? supportUrl;

Map<String, dynamic> toJson() { return {
  'enabled': ?enabled,
  'include_context': ?includeContext,
  'msg': ?msg,
  'support_url': ?supportUrl,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
ZeroTrustGatewayRuleSettingsNotificationSettings copyWith({bool Function()? enabled, bool Function()? includeContext, String Function()? msg, String Function()? supportUrl, }) { return ZeroTrustGatewayRuleSettingsNotificationSettings(
  enabled: enabled != null ? enabled() : this.enabled,
  includeContext: includeContext != null ? includeContext() : this.includeContext,
  msg: msg != null ? msg() : this.msg,
  supportUrl: supportUrl != null ? supportUrl() : this.supportUrl,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustGatewayRuleSettingsNotificationSettings &&
          enabled == other.enabled &&
          includeContext == other.includeContext &&
          msg == other.msg &&
          supportUrl == other.supportUrl; } 
@override int get hashCode { return Object.hash(enabled, includeContext, msg, supportUrl); } 
@override String toString() { return 'ZeroTrustGatewayRuleSettingsNotificationSettings(enabled: $enabled, includeContext: $includeContext, msg: $msg, supportUrl: $supportUrl)'; } 
 }
