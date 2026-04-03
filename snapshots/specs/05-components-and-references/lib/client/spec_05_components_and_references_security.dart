// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';

final class Spec05ComponentsAndReferencesSecurity {
  const Spec05ComponentsAndReferencesSecurity._();

  static final securitySchemes = <String, ApiSecurityScheme>{
    'BearerAuth': const ApiSecurityScheme(name: 'BearerAuth', type: ApiSecuritySchemeType.http, scheme: 'bearer', bearerFormat: 'JWT'),
  };

  static ApiConfig applyBearerAuth(ApiConfig config, String token) => config.copyWith(defaultHeaders: {...config.defaultHeaders, 'Authorization': 'Bearer $token'});

}
