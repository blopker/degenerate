// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_tax_registrations_request_country_options_hu_standard.dart';@immutable final class PostTaxRegistrationsRequestCountryOptionsHuType {const PostTaxRegistrationsRequestCountryOptionsHuType._(this.value);

factory PostTaxRegistrationsRequestCountryOptionsHuType.fromJson(String json) { return switch (json) {
  'ioss' => ioss,
  'oss_non_union' => ossNonUnion,
  'oss_union' => ossUnion,
  'standard' => standard,
  _ => PostTaxRegistrationsRequestCountryOptionsHuType._(json),
}; }

static const PostTaxRegistrationsRequestCountryOptionsHuType ioss = PostTaxRegistrationsRequestCountryOptionsHuType._('ioss');

static const PostTaxRegistrationsRequestCountryOptionsHuType ossNonUnion = PostTaxRegistrationsRequestCountryOptionsHuType._('oss_non_union');

static const PostTaxRegistrationsRequestCountryOptionsHuType ossUnion = PostTaxRegistrationsRequestCountryOptionsHuType._('oss_union');

static const PostTaxRegistrationsRequestCountryOptionsHuType standard = PostTaxRegistrationsRequestCountryOptionsHuType._('standard');

static const List<PostTaxRegistrationsRequestCountryOptionsHuType> values = [ioss, ossNonUnion, ossUnion, standard];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTaxRegistrationsRequestCountryOptionsHuType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsHuType($value)'; } 
 }
@immutable final class PostTaxRegistrationsRequestCountryOptionsHu {const PostTaxRegistrationsRequestCountryOptionsHu({required this.type, this.standard, });

factory PostTaxRegistrationsRequestCountryOptionsHu.fromJson(Map<String, dynamic> json) { return PostTaxRegistrationsRequestCountryOptionsHu(
  standard: json['standard'] != null ? PostTaxRegistrationsRequestCountryOptionsHuStandard.fromJson(json['standard'] as Map<String, dynamic>) : null,
  type: PostTaxRegistrationsRequestCountryOptionsHuType.fromJson(json['type'] as String),
); }

final PostTaxRegistrationsRequestCountryOptionsHuStandard? standard;

final PostTaxRegistrationsRequestCountryOptionsHuType type;

Map<String, dynamic> toJson() { return {
  if (standard != null) 'standard': standard?.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
PostTaxRegistrationsRequestCountryOptionsHu copyWith({PostTaxRegistrationsRequestCountryOptionsHuStandard Function()? standard, PostTaxRegistrationsRequestCountryOptionsHuType? type, }) { return PostTaxRegistrationsRequestCountryOptionsHu(
  standard: standard != null ? standard() : this.standard,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTaxRegistrationsRequestCountryOptionsHu &&
          standard == other.standard &&
          type == other.type; } 
@override int get hashCode { return Object.hash(standard, type); } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsHu(standard: $standard, type: $type)'; } 
 }
