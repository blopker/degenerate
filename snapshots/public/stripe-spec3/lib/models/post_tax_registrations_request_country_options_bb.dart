// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_tax_registrations_request_country_options_bb_standard.dart';@immutable final class PostTaxRegistrationsRequestCountryOptionsBbType {const PostTaxRegistrationsRequestCountryOptionsBbType._(this.value);

factory PostTaxRegistrationsRequestCountryOptionsBbType.fromJson(String json) { return switch (json) {
  'standard' => standard,
  _ => PostTaxRegistrationsRequestCountryOptionsBbType._(json),
}; }

static const PostTaxRegistrationsRequestCountryOptionsBbType standard = PostTaxRegistrationsRequestCountryOptionsBbType._('standard');

static const List<PostTaxRegistrationsRequestCountryOptionsBbType> values = [standard];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTaxRegistrationsRequestCountryOptionsBbType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsBbType($value)'; } 
 }
@immutable final class PostTaxRegistrationsRequestCountryOptionsBb {const PostTaxRegistrationsRequestCountryOptionsBb({required this.type, this.standard, });

factory PostTaxRegistrationsRequestCountryOptionsBb.fromJson(Map<String, dynamic> json) { return PostTaxRegistrationsRequestCountryOptionsBb(
  standard: json['standard'] != null ? PostTaxRegistrationsRequestCountryOptionsBbStandard.fromJson(json['standard'] as Map<String, dynamic>) : null,
  type: PostTaxRegistrationsRequestCountryOptionsBbType.fromJson(json['type'] as String),
); }

final PostTaxRegistrationsRequestCountryOptionsBbStandard? standard;

final PostTaxRegistrationsRequestCountryOptionsBbType type;

Map<String, dynamic> toJson() { return {
  if (standard != null) 'standard': standard?.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
PostTaxRegistrationsRequestCountryOptionsBb copyWith({PostTaxRegistrationsRequestCountryOptionsBbStandard Function()? standard, PostTaxRegistrationsRequestCountryOptionsBbType? type, }) { return PostTaxRegistrationsRequestCountryOptionsBb(
  standard: standard != null ? standard() : this.standard,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTaxRegistrationsRequestCountryOptionsBb &&
          standard == other.standard &&
          type == other.type; } 
@override int get hashCode { return Object.hash(standard, type); } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsBb(standard: $standard, type: $type)'; } 
 }
