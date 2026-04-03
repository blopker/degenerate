// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_tax_registrations_request_country_options_au_standard.dart';@immutable final class PostTaxRegistrationsRequestCountryOptionsAuType {const PostTaxRegistrationsRequestCountryOptionsAuType._(this.value);

factory PostTaxRegistrationsRequestCountryOptionsAuType.fromJson(String json) { return switch (json) {
  'standard' => standard,
  _ => PostTaxRegistrationsRequestCountryOptionsAuType._(json),
}; }

static const PostTaxRegistrationsRequestCountryOptionsAuType standard = PostTaxRegistrationsRequestCountryOptionsAuType._('standard');

static const List<PostTaxRegistrationsRequestCountryOptionsAuType> values = [standard];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTaxRegistrationsRequestCountryOptionsAuType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsAuType($value)'; } 
 }
@immutable final class PostTaxRegistrationsRequestCountryOptionsAu {const PostTaxRegistrationsRequestCountryOptionsAu({required this.type, this.standard, });

factory PostTaxRegistrationsRequestCountryOptionsAu.fromJson(Map<String, dynamic> json) { return PostTaxRegistrationsRequestCountryOptionsAu(
  standard: json['standard'] != null ? PostTaxRegistrationsRequestCountryOptionsAuStandard.fromJson(json['standard'] as Map<String, dynamic>) : null,
  type: PostTaxRegistrationsRequestCountryOptionsAuType.fromJson(json['type'] as String),
); }

final PostTaxRegistrationsRequestCountryOptionsAuStandard? standard;

final PostTaxRegistrationsRequestCountryOptionsAuType type;

Map<String, dynamic> toJson() { return {
  if (standard != null) 'standard': standard?.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
PostTaxRegistrationsRequestCountryOptionsAu copyWith({PostTaxRegistrationsRequestCountryOptionsAuStandard Function()? standard, PostTaxRegistrationsRequestCountryOptionsAuType? type, }) { return PostTaxRegistrationsRequestCountryOptionsAu(
  standard: standard != null ? standard() : this.standard,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTaxRegistrationsRequestCountryOptionsAu &&
          standard == other.standard &&
          type == other.type; } 
@override int get hashCode { return Object.hash(standard, type); } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsAu(standard: $standard, type: $type)'; } 
 }
