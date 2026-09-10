// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// ID of the zone setting.
@immutable final class CacheRulesVariantsId {const CacheRulesVariantsId._(this.value);

factory CacheRulesVariantsId.fromJson(String json) { return switch (json) {
  'variants' => variants,
  _ => CacheRulesVariantsId._(json),
}; }

static const CacheRulesVariantsId variants = CacheRulesVariantsId._('variants');

static const List<CacheRulesVariantsId> values = [variants];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CacheRulesVariantsId && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CacheRulesVariantsId($value)'; } 
 }
/// Variant support enables caching variants of images with certain file extensions in addition to the original. This only applies when the origin server sends the 'Vary: Accept' response header. If the origin server sends 'Vary: Accept' but does not serve the variant requested, the response will not be cached. This will be indicated with BYPASS cache status in the response headers.
@immutable final class CacheRulesVariants {const CacheRulesVariants({required this.id, this.modifiedOn = const Omittable.absent(), });

factory CacheRulesVariants.fromJson(Map<String, dynamic> json) { return CacheRulesVariants(
  id: CacheRulesVariantsId.fromJson(json['id'] as String),
  modifiedOn: json.containsKey('modified_on') ? Omittable(json['modified_on'] != null ? DateTime.parse(json['modified_on'] as String) : null) : const Omittable.absent(),
); }

/// ID of the zone setting.
final CacheRulesVariantsId id;

/// Last time this setting was modified.
final Omittable<DateTime?> modifiedOn;

Map<String, dynamic> toJson() { return {
  'id': id.toJson(),
  if (modifiedOn.isPresent) 'modified_on': modifiedOn.value?.toIso8601String(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id'); } 
CacheRulesVariants copyWith({CacheRulesVariantsId? id, Omittable<DateTime?>? modifiedOn, }) { return CacheRulesVariants(
  id: id ?? this.id,
  modifiedOn: modifiedOn ?? this.modifiedOn,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CacheRulesVariants &&
          id == other.id &&
          modifiedOn == other.modifiedOn; } 
@override int get hashCode { return Object.hash(id, modifiedOn); } 
@override String toString() { return 'CacheRulesVariants(id: $id, modifiedOn: $modifiedOn)'; } 
 }
