// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// ID of the zone setting.
@immutable final class SmartshieldCacheReserveClearId {const SmartshieldCacheReserveClearId._(this.value);

factory SmartshieldCacheReserveClearId.fromJson(String json) { return switch (json) {
  'cache_reserve_clear' => cacheReserveClear,
  _ => SmartshieldCacheReserveClearId._(json),
}; }

static const SmartshieldCacheReserveClearId cacheReserveClear = SmartshieldCacheReserveClearId._('cache_reserve_clear');

static const List<SmartshieldCacheReserveClearId> values = [cacheReserveClear];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SmartshieldCacheReserveClearId && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SmartshieldCacheReserveClearId($value)'; } 
 }
/// You can use Cache Reserve Clear to clear your Cache Reserve, but you must first disable Cache Reserve. In most cases, this will be accomplished within 24 hours. You cannot re-enable Cache Reserve while this process is ongoing. Keep in mind that you cannot undo or cancel this operation.
@immutable final class SmartshieldCacheReserveClear {const SmartshieldCacheReserveClear({required this.id, this.modifiedOn = const Omittable.absent(), });

factory SmartshieldCacheReserveClear.fromJson(Map<String, dynamic> json) { return SmartshieldCacheReserveClear(
  id: SmartshieldCacheReserveClearId.fromJson(json['id'] as String),
  modifiedOn: json.containsKey('modified_on') ? Omittable(json['modified_on'] != null ? DateTime.parse(json['modified_on'] as String) : null) : const Omittable.absent(),
); }

/// ID of the zone setting.
final SmartshieldCacheReserveClearId id;

/// Last time this setting was modified.
final Omittable<DateTime?> modifiedOn;

Map<String, dynamic> toJson() { return {
  'id': id.toJson(),
  if (modifiedOn.isPresent) 'modified_on': modifiedOn.value?.toIso8601String(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id'); } 
SmartshieldCacheReserveClear copyWith({SmartshieldCacheReserveClearId? id, Omittable<DateTime?>? modifiedOn, }) { return SmartshieldCacheReserveClear(
  id: id ?? this.id,
  modifiedOn: modifiedOn ?? this.modifiedOn,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SmartshieldCacheReserveClear &&
          id == other.id &&
          modifiedOn == other.modifiedOn; } 
@override int get hashCode { return Object.hash(id, modifiedOn); } 
@override String toString() { return 'SmartshieldCacheReserveClear(id: $id, modifiedOn: $modifiedOn)'; } 
 }
