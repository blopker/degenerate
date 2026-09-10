// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'zero_trust_gateway_gateway_account_settings_request_settings.dart';/// Specify account settings.
@immutable final class ZeroTrustGatewayGatewayAccountSettingsRequest {const ZeroTrustGatewayGatewayAccountSettingsRequest({this.settings});

factory ZeroTrustGatewayGatewayAccountSettingsRequest.fromJson(Map<String, dynamic> json) { return ZeroTrustGatewayGatewayAccountSettingsRequest(
  settings: json['settings'] != null ? ZeroTrustGatewayGatewayAccountSettingsRequestSettings.fromJson(json['settings'] as Map<String, dynamic>) : null,
); }

/// Specify account settings.
final ZeroTrustGatewayGatewayAccountSettingsRequestSettings? settings;

Map<String, dynamic> toJson() { return {
  if (settings != null) 'settings': settings?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'settings'}.contains(key)); } 
ZeroTrustGatewayGatewayAccountSettingsRequest copyWith({ZeroTrustGatewayGatewayAccountSettingsRequestSettings? Function()? settings}) { return ZeroTrustGatewayGatewayAccountSettingsRequest(
  settings: settings != null ? settings() : this.settings,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustGatewayGatewayAccountSettingsRequest &&
          settings == other.settings; } 
@override int get hashCode { return settings.hashCode; } 
@override String toString() { return 'ZeroTrustGatewayGatewayAccountSettingsRequest(settings: $settings)'; } 
 }
