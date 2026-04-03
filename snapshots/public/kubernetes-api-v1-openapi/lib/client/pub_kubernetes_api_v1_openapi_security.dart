// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';

final class OpenapiSecurity {
  const OpenapiSecurity._();

  static final securitySchemes = <String, ApiSecurityScheme>{
    'BearerToken': const ApiSecurityScheme(name: 'BearerToken', type: ApiSecuritySchemeType.apiKey, parameterName: 'authorization', location: ApiKeyLocation.header),
  };

  static ApiConfig applyBearerToken(ApiConfig config, String value) => config.copyWith(defaultHeaders: {...config.defaultHeaders, 'authorization': value});

}
