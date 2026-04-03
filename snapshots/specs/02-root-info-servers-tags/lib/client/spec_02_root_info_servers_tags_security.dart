// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';

final class Spec02RootInfoServersTagsSecurity {
  const Spec02RootInfoServersTagsSecurity._();

  static final securitySchemes = <String, ApiSecurityScheme>{
    'apiKeyAuth': const ApiSecurityScheme(name: 'apiKeyAuth', type: ApiSecuritySchemeType.apiKey, parameterName: 'x-api-key', location: ApiKeyLocation.header),
  };

  static final globalRequirements = [const ApiSecurityRequirement({}), const ApiSecurityRequirement({'apiKeyAuth': []})];

  static ApiConfig applyApiKeyAuth(ApiConfig config, String value) => config.copyWith(defaultHeaders: {...config.defaultHeaders, 'x-api-key': value});

}
