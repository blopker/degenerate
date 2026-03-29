// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_tax_registrations_request_country_options_mk_standard.dart';final class PostTaxRegistrationsRequestCountryOptionsMkType {const PostTaxRegistrationsRequestCountryOptionsMkType._(this.value);

factory PostTaxRegistrationsRequestCountryOptionsMkType.fromJson(String json) { return switch (json) {
  'standard' => standard,
  _ => PostTaxRegistrationsRequestCountryOptionsMkType._(json),
}; }

static const PostTaxRegistrationsRequestCountryOptionsMkType standard = PostTaxRegistrationsRequestCountryOptionsMkType._('standard');

static const List<PostTaxRegistrationsRequestCountryOptionsMkType> values = [standard];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTaxRegistrationsRequestCountryOptionsMkType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsMkType($value)'; } 
 }
final class PostTaxRegistrationsRequestCountryOptionsMk {const PostTaxRegistrationsRequestCountryOptionsMk({this.standard, required this.type, });

factory PostTaxRegistrationsRequestCountryOptionsMk.fromJson(Map<String, dynamic> json) { return PostTaxRegistrationsRequestCountryOptionsMk(
  standard: json['standard'] != null ? PostTaxRegistrationsRequestCountryOptionsMkStandard.fromJson(json['standard'] as Map<String, dynamic>) : null,
  type: PostTaxRegistrationsRequestCountryOptionsMkType.fromJson(json['type'] as String),
); }

final PostTaxRegistrationsRequestCountryOptionsMkStandard? standard;

final PostTaxRegistrationsRequestCountryOptionsMkType type;

Map<String, dynamic> toJson() { return {
  if (standard != null) 'standard': standard?.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
PostTaxRegistrationsRequestCountryOptionsMk copyWith({PostTaxRegistrationsRequestCountryOptionsMkStandard Function()? standard, PostTaxRegistrationsRequestCountryOptionsMkType? type, }) { return PostTaxRegistrationsRequestCountryOptionsMk(
  standard: standard != null ? standard() : this.standard,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTaxRegistrationsRequestCountryOptionsMk &&
          standard == other.standard &&
          type == other.type; } 
@override int get hashCode { return Object.hash(standard, type); } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsMk(standard: $standard, type: $type)'; } 
 }
