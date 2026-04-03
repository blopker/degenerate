// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';
import 'package:degenerate_runtime/degenerate_runtime.dart';

final class Spec06SecuritySchemesAndRequirementsSecurity {
  const Spec06SecuritySchemesAndRequirementsSecurity._();

  static final securitySchemes = <String, ApiSecurityScheme>{
    'ApiKeyAuth': const ApiSecurityScheme(name: 'ApiKeyAuth', type: ApiSecuritySchemeType.apiKey, parameterName: 'x-api-key', location: ApiKeyLocation.header),
    'HttpBasic': const ApiSecurityScheme(name: 'HttpBasic', type: ApiSecuritySchemeType.http, scheme: 'basic'),
    'HttpBearer': const ApiSecurityScheme(name: 'HttpBearer', type: ApiSecuritySchemeType.http, scheme: 'bearer', bearerFormat: 'JWT'),
    'MutualTLS': const ApiSecurityScheme(name: 'MutualTLS', type: ApiSecuritySchemeType.mutualTls),
    'OAuth2Auth': const ApiSecurityScheme(name: 'OAuth2Auth', type: ApiSecuritySchemeType.oauth2, flows: [ApiOAuthFlow(type: ApiOAuthFlowType.implicit, authorizationUrl: 'https://auth.example.com/authorize', scopes: {'read:items': 'Read items'}), ApiOAuthFlow(type: ApiOAuthFlowType.password, tokenUrl: 'https://auth.example.com/token', scopes: {'write:items': 'Write items'}), ApiOAuthFlow(type: ApiOAuthFlowType.clientCredentials, tokenUrl: 'https://auth.example.com/token', scopes: {'admin': 'Admin access'}), ApiOAuthFlow(type: ApiOAuthFlowType.authorizationCode, authorizationUrl: 'https://auth.example.com/authorize', tokenUrl: 'https://auth.example.com/token', refreshUrl: 'https://auth.example.com/refresh', scopes: {'read:items': 'Read items', 'write:items': 'Write items'})]),
    'OpenId': const ApiSecurityScheme(name: 'OpenId', type: ApiSecuritySchemeType.openIdConnect, openIdConnectUrl: 'https://auth.example.com/.well-known/openid-configuration'),
  };

  static final globalRequirements = [const ApiSecurityRequirement({'ApiKeyAuth': []}), const ApiSecurityRequirement({'OAuth2Auth': ['read:items']})];

  static final secureReadRequirements = [const ApiSecurityRequirement({'HttpBearer': []}), const ApiSecurityRequirement({'MutualTLS': []}), const ApiSecurityRequirement({'OpenId': []})];

  static ApiConfig applyApiKeyAuth(ApiConfig config, String value) => config.copyWith(defaultHeaders: {...config.defaultHeaders, 'x-api-key': value});

  static ApiConfig applyHttpBasic(ApiConfig config, {required String username, required String password}) => config.copyWith(defaultHeaders: {...config.defaultHeaders, 'Authorization': 'Basic ${base64Encode(utf8.encode('$username:$password'))}'});

  static ApiConfig applyHttpBearer(ApiConfig config, String token) => config.copyWith(defaultHeaders: {...config.defaultHeaders, 'Authorization': 'Bearer $token'});

}
