// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'secret_key_param_customer_acceptance_offline.dart';import 'secret_key_param_customer_acceptance_online.dart';@immutable final class SecretKeyParamCustomerAcceptanceType {const SecretKeyParamCustomerAcceptanceType._(this.value);

factory SecretKeyParamCustomerAcceptanceType.fromJson(String json) { return switch (json) {
  'offline' => offline,
  'online' => online,
  _ => SecretKeyParamCustomerAcceptanceType._(json),
}; }

static const SecretKeyParamCustomerAcceptanceType offline = SecretKeyParamCustomerAcceptanceType._('offline');

static const SecretKeyParamCustomerAcceptanceType online = SecretKeyParamCustomerAcceptanceType._('online');

static const List<SecretKeyParamCustomerAcceptanceType> values = [offline, online];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SecretKeyParamCustomerAcceptanceType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SecretKeyParamCustomerAcceptanceType($value)'; } 
 }
@immutable final class SecretKeyParamCustomerAcceptance {const SecretKeyParamCustomerAcceptance({required this.type, this.acceptedAt, this.offline, this.online, });

factory SecretKeyParamCustomerAcceptance.fromJson(Map<String, dynamic> json) { return SecretKeyParamCustomerAcceptance(
  acceptedAt: json['accepted_at'] != null ? (json['accepted_at'] as num).toInt() : null,
  offline: json['offline'] != null ? SecretKeyParamCustomerAcceptanceOffline.fromJson(json['offline'] as Map<String, dynamic>) : null,
  online: json['online'] != null ? SecretKeyParamCustomerAcceptanceOnline.fromJson(json['online'] as Map<String, dynamic>) : null,
  type: SecretKeyParamCustomerAcceptanceType.fromJson(json['type'] as String),
); }

final int? acceptedAt;

final SecretKeyParamCustomerAcceptanceOffline? offline;

final SecretKeyParamCustomerAcceptanceOnline? online;

final SecretKeyParamCustomerAcceptanceType type;

Map<String, dynamic> toJson() { return {
  'accepted_at': ?acceptedAt,
  if (offline != null) 'offline': offline?.toJson(),
  if (online != null) 'online': online?.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
SecretKeyParamCustomerAcceptance copyWith({int Function()? acceptedAt, SecretKeyParamCustomerAcceptanceOffline Function()? offline, SecretKeyParamCustomerAcceptanceOnline Function()? online, SecretKeyParamCustomerAcceptanceType? type, }) { return SecretKeyParamCustomerAcceptance(
  acceptedAt: acceptedAt != null ? acceptedAt() : this.acceptedAt,
  offline: offline != null ? offline() : this.offline,
  online: online != null ? online() : this.online,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SecretKeyParamCustomerAcceptance &&
          acceptedAt == other.acceptedAt &&
          offline == other.offline &&
          online == other.online &&
          type == other.type; } 
@override int get hashCode { return Object.hash(acceptedAt, offline, online, type); } 
@override String toString() { return 'SecretKeyParamCustomerAcceptance(acceptedAt: $acceptedAt, offline: $offline, online: $online, type: $type)'; } 
 }
