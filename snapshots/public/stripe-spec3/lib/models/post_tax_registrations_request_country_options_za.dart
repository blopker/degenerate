// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_tax_registrations_request_country_options_za_standard.dart';@immutable final class PostTaxRegistrationsRequestCountryOptionsZaType {const PostTaxRegistrationsRequestCountryOptionsZaType._(this.value);

factory PostTaxRegistrationsRequestCountryOptionsZaType.fromJson(String json) { return switch (json) {
  'standard' => standard,
  _ => PostTaxRegistrationsRequestCountryOptionsZaType._(json),
}; }

static const PostTaxRegistrationsRequestCountryOptionsZaType standard = PostTaxRegistrationsRequestCountryOptionsZaType._('standard');

static const List<PostTaxRegistrationsRequestCountryOptionsZaType> values = [standard];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTaxRegistrationsRequestCountryOptionsZaType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsZaType($value)'; } 
 }
@immutable final class PostTaxRegistrationsRequestCountryOptionsZa {const PostTaxRegistrationsRequestCountryOptionsZa({required this.type, this.standard, });

factory PostTaxRegistrationsRequestCountryOptionsZa.fromJson(Map<String, dynamic> json) { return PostTaxRegistrationsRequestCountryOptionsZa(
  standard: json['standard'] != null ? PostTaxRegistrationsRequestCountryOptionsZaStandard.fromJson(json['standard'] as Map<String, dynamic>) : null,
  type: PostTaxRegistrationsRequestCountryOptionsZaType.fromJson(json['type'] as String),
); }

final PostTaxRegistrationsRequestCountryOptionsZaStandard? standard;

final PostTaxRegistrationsRequestCountryOptionsZaType type;

Map<String, dynamic> toJson() { return {
  if (standard != null) 'standard': standard?.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
PostTaxRegistrationsRequestCountryOptionsZa copyWith({PostTaxRegistrationsRequestCountryOptionsZaStandard Function()? standard, PostTaxRegistrationsRequestCountryOptionsZaType? type, }) { return PostTaxRegistrationsRequestCountryOptionsZa(
  standard: standard != null ? standard() : this.standard,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTaxRegistrationsRequestCountryOptionsZa &&
          standard == other.standard &&
          type == other.type; } 
@override int get hashCode { return Object.hash(standard, type); } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsZa(standard: $standard, type: $type)'; } 
 }
