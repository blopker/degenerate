// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Specify Clientless Browser Isolation settings.
@immutable final class ZeroTrustGatewayBrowserIsolationSettings {const ZeroTrustGatewayBrowserIsolationSettings({this.nonIdentityEnabled, this.urlBrowserIsolationEnabled, });

factory ZeroTrustGatewayBrowserIsolationSettings.fromJson(Map<String, dynamic> json) { return ZeroTrustGatewayBrowserIsolationSettings(
  nonIdentityEnabled: json['non_identity_enabled'] as bool?,
  urlBrowserIsolationEnabled: json['url_browser_isolation_enabled'] as bool?,
); }

/// Specify whether to enable non-identity onramp support for Browser Isolation.
final bool? nonIdentityEnabled;

/// Specify whether to enable Clientless Browser Isolation.
final bool? urlBrowserIsolationEnabled;

Map<String, dynamic> toJson() { return {
  'non_identity_enabled': ?nonIdentityEnabled,
  'url_browser_isolation_enabled': ?urlBrowserIsolationEnabled,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'non_identity_enabled', 'url_browser_isolation_enabled'}.contains(key)); } 
ZeroTrustGatewayBrowserIsolationSettings copyWith({bool Function()? nonIdentityEnabled, bool Function()? urlBrowserIsolationEnabled, }) { return ZeroTrustGatewayBrowserIsolationSettings(
  nonIdentityEnabled: nonIdentityEnabled != null ? nonIdentityEnabled() : this.nonIdentityEnabled,
  urlBrowserIsolationEnabled: urlBrowserIsolationEnabled != null ? urlBrowserIsolationEnabled() : this.urlBrowserIsolationEnabled,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustGatewayBrowserIsolationSettings &&
          nonIdentityEnabled == other.nonIdentityEnabled &&
          urlBrowserIsolationEnabled == other.urlBrowserIsolationEnabled; } 
@override int get hashCode { return Object.hash(nonIdentityEnabled, urlBrowserIsolationEnabled); } 
@override String toString() { return 'ZeroTrustGatewayBrowserIsolationSettings(nonIdentityEnabled: $nonIdentityEnabled, urlBrowserIsolationEnabled: $urlBrowserIsolationEnabled)'; } 
 }
