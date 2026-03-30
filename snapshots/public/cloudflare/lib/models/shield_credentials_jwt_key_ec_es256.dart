// GENERATED CODE - DO NOT MODIFY BY HAND

/// Algorithm
final class ShieldCredentialsJwtKeyEcEs256Alg {const ShieldCredentialsJwtKeyEcEs256Alg._(this.value);

factory ShieldCredentialsJwtKeyEcEs256Alg.fromJson(String json) { return switch (json) {
  'ES256' => es256,
  _ => ShieldCredentialsJwtKeyEcEs256Alg._(json),
}; }

static const ShieldCredentialsJwtKeyEcEs256Alg es256 = ShieldCredentialsJwtKeyEcEs256Alg._('ES256');

static const List<ShieldCredentialsJwtKeyEcEs256Alg> values = [es256];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ShieldCredentialsJwtKeyEcEs256Alg && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ShieldCredentialsJwtKeyEcEs256Alg($value)'; } 
 }
/// Curve
final class ShieldCredentialsJwtKeyEcEs256Crv {const ShieldCredentialsJwtKeyEcEs256Crv._(this.value);

factory ShieldCredentialsJwtKeyEcEs256Crv.fromJson(String json) { return switch (json) {
  'P-256' => p256,
  _ => ShieldCredentialsJwtKeyEcEs256Crv._(json),
}; }

static const ShieldCredentialsJwtKeyEcEs256Crv p256 = ShieldCredentialsJwtKeyEcEs256Crv._('P-256');

static const List<ShieldCredentialsJwtKeyEcEs256Crv> values = [p256];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ShieldCredentialsJwtKeyEcEs256Crv && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ShieldCredentialsJwtKeyEcEs256Crv($value)'; } 
 }
/// JSON representation of an ES256 key
final class ShieldCredentialsJwtKeyEcEs256 {const ShieldCredentialsJwtKeyEcEs256({required this.kid, required this.alg, required this.crv, });

factory ShieldCredentialsJwtKeyEcEs256.fromJson(Map<String, dynamic> json) { return ShieldCredentialsJwtKeyEcEs256(
  kid: json['kid'] as String,
  alg: ShieldCredentialsJwtKeyEcEs256Alg.fromJson(json['alg'] as String),
  crv: ShieldCredentialsJwtKeyEcEs256Crv.fromJson(json['crv'] as String),
); }

/// Key ID
final String kid;

/// Algorithm
final ShieldCredentialsJwtKeyEcEs256Alg alg;

/// Curve
final ShieldCredentialsJwtKeyEcEs256Crv crv;

Map<String, dynamic> toJson() { return {
  'kid': kid,
  'alg': alg.toJson(),
  'crv': crv.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('kid') && json['kid'] is String &&
      json.containsKey('alg') &&
      json.containsKey('crv'); } 
ShieldCredentialsJwtKeyEcEs256 copyWith({String? kid, ShieldCredentialsJwtKeyEcEs256Alg? alg, ShieldCredentialsJwtKeyEcEs256Crv? crv, }) { return ShieldCredentialsJwtKeyEcEs256(
  kid: kid ?? this.kid,
  alg: alg ?? this.alg,
  crv: crv ?? this.crv,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ShieldCredentialsJwtKeyEcEs256 &&
          kid == other.kid &&
          alg == other.alg &&
          crv == other.crv; } 
@override int get hashCode { return Object.hash(kid, alg, crv); } 
@override String toString() { return 'ShieldCredentialsJwtKeyEcEs256(kid: $kid, alg: $alg, crv: $crv)'; } 
 }
