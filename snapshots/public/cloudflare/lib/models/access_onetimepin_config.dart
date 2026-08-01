// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AccessOnetimepinConfig {const AccessOnetimepinConfig({this.redirectUrl});

factory AccessOnetimepinConfig.fromJson(Map<String, dynamic> json) { return AccessOnetimepinConfig(
  redirectUrl: json['redirect_url'] as String?,
); }

final String? redirectUrl;

Map<String, dynamic> toJson() { return {
  'redirect_url': ?redirectUrl,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'redirect_url'}.contains(key)); } 
AccessOnetimepinConfig copyWith({String? Function()? redirectUrl}) { return AccessOnetimepinConfig(
  redirectUrl: redirectUrl != null ? redirectUrl() : this.redirectUrl,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessOnetimepinConfig &&
          redirectUrl == other.redirectUrl; } 
@override int get hashCode { return redirectUrl.hashCode; } 
@override String toString() { return 'AccessOnetimepinConfig(redirectUrl: $redirectUrl)'; } 
 }
