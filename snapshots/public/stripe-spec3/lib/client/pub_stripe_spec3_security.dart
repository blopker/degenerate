// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';
import 'package:degenerate_runtime/degenerate_runtime.dart';

final class PubStripeSpec3Security {
  const PubStripeSpec3Security._();

  static final securitySchemes = <String, ApiSecurityScheme>{
    'basicAuth': const ApiSecurityScheme(name: 'basicAuth', type: ApiSecuritySchemeType.http, scheme: 'basic'),
    'bearerAuth': const ApiSecurityScheme(name: 'bearerAuth', type: ApiSecuritySchemeType.http, scheme: 'bearer', bearerFormat: 'auth-scheme'),
  };

  static final globalRequirements = [const ApiSecurityRequirement({'basicAuth': []}), const ApiSecurityRequirement({'bearerAuth': []})];

  static ApiConfig applyBasicAuth(ApiConfig config, {required String username, required String password}) => config.copyWith(defaultHeaders: {...config.defaultHeaders, 'Authorization': 'Basic ${base64Encode(utf8.encode('$username:$password'))}'});

  static ApiConfig applyBearerAuth(ApiConfig config, String token) => config.copyWith(defaultHeaders: {...config.defaultHeaders, 'Authorization': 'Bearer $token'});

}
