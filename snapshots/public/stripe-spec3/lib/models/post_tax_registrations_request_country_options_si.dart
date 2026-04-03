// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_tax_registrations_request_country_options_si_standard.dart';@immutable final class PostTaxRegistrationsRequestCountryOptionsSiType {const PostTaxRegistrationsRequestCountryOptionsSiType._(this.value);

factory PostTaxRegistrationsRequestCountryOptionsSiType.fromJson(String json) { return switch (json) {
  'ioss' => ioss,
  'oss_non_union' => ossNonUnion,
  'oss_union' => ossUnion,
  'standard' => standard,
  _ => PostTaxRegistrationsRequestCountryOptionsSiType._(json),
}; }

static const PostTaxRegistrationsRequestCountryOptionsSiType ioss = PostTaxRegistrationsRequestCountryOptionsSiType._('ioss');

static const PostTaxRegistrationsRequestCountryOptionsSiType ossNonUnion = PostTaxRegistrationsRequestCountryOptionsSiType._('oss_non_union');

static const PostTaxRegistrationsRequestCountryOptionsSiType ossUnion = PostTaxRegistrationsRequestCountryOptionsSiType._('oss_union');

static const PostTaxRegistrationsRequestCountryOptionsSiType standard = PostTaxRegistrationsRequestCountryOptionsSiType._('standard');

static const List<PostTaxRegistrationsRequestCountryOptionsSiType> values = [ioss, ossNonUnion, ossUnion, standard];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTaxRegistrationsRequestCountryOptionsSiType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsSiType($value)'; } 
 }
@immutable final class PostTaxRegistrationsRequestCountryOptionsSi {const PostTaxRegistrationsRequestCountryOptionsSi({required this.type, this.standard, });

factory PostTaxRegistrationsRequestCountryOptionsSi.fromJson(Map<String, dynamic> json) { return PostTaxRegistrationsRequestCountryOptionsSi(
  standard: json['standard'] != null ? PostTaxRegistrationsRequestCountryOptionsSiStandard.fromJson(json['standard'] as Map<String, dynamic>) : null,
  type: PostTaxRegistrationsRequestCountryOptionsSiType.fromJson(json['type'] as String),
); }

final PostTaxRegistrationsRequestCountryOptionsSiStandard? standard;

final PostTaxRegistrationsRequestCountryOptionsSiType type;

Map<String, dynamic> toJson() { return {
  if (standard != null) 'standard': standard?.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
PostTaxRegistrationsRequestCountryOptionsSi copyWith({PostTaxRegistrationsRequestCountryOptionsSiStandard Function()? standard, PostTaxRegistrationsRequestCountryOptionsSiType? type, }) { return PostTaxRegistrationsRequestCountryOptionsSi(
  standard: standard != null ? standard() : this.standard,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTaxRegistrationsRequestCountryOptionsSi &&
          standard == other.standard &&
          type == other.type; } 
@override int get hashCode { return Object.hash(standard, type); } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsSi(standard: $standard, type: $type)'; } 
 }
