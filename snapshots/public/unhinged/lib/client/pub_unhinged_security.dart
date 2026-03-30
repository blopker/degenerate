// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';
import 'package:degenerate_runtime/degenerate_runtime.dart';

final class PubUnhingedSecurity {
  const PubUnhingedSecurity._();

  static final securitySchemes = <String, ApiSecurityScheme>{
    'ectoplasmToken': ApiSecurityScheme(
      name: 'ectoplasmToken',
      type: ApiSecuritySchemeType.http,
      scheme: 'bearer',
      bearerFormat: 'ECT',
      parameterName: null,
      location: null,
      openIdConnectUrl: null,
      flows: [],
    ),
    'ectoplasmTokenLegacy': ApiSecurityScheme(
      name: 'ectoplasmTokenLegacy',
      type: ApiSecuritySchemeType.http,
      scheme: 'basic',
      bearerFormat: null,
      parameterName: null,
      location: null,
      openIdConnectUrl: null,
      flows: [],
    ),
    'goatOAuth': ApiSecurityScheme(
      name: 'goatOAuth',
      type: ApiSecuritySchemeType.oauth2,
      scheme: null,
      bearerFormat: null,
      parameterName: null,
      location: null,
      openIdConnectUrl: null,
      flows: [
        ApiOAuthFlow(
          type: ApiOAuthFlowType.authorizationCode,
          authorizationUrl: 'https://auth.bplm.gov/goat/authorize',
          tokenUrl: 'https://auth.bplm.gov/goat/token',
          refreshUrl: 'https://auth.bplm.gov/goat/refresh',
          deviceAuthorizationUrl: null,
          scopes: {
            'bleat:read': 'Read bleats',
            'delete': 'Scope named after HTTP method',
            '': 'Empty scope name',
            'scope with spaces': 'Spaces in scope name',
          },
        ),
        ApiOAuthFlow(
          type: ApiOAuthFlowType.deviceAuthorization,
          authorizationUrl: null,
          tokenUrl: 'https://auth.bplm.gov/goat/token',
          refreshUrl: null,
          deviceAuthorizationUrl: 'https://auth.bplm.gov/goat/device',
          scopes: {'bleat:read': 'Read bleats'},
        ),
      ],
    ),
  };

  static final globalRequirements = [
    ApiSecurityRequirement({'ectoplasmToken': []}),
    ApiSecurityRequirement({
      'goatOAuth': ['bleat:read', 'delete', ''],
    }),
  ];

  static ApiConfig applyEctoplasmToken(ApiConfig config, String token) =>
      config.copyWith(
        defaultHeaders: {
          ...config.defaultHeaders,
          'Authorization': 'Bearer $token',
        },
      );

  static ApiConfig applyEctoplasmTokenLegacy(
    ApiConfig config, {
    required String username,
    required String password,
  }) => config.copyWith(
    defaultHeaders: {
      ...config.defaultHeaders,
      'Authorization':
          'Basic ${base64Encode(utf8.encode('$username:$password'))}',
    },
  );
}
