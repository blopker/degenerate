// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Value of the zone setting.
@immutable final class CacheRulesOriginPostQuantumEncryptionId {const CacheRulesOriginPostQuantumEncryptionId._(this.value);

factory CacheRulesOriginPostQuantumEncryptionId.fromJson(String json) { return switch (json) {
  'origin_pqe' => originPqe,
  _ => CacheRulesOriginPostQuantumEncryptionId._(json),
}; }

static const CacheRulesOriginPostQuantumEncryptionId originPqe = CacheRulesOriginPostQuantumEncryptionId._('origin_pqe');

static const List<CacheRulesOriginPostQuantumEncryptionId> values = [originPqe];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CacheRulesOriginPostQuantumEncryptionId && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CacheRulesOriginPostQuantumEncryptionId($value)'; } 
 }
/// Instructs Cloudflare to use Post-Quantum (PQ) key agreement algorithms when connecting to your origin. Preferred instructs Cloudflare to opportunistically send a Post-Quantum keyshare in the first message to the origin (for fastest connections when the origin supports and prefers PQ), supported means that PQ algorithms are advertised but only used when requested by the origin, and off means that PQ algorithms are not advertised.
@immutable final class CacheRulesOriginPostQuantumEncryption {const CacheRulesOriginPostQuantumEncryption({required this.id, this.modifiedOn, });

factory CacheRulesOriginPostQuantumEncryption.fromJson(Map<String, dynamic> json) { return CacheRulesOriginPostQuantumEncryption(
  id: CacheRulesOriginPostQuantumEncryptionId.fromJson(json['id'] as String),
  modifiedOn: json['modified_on'] != null ? DateTime.parse(json['modified_on'] as String) : null,
); }

/// Value of the zone setting.
final CacheRulesOriginPostQuantumEncryptionId id;

/// Last time this setting was modified.
final DateTime? modifiedOn;

Map<String, dynamic> toJson() { return {
  'id': id.toJson(),
  if (modifiedOn != null) 'modified_on': modifiedOn?.toIso8601String(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id'); } 
CacheRulesOriginPostQuantumEncryption copyWith({CacheRulesOriginPostQuantumEncryptionId? id, DateTime? Function()? modifiedOn, }) { return CacheRulesOriginPostQuantumEncryption(
  id: id ?? this.id,
  modifiedOn: modifiedOn != null ? modifiedOn() : this.modifiedOn,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CacheRulesOriginPostQuantumEncryption &&
          id == other.id &&
          modifiedOn == other.modifiedOn; } 
@override int get hashCode { return Object.hash(id, modifiedOn); } 
@override String toString() { return 'CacheRulesOriginPostQuantumEncryption(id: $id, modifiedOn: $modifiedOn)'; } 
 }
