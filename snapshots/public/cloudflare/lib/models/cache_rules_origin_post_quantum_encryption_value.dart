// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Value of the Origin Post Quantum Encryption Setting.
@immutable final class CacheRulesOriginPostQuantumEncryptionValue {const CacheRulesOriginPostQuantumEncryptionValue._(this.value);

factory CacheRulesOriginPostQuantumEncryptionValue.fromJson(String json) { return switch (json) {
  'preferred' => preferred,
  'supported' => supported,
  'off' => off,
  _ => CacheRulesOriginPostQuantumEncryptionValue._(json),
}; }

static const CacheRulesOriginPostQuantumEncryptionValue preferred = CacheRulesOriginPostQuantumEncryptionValue._('preferred');

static const CacheRulesOriginPostQuantumEncryptionValue supported = CacheRulesOriginPostQuantumEncryptionValue._('supported');

static const CacheRulesOriginPostQuantumEncryptionValue off = CacheRulesOriginPostQuantumEncryptionValue._('off');

static const List<CacheRulesOriginPostQuantumEncryptionValue> values = [preferred, supported, off];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CacheRulesOriginPostQuantumEncryptionValue && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CacheRulesOriginPostQuantumEncryptionValue($value)'; } 
 }
