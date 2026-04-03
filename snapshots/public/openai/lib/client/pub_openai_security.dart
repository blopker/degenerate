// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';

final class PubOpenaiSecurity {
  const PubOpenaiSecurity._();

  static final securitySchemes = <String, ApiSecurityScheme>{
    'ApiKeyAuth': const ApiSecurityScheme(name: 'ApiKeyAuth', type: ApiSecuritySchemeType.http, scheme: 'bearer'),
  };

  static final globalRequirements = [const ApiSecurityRequirement({'ApiKeyAuth': []})];

  static ApiConfig applyApiKeyAuth(ApiConfig config, String token) => config.copyWith(defaultHeaders: {...config.defaultHeaders, 'Authorization': 'Bearer $token'});

}
