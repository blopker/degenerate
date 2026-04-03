// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';
import 'package:degenerate_runtime/degenerate_runtime.dart';

final class PubUnhingedSecurity {
  const PubUnhingedSecurity._();

  static final securitySchemes = <String, ApiSecurityScheme>{
    'ectoplasmToken': const ApiSecurityScheme(
      name: 'ectoplasmToken',
      type: ApiSecuritySchemeType.http,
      scheme: 'bearer',
      bearerFormat: 'ECT',
    ),
    'ectoplasmTokenLegacy': const ApiSecurityScheme(
      name: 'ectoplasmTokenLegacy',
      type: ApiSecuritySchemeType.http,
      scheme: 'basic',
    ),
    'goatOAuth': const ApiSecurityScheme(
      name: 'goatOAuth',
      type: ApiSecuritySchemeType.oauth2,
      flows: [
        ApiOAuthFlow(
          type: ApiOAuthFlowType.authorizationCode,
          authorizationUrl: 'https://auth.bplm.gov/goat/authorize',
          tokenUrl: 'https://auth.bplm.gov/goat/token',
          refreshUrl: 'https://auth.bplm.gov/goat/refresh',
          scopes: {
            'bleat:read': 'Read bleats',
            'delete': 'Scope named after HTTP method',
            '': 'Empty scope name',
            'scope with spaces': 'Spaces in scope name',
          },
        ),
        ApiOAuthFlow(
          type: ApiOAuthFlowType.deviceAuthorization,
          tokenUrl: 'https://auth.bplm.gov/goat/token',
          deviceAuthorizationUrl: 'https://auth.bplm.gov/goat/device',
          scopes: {'bleat:read': 'Read bleats'},
        ),
      ],
    ),
  };

  static final globalRequirements = [
    const ApiSecurityRequirement({'ectoplasmToken': []}),
    const ApiSecurityRequirement({
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
