// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_tax_registrations_request_country_options_nl_standard.dart';@immutable final class PostTaxRegistrationsRequestCountryOptionsNlType {const PostTaxRegistrationsRequestCountryOptionsNlType._(this.value);

factory PostTaxRegistrationsRequestCountryOptionsNlType.fromJson(String json) { return switch (json) {
  'ioss' => ioss,
  'oss_non_union' => ossNonUnion,
  'oss_union' => ossUnion,
  'standard' => standard,
  _ => PostTaxRegistrationsRequestCountryOptionsNlType._(json),
}; }

static const PostTaxRegistrationsRequestCountryOptionsNlType ioss = PostTaxRegistrationsRequestCountryOptionsNlType._('ioss');

static const PostTaxRegistrationsRequestCountryOptionsNlType ossNonUnion = PostTaxRegistrationsRequestCountryOptionsNlType._('oss_non_union');

static const PostTaxRegistrationsRequestCountryOptionsNlType ossUnion = PostTaxRegistrationsRequestCountryOptionsNlType._('oss_union');

static const PostTaxRegistrationsRequestCountryOptionsNlType standard = PostTaxRegistrationsRequestCountryOptionsNlType._('standard');

static const List<PostTaxRegistrationsRequestCountryOptionsNlType> values = [ioss, ossNonUnion, ossUnion, standard];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTaxRegistrationsRequestCountryOptionsNlType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsNlType($value)'; } 
 }
@immutable final class PostTaxRegistrationsRequestCountryOptionsNl {const PostTaxRegistrationsRequestCountryOptionsNl({required this.type, this.standard, });

factory PostTaxRegistrationsRequestCountryOptionsNl.fromJson(Map<String, dynamic> json) { return PostTaxRegistrationsRequestCountryOptionsNl(
  standard: json['standard'] != null ? PostTaxRegistrationsRequestCountryOptionsNlStandard.fromJson(json['standard'] as Map<String, dynamic>) : null,
  type: PostTaxRegistrationsRequestCountryOptionsNlType.fromJson(json['type'] as String),
); }

final PostTaxRegistrationsRequestCountryOptionsNlStandard? standard;

final PostTaxRegistrationsRequestCountryOptionsNlType type;

Map<String, dynamic> toJson() { return {
  if (standard != null) 'standard': standard?.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
PostTaxRegistrationsRequestCountryOptionsNl copyWith({PostTaxRegistrationsRequestCountryOptionsNlStandard Function()? standard, PostTaxRegistrationsRequestCountryOptionsNlType? type, }) { return PostTaxRegistrationsRequestCountryOptionsNl(
  standard: standard != null ? standard() : this.standard,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTaxRegistrationsRequestCountryOptionsNl &&
          standard == other.standard &&
          type == other.type; } 
@override int get hashCode { return Object.hash(standard, type); } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsNl(standard: $standard, type: $type)'; } 
 }
