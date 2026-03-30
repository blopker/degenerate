// GENERATED CODE - DO NOT MODIFY BY HAND

/// Algorithm
final class ShieldCredentialsJwtKeyRsaAlg {const ShieldCredentialsJwtKeyRsaAlg._(this.value);

factory ShieldCredentialsJwtKeyRsaAlg.fromJson(String json) { return switch (json) {
  'RS256' => rs256,
  'RS384' => rs384,
  'RS512' => rs512,
  'PS256' => ps256,
  'PS384' => ps384,
  'PS512' => ps512,
  _ => ShieldCredentialsJwtKeyRsaAlg._(json),
}; }

static const ShieldCredentialsJwtKeyRsaAlg rs256 = ShieldCredentialsJwtKeyRsaAlg._('RS256');

static const ShieldCredentialsJwtKeyRsaAlg rs384 = ShieldCredentialsJwtKeyRsaAlg._('RS384');

static const ShieldCredentialsJwtKeyRsaAlg rs512 = ShieldCredentialsJwtKeyRsaAlg._('RS512');

static const ShieldCredentialsJwtKeyRsaAlg ps256 = ShieldCredentialsJwtKeyRsaAlg._('PS256');

static const ShieldCredentialsJwtKeyRsaAlg ps384 = ShieldCredentialsJwtKeyRsaAlg._('PS384');

static const ShieldCredentialsJwtKeyRsaAlg ps512 = ShieldCredentialsJwtKeyRsaAlg._('PS512');

static const List<ShieldCredentialsJwtKeyRsaAlg> values = [rs256, rs384, rs512, ps256, ps384, ps512];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ShieldCredentialsJwtKeyRsaAlg && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ShieldCredentialsJwtKeyRsaAlg($value)'; } 
 }
/// Key Type
final class ShieldCredentialsJwtKeyRsaKty {const ShieldCredentialsJwtKeyRsaKty._(this.value);

factory ShieldCredentialsJwtKeyRsaKty.fromJson(String json) { return switch (json) {
  'RSA' => rsa,
  _ => ShieldCredentialsJwtKeyRsaKty._(json),
}; }

static const ShieldCredentialsJwtKeyRsaKty rsa = ShieldCredentialsJwtKeyRsaKty._('RSA');

static const List<ShieldCredentialsJwtKeyRsaKty> values = [rsa];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ShieldCredentialsJwtKeyRsaKty && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ShieldCredentialsJwtKeyRsaKty($value)'; } 
 }
/// JSON representation of an RSA key.
final class ShieldCredentialsJwtKeyRsa {const ShieldCredentialsJwtKeyRsa({required this.kid, required this.alg, required this.e, required this.kty, required this.n, });

factory ShieldCredentialsJwtKeyRsa.fromJson(Map<String, dynamic> json) { return ShieldCredentialsJwtKeyRsa(
  kid: json['kid'] as String,
  alg: ShieldCredentialsJwtKeyRsaAlg.fromJson(json['alg'] as String),
  e: json['e'] as String,
  kty: ShieldCredentialsJwtKeyRsaKty.fromJson(json['kty'] as String),
  n: json['n'] as String,
); }

/// Key ID
final String kid;

/// Algorithm
final ShieldCredentialsJwtKeyRsaAlg alg;

/// RSA exponent
final String e;

/// Key Type
final ShieldCredentialsJwtKeyRsaKty kty;

/// RSA modulus
final String n;

Map<String, dynamic> toJson() { return {
  'kid': kid,
  'alg': alg.toJson(),
  'e': e,
  'kty': kty.toJson(),
  'n': n,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('kid') && json['kid'] is String &&
      json.containsKey('alg') &&
      json.containsKey('e') && json['e'] is String &&
      json.containsKey('kty') &&
      json.containsKey('n') && json['n'] is String; } 
ShieldCredentialsJwtKeyRsa copyWith({String? kid, ShieldCredentialsJwtKeyRsaAlg? alg, String? e, ShieldCredentialsJwtKeyRsaKty? kty, String? n, }) { return ShieldCredentialsJwtKeyRsa(
  kid: kid ?? this.kid,
  alg: alg ?? this.alg,
  e: e ?? this.e,
  kty: kty ?? this.kty,
  n: n ?? this.n,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ShieldCredentialsJwtKeyRsa &&
          kid == other.kid &&
          alg == other.alg &&
          e == other.e &&
          kty == other.kty &&
          n == other.n; } 
@override int get hashCode { return Object.hash(kid, alg, e, kty, n); } 
@override String toString() { return 'ShieldCredentialsJwtKeyRsa(kid: $kid, alg: $alg, e: $e, kty: $kty, n: $n)'; } 
 }
