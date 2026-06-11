// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AccessSchemasOnetimepinConfig {const AccessSchemasOnetimepinConfig({this.redirectUrl});

factory AccessSchemasOnetimepinConfig.fromJson(Map<String, dynamic> json) { return AccessSchemasOnetimepinConfig(
  redirectUrl: json['redirect_url'] as String?,
); }

final String? redirectUrl;

Map<String, dynamic> toJson() { return {
  'redirect_url': ?redirectUrl,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'redirect_url'}.contains(key)); } 
AccessSchemasOnetimepinConfig copyWith({String Function()? redirectUrl}) { return AccessSchemasOnetimepinConfig(
  redirectUrl: redirectUrl != null ? redirectUrl() : this.redirectUrl,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessSchemasOnetimepinConfig &&
          redirectUrl == other.redirectUrl; } 
@override int get hashCode { return redirectUrl.hashCode; } 
@override String toString() { return 'AccessSchemasOnetimepinConfig(redirectUrl: $redirectUrl)'; } 
 }
