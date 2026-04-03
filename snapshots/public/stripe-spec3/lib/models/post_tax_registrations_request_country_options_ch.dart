// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_tax_registrations_request_country_options_ch_standard.dart';@immutable final class PostTaxRegistrationsRequestCountryOptionsChType {const PostTaxRegistrationsRequestCountryOptionsChType._(this.value);

factory PostTaxRegistrationsRequestCountryOptionsChType.fromJson(String json) { return switch (json) {
  'standard' => standard,
  _ => PostTaxRegistrationsRequestCountryOptionsChType._(json),
}; }

static const PostTaxRegistrationsRequestCountryOptionsChType standard = PostTaxRegistrationsRequestCountryOptionsChType._('standard');

static const List<PostTaxRegistrationsRequestCountryOptionsChType> values = [standard];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTaxRegistrationsRequestCountryOptionsChType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsChType($value)'; } 
 }
@immutable final class PostTaxRegistrationsRequestCountryOptionsCh {const PostTaxRegistrationsRequestCountryOptionsCh({required this.type, this.standard, });

factory PostTaxRegistrationsRequestCountryOptionsCh.fromJson(Map<String, dynamic> json) { return PostTaxRegistrationsRequestCountryOptionsCh(
  standard: json['standard'] != null ? PostTaxRegistrationsRequestCountryOptionsChStandard.fromJson(json['standard'] as Map<String, dynamic>) : null,
  type: PostTaxRegistrationsRequestCountryOptionsChType.fromJson(json['type'] as String),
); }

final PostTaxRegistrationsRequestCountryOptionsChStandard? standard;

final PostTaxRegistrationsRequestCountryOptionsChType type;

Map<String, dynamic> toJson() { return {
  if (standard != null) 'standard': standard?.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
PostTaxRegistrationsRequestCountryOptionsCh copyWith({PostTaxRegistrationsRequestCountryOptionsChStandard Function()? standard, PostTaxRegistrationsRequestCountryOptionsChType? type, }) { return PostTaxRegistrationsRequestCountryOptionsCh(
  standard: standard != null ? standard() : this.standard,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTaxRegistrationsRequestCountryOptionsCh &&
          standard == other.standard &&
          type == other.type; } 
@override int get hashCode { return Object.hash(standard, type); } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsCh(standard: $standard, type: $type)'; } 
 }
