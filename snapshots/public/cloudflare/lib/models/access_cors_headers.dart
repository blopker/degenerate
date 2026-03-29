// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'access_allow_all_headers.dart';import 'access_allow_all_methods.dart';import 'access_allow_all_origins.dart';import 'access_allow_credentials.dart';import 'access_allowed_methods2.dart';import 'access_max_age.dart';final class AccessCorsHeaders {const AccessCorsHeaders({this.allowAllHeaders, this.allowAllMethods, this.allowAllOrigins, this.allowCredentials, this.allowedHeaders, this.allowedMethods, this.allowedOrigins, this.maxAge, });

factory AccessCorsHeaders.fromJson(Map<String, dynamic> json) { return AccessCorsHeaders(
  allowAllHeaders: json['allow_all_headers'] != null ? AccessAllowAllHeaders.fromJson(json['allow_all_headers'] as bool) : null,
  allowAllMethods: json['allow_all_methods'] != null ? AccessAllowAllMethods.fromJson(json['allow_all_methods'] as bool) : null,
  allowAllOrigins: json['allow_all_origins'] != null ? AccessAllowAllOrigins.fromJson(json['allow_all_origins'] as bool) : null,
  allowCredentials: json['allow_credentials'] != null ? AccessAllowCredentials.fromJson(json['allow_credentials'] as bool) : null,
  allowedHeaders: (json['allowed_headers'] as List<dynamic>?)?.map((e) => e as String).toList(),
  allowedMethods: (json['allowed_methods'] as List<dynamic>?)?.map((e) => AccessAllowedMethods2.fromJson(e as String)).toList(),
  allowedOrigins: (json['allowed_origins'] as List<dynamic>?)?.map((e) => e as String).toList(),
  maxAge: json['max_age'] != null ? AccessMaxAge.fromJson(json['max_age'] as num) : null,
); }

/// Allows all HTTP request headers.
final AccessAllowAllHeaders? allowAllHeaders;

/// Allows all HTTP request methods.
final AccessAllowAllMethods? allowAllMethods;

/// Allows all origins.
final AccessAllowAllOrigins? allowAllOrigins;

/// When set to `true`, includes credentials (cookies, authorization headers, or TLS client certificates) with requests.
final AccessAllowCredentials? allowCredentials;

/// Allowed HTTP request headers.
final List<String>? allowedHeaders;

/// Allowed HTTP request methods.
final List<AccessAllowedMethods2>? allowedMethods;

/// Allowed origins.
final List<String>? allowedOrigins;

final AccessMaxAge? maxAge;

Map<String, dynamic> toJson() { return {
  if (allowAllHeaders != null) 'allow_all_headers': allowAllHeaders?.toJson(),
  if (allowAllMethods != null) 'allow_all_methods': allowAllMethods?.toJson(),
  if (allowAllOrigins != null) 'allow_all_origins': allowAllOrigins?.toJson(),
  if (allowCredentials != null) 'allow_credentials': allowCredentials?.toJson(),
  'allowed_headers': ?allowedHeaders,
  if (allowedMethods != null) 'allowed_methods': allowedMethods?.map((e) => e.toJson()).toList(),
  'allowed_origins': ?allowedOrigins,
  if (maxAge != null) 'max_age': maxAge?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
AccessCorsHeaders copyWith({AccessAllowAllHeaders Function()? allowAllHeaders, AccessAllowAllMethods Function()? allowAllMethods, AccessAllowAllOrigins Function()? allowAllOrigins, AccessAllowCredentials Function()? allowCredentials, List<String> Function()? allowedHeaders, List<AccessAllowedMethods2> Function()? allowedMethods, List<String> Function()? allowedOrigins, AccessMaxAge Function()? maxAge, }) { return AccessCorsHeaders(
  allowAllHeaders: allowAllHeaders != null ? allowAllHeaders() : this.allowAllHeaders,
  allowAllMethods: allowAllMethods != null ? allowAllMethods() : this.allowAllMethods,
  allowAllOrigins: allowAllOrigins != null ? allowAllOrigins() : this.allowAllOrigins,
  allowCredentials: allowCredentials != null ? allowCredentials() : this.allowCredentials,
  allowedHeaders: allowedHeaders != null ? allowedHeaders() : this.allowedHeaders,
  allowedMethods: allowedMethods != null ? allowedMethods() : this.allowedMethods,
  allowedOrigins: allowedOrigins != null ? allowedOrigins() : this.allowedOrigins,
  maxAge: maxAge != null ? maxAge() : this.maxAge,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessCorsHeaders &&
          allowAllHeaders == other.allowAllHeaders &&
          allowAllMethods == other.allowAllMethods &&
          allowAllOrigins == other.allowAllOrigins &&
          allowCredentials == other.allowCredentials &&
          listEquals(allowedHeaders, other.allowedHeaders) &&
          listEquals(allowedMethods, other.allowedMethods) &&
          listEquals(allowedOrigins, other.allowedOrigins) &&
          maxAge == other.maxAge; } 
@override int get hashCode { return Object.hash(allowAllHeaders, allowAllMethods, allowAllOrigins, allowCredentials, Object.hashAll(allowedHeaders ?? const []), Object.hashAll(allowedMethods ?? const []), Object.hashAll(allowedOrigins ?? const []), maxAge); } 
@override String toString() { return 'AccessCorsHeaders(allowAllHeaders: $allowAllHeaders, allowAllMethods: $allowAllMethods, allowAllOrigins: $allowAllOrigins, allowCredentials: $allowCredentials, allowedHeaders: $allowedHeaders, allowedMethods: $allowedMethods, allowedOrigins: $allowedOrigins, maxAge: $maxAge)'; } 
 }
