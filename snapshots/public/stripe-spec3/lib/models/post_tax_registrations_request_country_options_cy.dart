// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_tax_registrations_request_country_options_cy_standard.dart';final class PostTaxRegistrationsRequestCountryOptionsCyType {const PostTaxRegistrationsRequestCountryOptionsCyType._(this.value);

factory PostTaxRegistrationsRequestCountryOptionsCyType.fromJson(String json) { return switch (json) {
  'ioss' => ioss,
  'oss_non_union' => ossNonUnion,
  'oss_union' => ossUnion,
  'standard' => standard,
  _ => PostTaxRegistrationsRequestCountryOptionsCyType._(json),
}; }

static const PostTaxRegistrationsRequestCountryOptionsCyType ioss = PostTaxRegistrationsRequestCountryOptionsCyType._('ioss');

static const PostTaxRegistrationsRequestCountryOptionsCyType ossNonUnion = PostTaxRegistrationsRequestCountryOptionsCyType._('oss_non_union');

static const PostTaxRegistrationsRequestCountryOptionsCyType ossUnion = PostTaxRegistrationsRequestCountryOptionsCyType._('oss_union');

static const PostTaxRegistrationsRequestCountryOptionsCyType standard = PostTaxRegistrationsRequestCountryOptionsCyType._('standard');

static const List<PostTaxRegistrationsRequestCountryOptionsCyType> values = [ioss, ossNonUnion, ossUnion, standard];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTaxRegistrationsRequestCountryOptionsCyType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsCyType($value)'; } 
 }
final class PostTaxRegistrationsRequestCountryOptionsCy {const PostTaxRegistrationsRequestCountryOptionsCy({this.standard, required this.type, });

factory PostTaxRegistrationsRequestCountryOptionsCy.fromJson(Map<String, dynamic> json) { return PostTaxRegistrationsRequestCountryOptionsCy(
  standard: json['standard'] != null ? PostTaxRegistrationsRequestCountryOptionsCyStandard.fromJson(json['standard'] as Map<String, dynamic>) : null,
  type: PostTaxRegistrationsRequestCountryOptionsCyType.fromJson(json['type'] as String),
); }

final PostTaxRegistrationsRequestCountryOptionsCyStandard? standard;

final PostTaxRegistrationsRequestCountryOptionsCyType type;

Map<String, dynamic> toJson() { return {
  if (standard != null) 'standard': standard?.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
PostTaxRegistrationsRequestCountryOptionsCy copyWith({PostTaxRegistrationsRequestCountryOptionsCyStandard Function()? standard, PostTaxRegistrationsRequestCountryOptionsCyType? type, }) { return PostTaxRegistrationsRequestCountryOptionsCy(
  standard: standard != null ? standard() : this.standard,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTaxRegistrationsRequestCountryOptionsCy &&
          standard == other.standard &&
          type == other.type; } 
@override int get hashCode { return Object.hash(standard, type); } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsCy(standard: $standard, type: $type)'; } 
 }
