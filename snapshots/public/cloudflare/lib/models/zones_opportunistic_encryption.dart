// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Opportunistic Encryption allows browsers to access HTTP URIs over an encrypted TLS channel.
/// It's not a substitute for HTTPS, but provides additional security for otherwise vulnerable requests.
/// 
@immutable final class ZonesOpportunisticEncryptionId {const ZonesOpportunisticEncryptionId._(this.value);

factory ZonesOpportunisticEncryptionId.fromJson(String json) { return switch (json) {
  'opportunistic_encryption' => opportunisticEncryption,
  _ => ZonesOpportunisticEncryptionId._(json),
}; }

static const ZonesOpportunisticEncryptionId opportunisticEncryption = ZonesOpportunisticEncryptionId._('opportunistic_encryption');

static const List<ZonesOpportunisticEncryptionId> values = [opportunisticEncryption];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesOpportunisticEncryptionId && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesOpportunisticEncryptionId($value)'; } 
 }
/// The status of Opportunistic Encryption.
/// 
@immutable final class ZonesOpportunisticEncryptionValue2 {const ZonesOpportunisticEncryptionValue2._(this.value);

factory ZonesOpportunisticEncryptionValue2.fromJson(String json) { return switch (json) {
  'on' => $on,
  'off' => off,
  _ => ZonesOpportunisticEncryptionValue2._(json),
}; }

static const ZonesOpportunisticEncryptionValue2 $on = ZonesOpportunisticEncryptionValue2._('on');

static const ZonesOpportunisticEncryptionValue2 off = ZonesOpportunisticEncryptionValue2._('off');

static const List<ZonesOpportunisticEncryptionValue2> values = [$on, off];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ZonesOpportunisticEncryptionValue2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ZonesOpportunisticEncryptionValue2($value)'; } 
 }
@immutable final class ZonesOpportunisticEncryption {const ZonesOpportunisticEncryption({this.id, this.value, });

factory ZonesOpportunisticEncryption.fromJson(Map<String, dynamic> json) { return ZonesOpportunisticEncryption(
  id: json['id'] != null ? ZonesOpportunisticEncryptionId.fromJson(json['id'] as String) : null,
  value: json['value'] != null ? ZonesOpportunisticEncryptionValue2.fromJson(json['value'] as String) : null,
); }

/// Opportunistic Encryption allows browsers to access HTTP URIs over an encrypted TLS channel.
/// It's not a substitute for HTTPS, but provides additional security for otherwise vulnerable requests.
/// 
final ZonesOpportunisticEncryptionId? id;

/// The status of Opportunistic Encryption.
/// 
final ZonesOpportunisticEncryptionValue2? value;

Map<String, dynamic> toJson() { return {
  if (id != null) 'id': id?.toJson(),
  if (value != null) 'value': value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'id', 'value'}.contains(key)); } 
ZonesOpportunisticEncryption copyWith({ZonesOpportunisticEncryptionId Function()? id, ZonesOpportunisticEncryptionValue2 Function()? value, }) { return ZonesOpportunisticEncryption(
  id: id != null ? id() : this.id,
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZonesOpportunisticEncryption &&
          id == other.id &&
          value == other.value; } 
@override int get hashCode { return Object.hash(id, value); } 
@override String toString() { return 'ZonesOpportunisticEncryption(id: $id, value: $value)'; } 
 }
