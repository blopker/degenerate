// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_tax_registrations_request_country_options_ro_standard.dart';@immutable final class PostTaxRegistrationsRequestCountryOptionsRoType {const PostTaxRegistrationsRequestCountryOptionsRoType._(this.value);

factory PostTaxRegistrationsRequestCountryOptionsRoType.fromJson(String json) { return switch (json) {
  'ioss' => ioss,
  'oss_non_union' => ossNonUnion,
  'oss_union' => ossUnion,
  'standard' => standard,
  _ => PostTaxRegistrationsRequestCountryOptionsRoType._(json),
}; }

static const PostTaxRegistrationsRequestCountryOptionsRoType ioss = PostTaxRegistrationsRequestCountryOptionsRoType._('ioss');

static const PostTaxRegistrationsRequestCountryOptionsRoType ossNonUnion = PostTaxRegistrationsRequestCountryOptionsRoType._('oss_non_union');

static const PostTaxRegistrationsRequestCountryOptionsRoType ossUnion = PostTaxRegistrationsRequestCountryOptionsRoType._('oss_union');

static const PostTaxRegistrationsRequestCountryOptionsRoType standard = PostTaxRegistrationsRequestCountryOptionsRoType._('standard');

static const List<PostTaxRegistrationsRequestCountryOptionsRoType> values = [ioss, ossNonUnion, ossUnion, standard];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTaxRegistrationsRequestCountryOptionsRoType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsRoType($value)'; } 
 }
@immutable final class PostTaxRegistrationsRequestCountryOptionsRo {const PostTaxRegistrationsRequestCountryOptionsRo({required this.type, this.standard, });

factory PostTaxRegistrationsRequestCountryOptionsRo.fromJson(Map<String, dynamic> json) { return PostTaxRegistrationsRequestCountryOptionsRo(
  standard: json['standard'] != null ? PostTaxRegistrationsRequestCountryOptionsRoStandard.fromJson(json['standard'] as Map<String, dynamic>) : null,
  type: PostTaxRegistrationsRequestCountryOptionsRoType.fromJson(json['type'] as String),
); }

final PostTaxRegistrationsRequestCountryOptionsRoStandard? standard;

final PostTaxRegistrationsRequestCountryOptionsRoType type;

Map<String, dynamic> toJson() { return {
  if (standard != null) 'standard': standard?.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
PostTaxRegistrationsRequestCountryOptionsRo copyWith({PostTaxRegistrationsRequestCountryOptionsRoStandard Function()? standard, PostTaxRegistrationsRequestCountryOptionsRoType? type, }) { return PostTaxRegistrationsRequestCountryOptionsRo(
  standard: standard != null ? standard() : this.standard,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTaxRegistrationsRequestCountryOptionsRo &&
          standard == other.standard &&
          type == other.type; } 
@override int get hashCode { return Object.hash(standard, type); } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsRo(standard: $standard, type: $type)'; } 
 }
