// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';

final class OpenapiSecurity {
  const OpenapiSecurity._();

  static final securitySchemes = <String, ApiSecurityScheme>{
    'BearerToken': ApiSecurityScheme(name: 'BearerToken', type: ApiSecuritySchemeType.apiKey, scheme: null, bearerFormat: null, parameterName: 'authorization', location: ApiKeyLocation.header, openIdConnectUrl: null, flows: []),
  };

  static ApiConfig applyBearerToken(ApiConfig config, String value) => config.copyWith(defaultHeaders: {...config.defaultHeaders, 'authorization': value});

}
