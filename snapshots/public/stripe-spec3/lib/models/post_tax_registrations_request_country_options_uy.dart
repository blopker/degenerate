// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_tax_registrations_request_country_options_uy_standard.dart';@immutable final class PostTaxRegistrationsRequestCountryOptionsUyType {const PostTaxRegistrationsRequestCountryOptionsUyType._(this.value);

factory PostTaxRegistrationsRequestCountryOptionsUyType.fromJson(String json) { return switch (json) {
  'standard' => standard,
  _ => PostTaxRegistrationsRequestCountryOptionsUyType._(json),
}; }

static const PostTaxRegistrationsRequestCountryOptionsUyType standard = PostTaxRegistrationsRequestCountryOptionsUyType._('standard');

static const List<PostTaxRegistrationsRequestCountryOptionsUyType> values = [standard];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTaxRegistrationsRequestCountryOptionsUyType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsUyType($value)'; } 
 }
@immutable final class PostTaxRegistrationsRequestCountryOptionsUy {const PostTaxRegistrationsRequestCountryOptionsUy({required this.type, this.standard, });

factory PostTaxRegistrationsRequestCountryOptionsUy.fromJson(Map<String, dynamic> json) { return PostTaxRegistrationsRequestCountryOptionsUy(
  standard: json['standard'] != null ? PostTaxRegistrationsRequestCountryOptionsUyStandard.fromJson(json['standard'] as Map<String, dynamic>) : null,
  type: PostTaxRegistrationsRequestCountryOptionsUyType.fromJson(json['type'] as String),
); }

final PostTaxRegistrationsRequestCountryOptionsUyStandard? standard;

final PostTaxRegistrationsRequestCountryOptionsUyType type;

Map<String, dynamic> toJson() { return {
  if (standard != null) 'standard': standard?.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
PostTaxRegistrationsRequestCountryOptionsUy copyWith({PostTaxRegistrationsRequestCountryOptionsUyStandard Function()? standard, PostTaxRegistrationsRequestCountryOptionsUyType? type, }) { return PostTaxRegistrationsRequestCountryOptionsUy(
  standard: standard != null ? standard() : this.standard,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTaxRegistrationsRequestCountryOptionsUy &&
          standard == other.standard &&
          type == other.type; } 
@override int get hashCode { return Object.hash(standard, type); } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsUy(standard: $standard, type: $type)'; } 
 }
