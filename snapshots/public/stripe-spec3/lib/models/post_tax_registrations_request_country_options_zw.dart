// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_tax_registrations_request_country_options_zw_standard.dart';@immutable final class PostTaxRegistrationsRequestCountryOptionsZwType {const PostTaxRegistrationsRequestCountryOptionsZwType._(this.value);

factory PostTaxRegistrationsRequestCountryOptionsZwType.fromJson(String json) { return switch (json) {
  'standard' => standard,
  _ => PostTaxRegistrationsRequestCountryOptionsZwType._(json),
}; }

static const PostTaxRegistrationsRequestCountryOptionsZwType standard = PostTaxRegistrationsRequestCountryOptionsZwType._('standard');

static const List<PostTaxRegistrationsRequestCountryOptionsZwType> values = [standard];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTaxRegistrationsRequestCountryOptionsZwType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsZwType($value)'; } 
 }
@immutable final class PostTaxRegistrationsRequestCountryOptionsZw {const PostTaxRegistrationsRequestCountryOptionsZw({required this.type, this.standard, });

factory PostTaxRegistrationsRequestCountryOptionsZw.fromJson(Map<String, dynamic> json) { return PostTaxRegistrationsRequestCountryOptionsZw(
  standard: json['standard'] != null ? PostTaxRegistrationsRequestCountryOptionsZwStandard.fromJson(json['standard'] as Map<String, dynamic>) : null,
  type: PostTaxRegistrationsRequestCountryOptionsZwType.fromJson(json['type'] as String),
); }

final PostTaxRegistrationsRequestCountryOptionsZwStandard? standard;

final PostTaxRegistrationsRequestCountryOptionsZwType type;

Map<String, dynamic> toJson() { return {
  if (standard != null) 'standard': standard?.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
PostTaxRegistrationsRequestCountryOptionsZw copyWith({PostTaxRegistrationsRequestCountryOptionsZwStandard Function()? standard, PostTaxRegistrationsRequestCountryOptionsZwType? type, }) { return PostTaxRegistrationsRequestCountryOptionsZw(
  standard: standard != null ? standard() : this.standard,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTaxRegistrationsRequestCountryOptionsZw &&
          standard == other.standard &&
          type == other.type; } 
@override int get hashCode { return Object.hash(standard, type); } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsZw(standard: $standard, type: $type)'; } 
 }
