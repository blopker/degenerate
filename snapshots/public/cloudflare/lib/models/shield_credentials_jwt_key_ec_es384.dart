// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Key Type
@immutable final class ShieldCredentialsJwtKeyEcEs384Kty {const ShieldCredentialsJwtKeyEcEs384Kty._(this.value);

factory ShieldCredentialsJwtKeyEcEs384Kty.fromJson(String json) { return switch (json) {
  'EC' => ec,
  _ => ShieldCredentialsJwtKeyEcEs384Kty._(json),
}; }

static const ShieldCredentialsJwtKeyEcEs384Kty ec = ShieldCredentialsJwtKeyEcEs384Kty._('EC');

static const List<ShieldCredentialsJwtKeyEcEs384Kty> values = [ec];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ShieldCredentialsJwtKeyEcEs384Kty && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ShieldCredentialsJwtKeyEcEs384Kty($value)'; } 
 }
/// Algorithm
@immutable final class ShieldCredentialsJwtKeyEcEs384Alg {const ShieldCredentialsJwtKeyEcEs384Alg._(this.value);

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
@immutable final class ShieldCredentialsJwtKeyEcEs384Crv {const ShieldCredentialsJwtKeyEcEs384Crv._(this.value);

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
@immutable final class ShieldCredentialsJwtKeyEcEs384 {const ShieldCredentialsJwtKeyEcEs384({required this.kid, required this.kty, required this.x, required this.y, required this.alg, required this.crv, });

factory ShieldCredentialsJwtKeyEcEs384.fromJson(Map<String, dynamic> json) { return ShieldCredentialsJwtKeyEcEs384(
  kid: json['kid'] as String,
  kty: ShieldCredentialsJwtKeyEcEs384Kty.fromJson(json['kty'] as String),
  x: json['x'] as String,
  y: json['y'] as String,
  alg: ShieldCredentialsJwtKeyEcEs384Alg.fromJson(json['alg'] as String),
  crv: ShieldCredentialsJwtKeyEcEs384Crv.fromJson(json['crv'] as String),
); }

/// Key ID
final String kid;

/// Key Type
final ShieldCredentialsJwtKeyEcEs384Kty kty;

/// X EC coordinate
final String x;

/// Y EC coordinate
final String y;

/// Algorithm
final ShieldCredentialsJwtKeyEcEs384Alg alg;

/// Curve
final ShieldCredentialsJwtKeyEcEs384Crv crv;

Map<String, dynamic> toJson() { return {
  'kid': kid,
  'kty': kty.toJson(),
  'x': x,
  'y': y,
  'alg': alg.toJson(),
  'crv': crv.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('kid') && json['kid'] is String &&
      json.containsKey('kty') &&
      json.containsKey('x') && json['x'] is String &&
      json.containsKey('y') && json['y'] is String &&
      json.containsKey('alg') &&
      json.containsKey('crv'); } 
ShieldCredentialsJwtKeyEcEs384 copyWith({String? kid, ShieldCredentialsJwtKeyEcEs384Kty? kty, String? x, String? y, ShieldCredentialsJwtKeyEcEs384Alg? alg, ShieldCredentialsJwtKeyEcEs384Crv? crv, }) { return ShieldCredentialsJwtKeyEcEs384(
  kid: kid ?? this.kid,
  kty: kty ?? this.kty,
  x: x ?? this.x,
  y: y ?? this.y,
  alg: alg ?? this.alg,
  crv: crv ?? this.crv,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ShieldCredentialsJwtKeyEcEs384 &&
          kid == other.kid &&
          kty == other.kty &&
          x == other.x &&
          y == other.y &&
          alg == other.alg &&
          crv == other.crv; } 
@override int get hashCode { return Object.hash(kid, kty, x, y, alg, crv); } 
@override String toString() { return 'ShieldCredentialsJwtKeyEcEs384(kid: $kid, kty: $kty, x: $x, y: $y, alg: $alg, crv: $crv)'; } 
 }
