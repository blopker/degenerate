// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_tax_registrations_request_country_options_ae_standard.dart';final class PostTaxRegistrationsRequestCountryOptionsAeType {const PostTaxRegistrationsRequestCountryOptionsAeType._(this.value);

factory PostTaxRegistrationsRequestCountryOptionsAeType.fromJson(String json) { return switch (json) {
  'standard' => standard,
  _ => PostTaxRegistrationsRequestCountryOptionsAeType._(json),
}; }

static const PostTaxRegistrationsRequestCountryOptionsAeType standard = PostTaxRegistrationsRequestCountryOptionsAeType._('standard');

static const List<PostTaxRegistrationsRequestCountryOptionsAeType> values = [standard];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTaxRegistrationsRequestCountryOptionsAeType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsAeType($value)'; } 
 }
final class PostTaxRegistrationsRequestCountryOptionsAe {const PostTaxRegistrationsRequestCountryOptionsAe({this.standard, required this.type, });

factory PostTaxRegistrationsRequestCountryOptionsAe.fromJson(Map<String, dynamic> json) { return PostTaxRegistrationsRequestCountryOptionsAe(
  standard: json['standard'] != null ? PostTaxRegistrationsRequestCountryOptionsAeStandard.fromJson(json['standard'] as Map<String, dynamic>) : null,
  type: PostTaxRegistrationsRequestCountryOptionsAeType.fromJson(json['type'] as String),
); }

final PostTaxRegistrationsRequestCountryOptionsAeStandard? standard;

final PostTaxRegistrationsRequestCountryOptionsAeType type;

Map<String, dynamic> toJson() { return {
  if (standard != null) 'standard': standard?.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
PostTaxRegistrationsRequestCountryOptionsAe copyWith({PostTaxRegistrationsRequestCountryOptionsAeStandard Function()? standard, PostTaxRegistrationsRequestCountryOptionsAeType? type, }) { return PostTaxRegistrationsRequestCountryOptionsAe(
  standard: standard != null ? standard() : this.standard,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTaxRegistrationsRequestCountryOptionsAe &&
          standard == other.standard &&
          type == other.type; } 
@override int get hashCode { return Object.hash(standard, type); } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsAe(standard: $standard, type: $type)'; } 
 }
