// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_tax_registrations_request_country_options_jp_standard.dart';@immutable final class PostTaxRegistrationsRequestCountryOptionsJpType {const PostTaxRegistrationsRequestCountryOptionsJpType._(this.value);

factory PostTaxRegistrationsRequestCountryOptionsJpType.fromJson(String json) { return switch (json) {
  'standard' => standard,
  _ => PostTaxRegistrationsRequestCountryOptionsJpType._(json),
}; }

static const PostTaxRegistrationsRequestCountryOptionsJpType standard = PostTaxRegistrationsRequestCountryOptionsJpType._('standard');

static const List<PostTaxRegistrationsRequestCountryOptionsJpType> values = [standard];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTaxRegistrationsRequestCountryOptionsJpType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsJpType($value)'; } 
 }
@immutable final class PostTaxRegistrationsRequestCountryOptionsJp {const PostTaxRegistrationsRequestCountryOptionsJp({required this.type, this.standard, });

factory PostTaxRegistrationsRequestCountryOptionsJp.fromJson(Map<String, dynamic> json) { return PostTaxRegistrationsRequestCountryOptionsJp(
  standard: json['standard'] != null ? PostTaxRegistrationsRequestCountryOptionsJpStandard.fromJson(json['standard'] as Map<String, dynamic>) : null,
  type: PostTaxRegistrationsRequestCountryOptionsJpType.fromJson(json['type'] as String),
); }

final PostTaxRegistrationsRequestCountryOptionsJpStandard? standard;

final PostTaxRegistrationsRequestCountryOptionsJpType type;

Map<String, dynamic> toJson() { return {
  if (standard != null) 'standard': standard?.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
PostTaxRegistrationsRequestCountryOptionsJp copyWith({PostTaxRegistrationsRequestCountryOptionsJpStandard Function()? standard, PostTaxRegistrationsRequestCountryOptionsJpType? type, }) { return PostTaxRegistrationsRequestCountryOptionsJp(
  standard: standard != null ? standard() : this.standard,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTaxRegistrationsRequestCountryOptionsJp &&
          standard == other.standard &&
          type == other.type; } 
@override int get hashCode { return Object.hash(standard, type); } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsJp(standard: $standard, type: $type)'; } 
 }
