// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_tax_registrations_request_country_options_bh_standard.dart';@immutable final class PostTaxRegistrationsRequestCountryOptionsBhType {const PostTaxRegistrationsRequestCountryOptionsBhType._(this.value);

factory PostTaxRegistrationsRequestCountryOptionsBhType.fromJson(String json) { return switch (json) {
  'standard' => standard,
  _ => PostTaxRegistrationsRequestCountryOptionsBhType._(json),
}; }

static const PostTaxRegistrationsRequestCountryOptionsBhType standard = PostTaxRegistrationsRequestCountryOptionsBhType._('standard');

static const List<PostTaxRegistrationsRequestCountryOptionsBhType> values = [standard];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTaxRegistrationsRequestCountryOptionsBhType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsBhType($value)'; } 
 }
@immutable final class PostTaxRegistrationsRequestCountryOptionsBh {const PostTaxRegistrationsRequestCountryOptionsBh({required this.type, this.standard, });

factory PostTaxRegistrationsRequestCountryOptionsBh.fromJson(Map<String, dynamic> json) { return PostTaxRegistrationsRequestCountryOptionsBh(
  standard: json['standard'] != null ? PostTaxRegistrationsRequestCountryOptionsBhStandard.fromJson(json['standard'] as Map<String, dynamic>) : null,
  type: PostTaxRegistrationsRequestCountryOptionsBhType.fromJson(json['type'] as String),
); }

final PostTaxRegistrationsRequestCountryOptionsBhStandard? standard;

final PostTaxRegistrationsRequestCountryOptionsBhType type;

Map<String, dynamic> toJson() { return {
  if (standard != null) 'standard': standard?.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
PostTaxRegistrationsRequestCountryOptionsBh copyWith({PostTaxRegistrationsRequestCountryOptionsBhStandard Function()? standard, PostTaxRegistrationsRequestCountryOptionsBhType? type, }) { return PostTaxRegistrationsRequestCountryOptionsBh(
  standard: standard != null ? standard() : this.standard,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTaxRegistrationsRequestCountryOptionsBh &&
          standard == other.standard &&
          type == other.type; } 
@override int get hashCode { return Object.hash(standard, type); } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsBh(standard: $standard, type: $type)'; } 
 }
