// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_tax_registrations_request_country_options_sg_standard.dart';@immutable final class PostTaxRegistrationsRequestCountryOptionsSgType {const PostTaxRegistrationsRequestCountryOptionsSgType._(this.value);

factory PostTaxRegistrationsRequestCountryOptionsSgType.fromJson(String json) { return switch (json) {
  'standard' => standard,
  _ => PostTaxRegistrationsRequestCountryOptionsSgType._(json),
}; }

static const PostTaxRegistrationsRequestCountryOptionsSgType standard = PostTaxRegistrationsRequestCountryOptionsSgType._('standard');

static const List<PostTaxRegistrationsRequestCountryOptionsSgType> values = [standard];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTaxRegistrationsRequestCountryOptionsSgType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsSgType($value)'; } 
 }
@immutable final class PostTaxRegistrationsRequestCountryOptionsSg {const PostTaxRegistrationsRequestCountryOptionsSg({required this.type, this.standard, });

factory PostTaxRegistrationsRequestCountryOptionsSg.fromJson(Map<String, dynamic> json) { return PostTaxRegistrationsRequestCountryOptionsSg(
  standard: json['standard'] != null ? PostTaxRegistrationsRequestCountryOptionsSgStandard.fromJson(json['standard'] as Map<String, dynamic>) : null,
  type: PostTaxRegistrationsRequestCountryOptionsSgType.fromJson(json['type'] as String),
); }

final PostTaxRegistrationsRequestCountryOptionsSgStandard? standard;

final PostTaxRegistrationsRequestCountryOptionsSgType type;

Map<String, dynamic> toJson() { return {
  if (standard != null) 'standard': standard?.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
PostTaxRegistrationsRequestCountryOptionsSg copyWith({PostTaxRegistrationsRequestCountryOptionsSgStandard Function()? standard, PostTaxRegistrationsRequestCountryOptionsSgType? type, }) { return PostTaxRegistrationsRequestCountryOptionsSg(
  standard: standard != null ? standard() : this.standard,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTaxRegistrationsRequestCountryOptionsSg &&
          standard == other.standard &&
          type == other.type; } 
@override int get hashCode { return Object.hash(standard, type); } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsSg(standard: $standard, type: $type)'; } 
 }
