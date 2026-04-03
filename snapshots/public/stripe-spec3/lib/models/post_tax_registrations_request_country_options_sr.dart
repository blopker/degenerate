// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_tax_registrations_request_country_options_sr_standard.dart';@immutable final class PostTaxRegistrationsRequestCountryOptionsSrType {const PostTaxRegistrationsRequestCountryOptionsSrType._(this.value);

factory PostTaxRegistrationsRequestCountryOptionsSrType.fromJson(String json) { return switch (json) {
  'standard' => standard,
  _ => PostTaxRegistrationsRequestCountryOptionsSrType._(json),
}; }

static const PostTaxRegistrationsRequestCountryOptionsSrType standard = PostTaxRegistrationsRequestCountryOptionsSrType._('standard');

static const List<PostTaxRegistrationsRequestCountryOptionsSrType> values = [standard];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTaxRegistrationsRequestCountryOptionsSrType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsSrType($value)'; } 
 }
@immutable final class PostTaxRegistrationsRequestCountryOptionsSr {const PostTaxRegistrationsRequestCountryOptionsSr({required this.type, this.standard, });

factory PostTaxRegistrationsRequestCountryOptionsSr.fromJson(Map<String, dynamic> json) { return PostTaxRegistrationsRequestCountryOptionsSr(
  standard: json['standard'] != null ? PostTaxRegistrationsRequestCountryOptionsSrStandard.fromJson(json['standard'] as Map<String, dynamic>) : null,
  type: PostTaxRegistrationsRequestCountryOptionsSrType.fromJson(json['type'] as String),
); }

final PostTaxRegistrationsRequestCountryOptionsSrStandard? standard;

final PostTaxRegistrationsRequestCountryOptionsSrType type;

Map<String, dynamic> toJson() { return {
  if (standard != null) 'standard': standard?.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
PostTaxRegistrationsRequestCountryOptionsSr copyWith({PostTaxRegistrationsRequestCountryOptionsSrStandard Function()? standard, PostTaxRegistrationsRequestCountryOptionsSrType? type, }) { return PostTaxRegistrationsRequestCountryOptionsSr(
  standard: standard != null ? standard() : this.standard,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTaxRegistrationsRequestCountryOptionsSr &&
          standard == other.standard &&
          type == other.type; } 
@override int get hashCode { return Object.hash(standard, type); } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsSr(standard: $standard, type: $type)'; } 
 }
