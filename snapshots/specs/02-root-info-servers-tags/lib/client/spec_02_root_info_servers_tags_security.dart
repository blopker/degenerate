// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';

final class Spec02RootInfoServersTagsSecurity {
  const Spec02RootInfoServersTagsSecurity._();

  static final securitySchemes = <String, ApiSecurityScheme>{
    'apiKeyAuth': ApiSecurityScheme(name: 'apiKeyAuth', type: ApiSecuritySchemeType.apiKey, scheme: null, bearerFormat: null, parameterName: 'x-api-key', location: ApiKeyLocation.header, openIdConnectUrl: null, flows: []),
  };

  static final globalRequirements = [ApiSecurityRequirement({}), ApiSecurityRequirement({'apiKeyAuth': []})];

  static ApiConfig applyApiKeyAuth(ApiConfig config, String value) => config.copyWith(defaultHeaders: {...config.defaultHeaders, 'x-api-key': value});

}
