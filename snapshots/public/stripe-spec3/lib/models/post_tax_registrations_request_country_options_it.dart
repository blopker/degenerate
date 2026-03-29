// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_tax_registrations_request_country_options_it_standard.dart';final class PostTaxRegistrationsRequestCountryOptionsItType {const PostTaxRegistrationsRequestCountryOptionsItType._(this.value);

factory PostTaxRegistrationsRequestCountryOptionsItType.fromJson(String json) { return switch (json) {
  'ioss' => ioss,
  'oss_non_union' => ossNonUnion,
  'oss_union' => ossUnion,
  'standard' => standard,
  _ => PostTaxRegistrationsRequestCountryOptionsItType._(json),
}; }

static const PostTaxRegistrationsRequestCountryOptionsItType ioss = PostTaxRegistrationsRequestCountryOptionsItType._('ioss');

static const PostTaxRegistrationsRequestCountryOptionsItType ossNonUnion = PostTaxRegistrationsRequestCountryOptionsItType._('oss_non_union');

static const PostTaxRegistrationsRequestCountryOptionsItType ossUnion = PostTaxRegistrationsRequestCountryOptionsItType._('oss_union');

static const PostTaxRegistrationsRequestCountryOptionsItType standard = PostTaxRegistrationsRequestCountryOptionsItType._('standard');

static const List<PostTaxRegistrationsRequestCountryOptionsItType> values = [ioss, ossNonUnion, ossUnion, standard];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTaxRegistrationsRequestCountryOptionsItType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsItType($value)'; } 
 }
final class PostTaxRegistrationsRequestCountryOptionsIt {const PostTaxRegistrationsRequestCountryOptionsIt({this.standard, required this.type, });

factory PostTaxRegistrationsRequestCountryOptionsIt.fromJson(Map<String, dynamic> json) { return PostTaxRegistrationsRequestCountryOptionsIt(
  standard: json['standard'] != null ? PostTaxRegistrationsRequestCountryOptionsItStandard.fromJson(json['standard'] as Map<String, dynamic>) : null,
  type: PostTaxRegistrationsRequestCountryOptionsItType.fromJson(json['type'] as String),
); }

final PostTaxRegistrationsRequestCountryOptionsItStandard? standard;

final PostTaxRegistrationsRequestCountryOptionsItType type;

Map<String, dynamic> toJson() { return {
  if (standard != null) 'standard': standard?.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
PostTaxRegistrationsRequestCountryOptionsIt copyWith({PostTaxRegistrationsRequestCountryOptionsItStandard Function()? standard, PostTaxRegistrationsRequestCountryOptionsItType? type, }) { return PostTaxRegistrationsRequestCountryOptionsIt(
  standard: standard != null ? standard() : this.standard,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTaxRegistrationsRequestCountryOptionsIt &&
          standard == other.standard &&
          type == other.type; } 
@override int get hashCode { return Object.hash(standard, type); } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsIt(standard: $standard, type: $type)'; } 
 }
