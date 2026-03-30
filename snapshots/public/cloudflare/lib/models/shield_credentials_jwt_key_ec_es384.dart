// GENERATED CODE - DO NOT MODIFY BY HAND

/// Algorithm
final class ShieldCredentialsJwtKeyEcEs384Alg {const ShieldCredentialsJwtKeyEcEs384Alg._(this.value);

factory ShieldCredentialsJwtKeyEcEs384Alg.fromJson(String json) { return switch (json) {
  'ES384' => es384,
  _ => ShieldCredentialsJwtKeyEcEs384Alg._(json),
}; }

static const ShieldCredentialsJwtKeyEcEs384Alg es384 = ShieldCredentialsJwtKeyEcEs384Alg._('ES384');

static const List<ShieldCredentialsJwtKeyEcEs384Alg> values = [es384];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ShieldCredentialsJwtKeyEcEs384Alg && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ShieldCredentialsJwtKeyEcEs384Alg($value)'; } 
 }
/// Curve
final class ShieldCredentialsJwtKeyEcEs384Crv {const ShieldCredentialsJwtKeyEcEs384Crv._(this.value);

factory ShieldCredentialsJwtKeyEcEs384Crv.fromJson(String json) { return switch (json) {
  'P-384' => p384,
  _ => ShieldCredentialsJwtKeyEcEs384Crv._(json),
}; }

static const ShieldCredentialsJwtKeyEcEs384Crv p384 = ShieldCredentialsJwtKeyEcEs384Crv._('P-384');

static const List<ShieldCredentialsJwtKeyEcEs384Crv> values = [p384];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ShieldCredentialsJwtKeyEcEs384Crv && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ShieldCredentialsJwtKeyEcEs384Crv($value)'; } 
 }
/// JSON representation of an ES384 key
final class ShieldCredentialsJwtKeyEcEs384 {const ShieldCredentialsJwtKeyEcEs384({required this.kid, required this.alg, required this.crv, });

factory ShieldCredentialsJwtKeyEcEs384.fromJson(Map<String, dynamic> json) { return ShieldCredentialsJwtKeyEcEs384(
  kid: json['kid'] as String,
  alg: ShieldCredentialsJwtKeyEcEs384Alg.fromJson(json['alg'] as String),
  crv: ShieldCredentialsJwtKeyEcEs384Crv.fromJson(json['crv'] as String),
); }

/// Key ID
final String kid;

/// Algorithm
final ShieldCredentialsJwtKeyEcEs384Alg alg;

/// Curve
final ShieldCredentialsJwtKeyEcEs384Crv crv;

Map<String, dynamic> toJson() { return {
  'kid': kid,
  'alg': alg.toJson(),
  'crv': crv.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('kid') && json['kid'] is String &&
      json.containsKey('alg') &&
      json.containsKey('crv'); } 
ShieldCredentialsJwtKeyEcEs384 copyWith({String? kid, ShieldCredentialsJwtKeyEcEs384Alg? alg, ShieldCredentialsJwtKeyEcEs384Crv? crv, }) { return ShieldCredentialsJwtKeyEcEs384(
  kid: kid ?? this.kid,
  alg: alg ?? this.alg,
  crv: crv ?? this.crv,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ShieldCredentialsJwtKeyEcEs384 &&
          kid == other.kid &&
          alg == other.alg &&
          crv == other.crv; } 
@override int get hashCode { return Object.hash(kid, alg, crv); } 
@override String toString() { return 'ShieldCredentialsJwtKeyEcEs384(kid: $kid, alg: $alg, crv: $crv)'; } 
 }
