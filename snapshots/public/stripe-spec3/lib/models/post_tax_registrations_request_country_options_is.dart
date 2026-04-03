// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_tax_registrations_request_country_options_is_standard.dart';@immutable final class PostTaxRegistrationsRequestCountryOptionsIsType {const PostTaxRegistrationsRequestCountryOptionsIsType._(this.value);

factory PostTaxRegistrationsRequestCountryOptionsIsType.fromJson(String json) { return switch (json) {
  'standard' => standard,
  _ => PostTaxRegistrationsRequestCountryOptionsIsType._(json),
}; }

static const PostTaxRegistrationsRequestCountryOptionsIsType standard = PostTaxRegistrationsRequestCountryOptionsIsType._('standard');

static const List<PostTaxRegistrationsRequestCountryOptionsIsType> values = [standard];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTaxRegistrationsRequestCountryOptionsIsType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsIsType($value)'; } 
 }
@immutable final class PostTaxRegistrationsRequestCountryOptionsIs {const PostTaxRegistrationsRequestCountryOptionsIs({required this.type, this.standard, });

factory PostTaxRegistrationsRequestCountryOptionsIs.fromJson(Map<String, dynamic> json) { return PostTaxRegistrationsRequestCountryOptionsIs(
  standard: json['standard'] != null ? PostTaxRegistrationsRequestCountryOptionsIsStandard.fromJson(json['standard'] as Map<String, dynamic>) : null,
  type: PostTaxRegistrationsRequestCountryOptionsIsType.fromJson(json['type'] as String),
); }

final PostTaxRegistrationsRequestCountryOptionsIsStandard? standard;

final PostTaxRegistrationsRequestCountryOptionsIsType type;

Map<String, dynamic> toJson() { return {
  if (standard != null) 'standard': standard?.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
PostTaxRegistrationsRequestCountryOptionsIs copyWith({PostTaxRegistrationsRequestCountryOptionsIsStandard Function()? standard, PostTaxRegistrationsRequestCountryOptionsIsType? type, }) { return PostTaxRegistrationsRequestCountryOptionsIs(
  standard: standard != null ? standard() : this.standard,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTaxRegistrationsRequestCountryOptionsIs &&
          standard == other.standard &&
          type == other.type; } 
@override int get hashCode { return Object.hash(standard, type); } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsIs(standard: $standard, type: $type)'; } 
 }
