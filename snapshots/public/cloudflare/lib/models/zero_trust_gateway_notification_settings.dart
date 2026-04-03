// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Configure the message the user's device shows during an antivirus scan.
@immutable final class ZeroTrustGatewayNotificationSettings {const ZeroTrustGatewayNotificationSettings({this.enabled, this.includeContext, this.msg, this.supportUrl, });

factory ZeroTrustGatewayNotificationSettings.fromJson(Map<String, dynamic> json) { return ZeroTrustGatewayNotificationSettings(
  enabled: json['enabled'] as bool?,
  includeContext: json['include_context'] as bool?,
  msg: json['msg'] as String?,
  supportUrl: json['support_url'] as String?,
); }

/// Specify whether to enable notifications.
final bool? enabled;

/// Specify whether to include context information as query parameters.
final bool? includeContext;

/// Specify the message to show in the notification.
final String? msg;

/// Specify a URL that directs users to more information. If unset, the notification opens a block page.
final String? supportUrl;

Map<String, dynamic> toJson() { return {
  'enabled': ?enabled,
  'include_context': ?includeContext,
  'msg': ?msg,
  'support_url': ?supportUrl,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'enabled', 'include_context', 'msg', 'support_url'}.contains(key)); } 
ZeroTrustGatewayNotificationSettings copyWith({bool Function()? enabled, bool Function()? includeContext, String Function()? msg, String Function()? supportUrl, }) { return ZeroTrustGatewayNotificationSettings(
  enabled: enabled != null ? enabled() : this.enabled,
  includeContext: includeContext != null ? includeContext() : this.includeContext,
  msg: msg != null ? msg() : this.msg,
  supportUrl: supportUrl != null ? supportUrl() : this.supportUrl,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustGatewayNotificationSettings &&
          enabled == other.enabled &&
          includeContext == other.includeContext &&
          msg == other.msg &&
          supportUrl == other.supportUrl; } 
@override int get hashCode { return Object.hash(enabled, includeContext, msg, supportUrl); } 
@override String toString() { return 'ZeroTrustGatewayNotificationSettings(enabled: $enabled, includeContext: $includeContext, msg: $msg, supportUrl: $supportUrl)'; } 
 }
