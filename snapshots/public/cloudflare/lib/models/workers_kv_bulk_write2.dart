// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_kv_any.dart';import 'workers_kv_expiration.dart';import 'workers_kv_expiration_ttl.dart';import 'workers_kv_key_name_bulk.dart';@immutable final class WorkersKvBulkWrite2 {const WorkersKvBulkWrite2({required this.key, required this.value, this.base64, this.expiration, this.expirationTtl, this.metadata = const Omittable.absent(), });

factory WorkersKvBulkWrite2.fromJson(Map<String, dynamic> json) {return WorkersKvBulkWrite2(
  base64: json['base64'] as bool?,
  expiration: json['expiration'] != null ? WorkersKvExpiration.fromJson(json['expiration'] as num) : null,
  expirationTtl: json['expiration_ttl'] != null ? WorkersKvExpirationTtl.fromJson(json['expiration_ttl'] as num) : null,
  key: WorkersKvKeyNameBulk.fromJson(json['key'] as String),
  metadata: json.containsKey('metadata') ? Omittable(json['metadata'] != null ? WorkersKvAny.fromJson(json['metadata']) : null) : const Omittable.absent(),
  value: json['value'] as String,
);}

/// Indicates whether or not the server should base64 decode the value before storing it. Useful for writing values that wouldn't otherwise be valid JSON strings, such as images.
final bool? base64;

final WorkersKvExpiration? expiration;

final WorkersKvExpirationTtl? expirationTtl;

final WorkersKvKeyNameBulk key;

final Omittable<WorkersKvAny?> metadata;

/// A UTF-8 encoded string to be stored, up to 25 MiB in length.
final String value;

/// The value with the schema default applied when absent.
bool get base64OrDefault {return base64 ?? false;}
Map<String, dynamic> toJson() {return {
  'base64': ?base64,
  if (expiration != null) 'expiration': expiration?.toJson(),
  if (expirationTtl != null) 'expiration_ttl': expirationTtl?.toJson(),
  'key': key.toJson(),
  if (metadata.isPresent) 'metadata': metadata.value?.toJson(),
  'value': value,
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('key') &&
      json.containsKey('value') && json['value'] is String;}
WorkersKvBulkWrite2 copyWith({bool? Function()? base64, WorkersKvExpiration? Function()? expiration, WorkersKvExpirationTtl? Function()? expirationTtl, WorkersKvKeyNameBulk? key, Omittable<WorkersKvAny?>? metadata, String? value, }) {return WorkersKvBulkWrite2(
  base64: base64 != null ? base64() : this.base64,
  expiration: expiration != null ? expiration() : this.expiration,
  expirationTtl: expirationTtl != null ? expirationTtl() : this.expirationTtl,
  key: key ?? this.key,
  metadata: metadata ?? this.metadata,
  value: value ?? this.value,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is WorkersKvBulkWrite2 &&
          base64 == other.base64 &&
          expiration == other.expiration &&
          expirationTtl == other.expirationTtl &&
          key == other.key &&
          metadata == other.metadata &&
          value == other.value;}
@override int get hashCode {return Object.hash(base64, expiration, expirationTtl, key, metadata, value);}
@override String toString() {return 'WorkersKvBulkWrite2(base64: $base64, expiration: $expiration, expirationTtl: $expirationTtl, key: $key, metadata: $metadata, value: $value)';}
}
