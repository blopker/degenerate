// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_tax_registrations_request_country_options_ca_province_standard.dart';final class PostTaxRegistrationsRequestCountryOptionsCaType {const PostTaxRegistrationsRequestCountryOptionsCaType._(this.value);

factory PostTaxRegistrationsRequestCountryOptionsCaType.fromJson(String json) { return switch (json) {
  'province_standard' => provinceStandard,
  'simplified' => simplified,
  'standard' => standard,
  _ => PostTaxRegistrationsRequestCountryOptionsCaType._(json),
}; }

static const PostTaxRegistrationsRequestCountryOptionsCaType provinceStandard = PostTaxRegistrationsRequestCountryOptionsCaType._('province_standard');

static const PostTaxRegistrationsRequestCountryOptionsCaType simplified = PostTaxRegistrationsRequestCountryOptionsCaType._('simplified');

static const PostTaxRegistrationsRequestCountryOptionsCaType standard = PostTaxRegistrationsRequestCountryOptionsCaType._('standard');

static const List<PostTaxRegistrationsRequestCountryOptionsCaType> values = [provinceStandard, simplified, standard];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTaxRegistrationsRequestCountryOptionsCaType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsCaType($value)'; } 
 }
final class PostTaxRegistrationsRequestCountryOptionsCa {const PostTaxRegistrationsRequestCountryOptionsCa({this.provinceStandard, required this.type, });

factory PostTaxRegistrationsRequestCountryOptionsCa.fromJson(Map<String, dynamic> json) { return PostTaxRegistrationsRequestCountryOptionsCa(
  provinceStandard: json['province_standard'] != null ? PostTaxRegistrationsRequestCountryOptionsCaProvinceStandard.fromJson(json['province_standard'] as Map<String, dynamic>) : null,
  type: PostTaxRegistrationsRequestCountryOptionsCaType.fromJson(json['type'] as String),
); }

final PostTaxRegistrationsRequestCountryOptionsCaProvinceStandard? provinceStandard;

final PostTaxRegistrationsRequestCountryOptionsCaType type;

Map<String, dynamic> toJson() { return {
  if (provinceStandard != null) 'province_standard': provinceStandard?.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
PostTaxRegistrationsRequestCountryOptionsCa copyWith({PostTaxRegistrationsRequestCountryOptionsCaProvinceStandard Function()? provinceStandard, PostTaxRegistrationsRequestCountryOptionsCaType? type, }) { return PostTaxRegistrationsRequestCountryOptionsCa(
  provinceStandard: provinceStandard != null ? provinceStandard() : this.provinceStandard,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTaxRegistrationsRequestCountryOptionsCa &&
          provinceStandard == other.provinceStandard &&
          type == other.type; } 
@override int get hashCode { return Object.hash(provinceStandard, type); } 
@override String toString() { return 'PostTaxRegistrationsRequestCountryOptionsCa(provinceStandard: $provinceStandard, type: $type)'; } 
 }
