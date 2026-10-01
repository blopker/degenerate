// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';

final class Spec16ExoticSecuritySecurity {
  const Spec16ExoticSecuritySecurity._();

  static final securitySchemes = <String, ApiSecurityScheme>{
    'CookieAuth': const ApiSecurityScheme(name: 'CookieAuth', type: ApiSecuritySchemeType.apiKey, parameterName: 'sessionid', location: ApiKeyLocation.cookie),
    'QueryAuth': const ApiSecurityScheme(name: 'QueryAuth', type: ApiSecuritySchemeType.apiKey, parameterName: 'apiKey', location: ApiKeyLocation.query),
  };

  static final globalRequirements = <ApiSecurityRequirement>[const ApiSecurityRequirement({'CookieAuth': []})];

  static final secureReadRequirements = <ApiSecurityRequirement>[const ApiSecurityRequirement({'CookieAuth': [], 'QueryAuth': []})];
  static final maybeSecureReadRequirements = <ApiSecurityRequirement>[const ApiSecurityRequirement({}), const ApiSecurityRequirement({'CookieAuth': [], 'QueryAuth': []})];
  static final rouletteSecureReadRequirements = <ApiSecurityRequirement>[const ApiSecurityRequirement({}), const ApiSecurityRequirement({'CookieAuth': []}), const ApiSecurityRequirement({'QueryAuth': []}), const ApiSecurityRequirement({'CookieAuth': [], 'QueryAuth': []})];
  static final leastSecureReadRequirements = <ApiSecurityRequirement>[const ApiSecurityRequirement({'QueryAuth': []})];
  static final insecureReadRequirements = <ApiSecurityRequirement>[];

  static ApiConfig applyCookieAuth(ApiConfig config, String value) => config.copyWith(defaultCookies: {...config.defaultCookies, 'sessionid': value});

  static ApiConfig applyQueryAuth(ApiConfig config, String value) => config.copyWith(defaultQueryParameters: {...config.defaultQueryParameters, 'apiKey': value});

}
