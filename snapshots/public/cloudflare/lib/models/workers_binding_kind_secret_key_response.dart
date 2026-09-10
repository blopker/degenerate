// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_binding_name.dart';/// Data format of the key. [Learn more](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/importKey#format).
@immutable final class WorkersBindingKindSecretKeyResponseFormat {const WorkersBindingKindSecretKeyResponseFormat._(this.value);

factory WorkersBindingKindSecretKeyResponseFormat.fromJson(String json) {return switch (json) {
  'raw' => raw,
  'pkcs8' => pkcs8,
  'spki' => spki,
  'jwk' => jwk,
  _ => WorkersBindingKindSecretKeyResponseFormat._(json),
};}

static const WorkersBindingKindSecretKeyResponseFormat raw = WorkersBindingKindSecretKeyResponseFormat._('raw');

static const WorkersBindingKindSecretKeyResponseFormat pkcs8 = WorkersBindingKindSecretKeyResponseFormat._('pkcs8');

static const WorkersBindingKindSecretKeyResponseFormat spki = WorkersBindingKindSecretKeyResponseFormat._('spki');

static const WorkersBindingKindSecretKeyResponseFormat jwk = WorkersBindingKindSecretKeyResponseFormat._('jwk');

static const List<WorkersBindingKindSecretKeyResponseFormat> values = [raw, pkcs8, spki, jwk];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is WorkersBindingKindSecretKeyResponseFormat && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'WorkersBindingKindSecretKeyResponseFormat($value)';}
}
@immutable final class WorkersBindingKindSecretKeyResponseUsages {const WorkersBindingKindSecretKeyResponseUsages._(this.value);

factory WorkersBindingKindSecretKeyResponseUsages.fromJson(String json) {return switch (json) {
  'encrypt' => encrypt,
  'decrypt' => decrypt,
  'sign' => sign,
  'verify' => verify,
  'deriveKey' => deriveKey,
  'deriveBits' => deriveBits,
  'wrapKey' => wrapKey,
  'unwrapKey' => unwrapKey,
  _ => WorkersBindingKindSecretKeyResponseUsages._(json),
};}

static const WorkersBindingKindSecretKeyResponseUsages encrypt = WorkersBindingKindSecretKeyResponseUsages._('encrypt');

static const WorkersBindingKindSecretKeyResponseUsages decrypt = WorkersBindingKindSecretKeyResponseUsages._('decrypt');

static const WorkersBindingKindSecretKeyResponseUsages sign = WorkersBindingKindSecretKeyResponseUsages._('sign');

static const WorkersBindingKindSecretKeyResponseUsages verify = WorkersBindingKindSecretKeyResponseUsages._('verify');

static const WorkersBindingKindSecretKeyResponseUsages deriveKey = WorkersBindingKindSecretKeyResponseUsages._('deriveKey');

static const WorkersBindingKindSecretKeyResponseUsages deriveBits = WorkersBindingKindSecretKeyResponseUsages._('deriveBits');

static const WorkersBindingKindSecretKeyResponseUsages wrapKey = WorkersBindingKindSecretKeyResponseUsages._('wrapKey');

static const WorkersBindingKindSecretKeyResponseUsages unwrapKey = WorkersBindingKindSecretKeyResponseUsages._('unwrapKey');

static const List<WorkersBindingKindSecretKeyResponseUsages> values = [encrypt, decrypt, sign, verify, deriveKey, deriveBits, wrapKey, unwrapKey];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is WorkersBindingKindSecretKeyResponseUsages && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'WorkersBindingKindSecretKeyResponseUsages($value)';}
}
@immutable final class WorkersBindingKindSecretKeyResponse {const WorkersBindingKindSecretKeyResponse({required this.algorithm, required this.format, required this.name, required this.type, required this.usages, });

factory WorkersBindingKindSecretKeyResponse.fromJson(Map<String, dynamic> json) {return WorkersBindingKindSecretKeyResponse(
  algorithm: json['algorithm'] as Map<String, dynamic>,
  format: WorkersBindingKindSecretKeyResponseFormat.fromJson(json['format'] as String),
  name: WorkersBindingName.fromJson(json['name'] as String),
  type: json['type'] as String,
  usages: (json['usages'] as List<dynamic>).map((e) => WorkersBindingKindSecretKeyResponseUsages.fromJson(e as String)).toList(),
);}

/// Algorithm-specific key parameters. [Learn more](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/importKey#algorithm).
final Map<String,dynamic> algorithm;

/// Data format of the key. [Learn more](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/importKey#format).
final WorkersBindingKindSecretKeyResponseFormat format;

/// A JavaScript variable name for the binding.
final WorkersBindingName name;

/// The kind of resource that the binding provides.
final String type;

/// Allowed operations with the key. [Learn more](https://developer.mozilla.org/en-US/docs/Web/API/SubtleCrypto/importKey#keyUsages).
final List<WorkersBindingKindSecretKeyResponseUsages> usages;

Map<String, dynamic> toJson() {return {
  'algorithm': algorithm,
  'format': format.toJson(),
  'name': name.toJson(),
  'type': type,
  'usages': usages.map((e) => e.toJson()).toList(),
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('algorithm') &&
      json.containsKey('format') &&
      json.containsKey('name') &&
      json.containsKey('type') && json['type'] is String &&
      json.containsKey('usages');}
WorkersBindingKindSecretKeyResponse copyWith({Map<String,dynamic>? algorithm, WorkersBindingKindSecretKeyResponseFormat? format, WorkersBindingName? name, String? type, List<WorkersBindingKindSecretKeyResponseUsages>? usages, }) {return WorkersBindingKindSecretKeyResponse(
  algorithm: algorithm ?? this.algorithm,
  format: format ?? this.format,
  name: name ?? this.name,
  type: type ?? this.type,
  usages: usages ?? this.usages,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is WorkersBindingKindSecretKeyResponse &&
          algorithm == other.algorithm &&
          format == other.format &&
          name == other.name &&
          type == other.type &&
          listEquals(usages, other.usages);}
@override int get hashCode {return Object.hash(algorithm, format, name, type, Object.hashAll(usages));}
@override String toString() {return 'WorkersBindingKindSecretKeyResponse(algorithm: $algorithm, format: $format, name: $name, type: $type, usages: $usages)';}
}
