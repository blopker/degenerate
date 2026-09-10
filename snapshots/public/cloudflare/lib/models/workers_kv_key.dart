// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_kv_any.dart';import 'workers_kv_key_name.dart';/// A name for a value. A value stored under a given key may be retrieved via the same key.
@immutable final class WorkersKvKey {const WorkersKvKey({required this.name, this.expiration, this.metadata = const Omittable.absent(), });

factory WorkersKvKey.fromJson(Map<String, dynamic> json) { return WorkersKvKey(
  expiration: json['expiration'] != null ? (json['expiration'] as num).toDouble() : null,
  metadata: json.containsKey('metadata') ? Omittable(json['metadata'] != null ? WorkersKvAny.fromJson(json['metadata']) : null) : const Omittable.absent(),
  name: WorkersKvKeyName.fromJson(json['name'] as String),
); }

/// The time, measured in number of seconds since the UNIX epoch, at which the key will expire. This property is omitted for keys that will not expire.
final double? expiration;

final Omittable<WorkersKvAny?> metadata;

final WorkersKvKeyName name;

Map<String, dynamic> toJson() { return {
  'expiration': ?expiration,
  if (metadata.isPresent) 'metadata': metadata.value?.toJson(),
  'name': name.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('name'); } 
WorkersKvKey copyWith({double? Function()? expiration, Omittable<WorkersKvAny?>? metadata, WorkersKvKeyName? name, }) { return WorkersKvKey(
  expiration: expiration != null ? expiration() : this.expiration,
  metadata: metadata ?? this.metadata,
  name: name ?? this.name,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersKvKey &&
          expiration == other.expiration &&
          metadata == other.metadata &&
          name == other.name; } 
@override int get hashCode { return Object.hash(expiration, metadata, name); } 
@override String toString() { return 'WorkersKvKey(expiration: $expiration, metadata: $metadata, name: $name)'; } 
 }
