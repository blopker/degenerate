// GENERATED CODE - DO NOT MODIFY BY HAND

final class AccessSchemasOidcSaasAppRefreshTokenOptions {const AccessSchemasOidcSaasAppRefreshTokenOptions({this.lifetime});

factory AccessSchemasOidcSaasAppRefreshTokenOptions.fromJson(Map<String, dynamic> json) { return AccessSchemasOidcSaasAppRefreshTokenOptions(
  lifetime: json['lifetime'] as String?,
); }

/// How long a refresh token will be valid for after creation. Valid units are m,h,d. Must be longer than 1m.
final String? lifetime;

Map<String, dynamic> toJson() { return {
  'lifetime': ?lifetime,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'lifetime'}.contains(key)); } 
AccessSchemasOidcSaasAppRefreshTokenOptions copyWith({String Function()? lifetime}) { return AccessSchemasOidcSaasAppRefreshTokenOptions(
  lifetime: lifetime != null ? lifetime() : this.lifetime,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessSchemasOidcSaasAppRefreshTokenOptions &&
          lifetime == other.lifetime; } 
@override int get hashCode { return lifetime.hashCode; } 
@override String toString() { return 'AccessSchemasOidcSaasAppRefreshTokenOptions(lifetime: $lifetime)'; } 
 }
