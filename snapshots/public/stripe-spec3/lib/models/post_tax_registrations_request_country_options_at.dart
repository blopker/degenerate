// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_tax_registrations_request_country_options_at_standard.dart';@immutable final class PostTaxRegistrationsRequestCountryOptionsAtType {const PostTaxRegistrationsRequestCountryOptionsAtType._(this.value);

factory PostTaxRegistrationsRequestCountryOptionsAtType.fromJson(String json) { return switch (json) {
  'ioss' => ioss,
  'oss_non_union' => ossNonUnion,
  'oss_union' => ossUnion,
  'standard' => standard,
  _ => PostTaxRegistrationsRequestCountryOptionsAtType._(json),
}; }

static const PostTaxRegistrationsRequestCountryOptionsAtType ioss = PostTaxRegistrationsRequestCountryOptionsAtType._('ioss');

static const PostTaxRegistrationsRequestCountryOptionsAtType ossNonUnion = PostTaxRegistrationsRequestCountryOptionsAtType._('oss_non_union');

static const PostTaxRegistrationsRequestCountryOptionsAtType ossUnion = PostTaxRegistrationsRequestCountryOptionsAtType._('oss_union');

static const PostTaxRegistrationsRequestCountryOptionsAtType standard = PostTaxRegistrationsRequestCountryOptionsAtType._('standard');

static const List<PostTaxRegistrationsRequestCountryOptionsAtType> values = [ioss, ossNonUnion, ossUnion, standard];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTaxRegistrationsRequestCountryOptionsAtType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsAtType($value)'; } 
 }
@immutable final class PostTaxRegistrationsRequestCountryOptionsAt {const PostTaxRegistrationsRequestCountryOptionsAt({required this.type, this.standard, });

factory PostTaxRegistrationsRequestCountryOptionsAt.fromJson(Map<String, dynamic> json) { return PostTaxRegistrationsRequestCountryOptionsAt(
  standard: json['standard'] != null ? PostTaxRegistrationsRequestCountryOptionsAtStandard.fromJson(json['standard'] as Map<String, dynamic>) : null,
  type: PostTaxRegistrationsRequestCountryOptionsAtType.fromJson(json['type'] as String),
); }

final PostTaxRegistrationsRequestCountryOptionsAtStandard? standard;

final PostTaxRegistrationsRequestCountryOptionsAtType type;

Map<String, dynamic> toJson() { return {
  if (standard != null) 'standard': standard?.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
PostTaxRegistrationsRequestCountryOptionsAt copyWith({PostTaxRegistrationsRequestCountryOptionsAtStandard Function()? standard, PostTaxRegistrationsRequestCountryOptionsAtType? type, }) { return PostTaxRegistrationsRequestCountryOptionsAt(
  standard: standard != null ? standard() : this.standard,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTaxRegistrationsRequestCountryOptionsAt &&
          standard == other.standard &&
          type == other.type; } 
@override int get hashCode { return Object.hash(standard, type); } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsAt(standard: $standard, type: $type)'; } 
 }
