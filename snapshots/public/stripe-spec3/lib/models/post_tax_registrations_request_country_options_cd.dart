// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_tax_registrations_request_country_options_cd_standard.dart';final class PostTaxRegistrationsRequestCountryOptionsCdType {const PostTaxRegistrationsRequestCountryOptionsCdType._(this.value);

factory PostTaxRegistrationsRequestCountryOptionsCdType.fromJson(String json) { return switch (json) {
  'standard' => standard,
  _ => PostTaxRegistrationsRequestCountryOptionsCdType._(json),
}; }

static const PostTaxRegistrationsRequestCountryOptionsCdType standard = PostTaxRegistrationsRequestCountryOptionsCdType._('standard');

static const List<PostTaxRegistrationsRequestCountryOptionsCdType> values = [standard];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTaxRegistrationsRequestCountryOptionsCdType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsCdType($value)'; } 
 }
final class PostTaxRegistrationsRequestCountryOptionsCd {const PostTaxRegistrationsRequestCountryOptionsCd({this.standard, required this.type, });

factory PostTaxRegistrationsRequestCountryOptionsCd.fromJson(Map<String, dynamic> json) { return PostTaxRegistrationsRequestCountryOptionsCd(
  standard: json['standard'] != null ? PostTaxRegistrationsRequestCountryOptionsCdStandard.fromJson(json['standard'] as Map<String, dynamic>) : null,
  type: PostTaxRegistrationsRequestCountryOptionsCdType.fromJson(json['type'] as String),
); }

final PostTaxRegistrationsRequestCountryOptionsCdStandard? standard;

final PostTaxRegistrationsRequestCountryOptionsCdType type;

Map<String, dynamic> toJson() { return {
  if (standard != null) 'standard': standard?.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
PostTaxRegistrationsRequestCountryOptionsCd copyWith({PostTaxRegistrationsRequestCountryOptionsCdStandard Function()? standard, PostTaxRegistrationsRequestCountryOptionsCdType? type, }) { return PostTaxRegistrationsRequestCountryOptionsCd(
  standard: standard != null ? standard() : this.standard,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTaxRegistrationsRequestCountryOptionsCd &&
          standard == other.standard &&
          type == other.type; } 
@override int get hashCode { return Object.hash(standard, type); } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsCd(standard: $standard, type: $type)'; } 
 }
