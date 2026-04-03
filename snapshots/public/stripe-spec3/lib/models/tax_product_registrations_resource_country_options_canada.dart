// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'tax_product_registrations_resource_country_options_ca_province_standard.dart';/// Type of registration in Canada.
@immutable final class TaxProductRegistrationsResourceCountryOptionsCanadaType {const TaxProductRegistrationsResourceCountryOptionsCanadaType._(this.value);

factory TaxProductRegistrationsResourceCountryOptionsCanadaType.fromJson(String json) { return switch (json) {
  'province_standard' => provinceStandard,
  'simplified' => simplified,
  'standard' => standard,
  _ => TaxProductRegistrationsResourceCountryOptionsCanadaType._(json),
}; }

static const TaxProductRegistrationsResourceCountryOptionsCanadaType provinceStandard = TaxProductRegistrationsResourceCountryOptionsCanadaType._('province_standard');

static const TaxProductRegistrationsResourceCountryOptionsCanadaType simplified = TaxProductRegistrationsResourceCountryOptionsCanadaType._('simplified');

static const TaxProductRegistrationsResourceCountryOptionsCanadaType standard = TaxProductRegistrationsResourceCountryOptionsCanadaType._('standard');

static const List<TaxProductRegistrationsResourceCountryOptionsCanadaType> values = [provinceStandard, simplified, standard];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TaxProductRegistrationsResourceCountryOptionsCanadaType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TaxProductRegistrationsResourceCountryOptionsCanadaType($value)'; } 
 }
/// 
@immutable final class TaxProductRegistrationsResourceCountryOptionsCanada {const TaxProductRegistrationsResourceCountryOptionsCanada({required this.type, this.provinceStandard, });

factory TaxProductRegistrationsResourceCountryOptionsCanada.fromJson(Map<String, dynamic> json) { return TaxProductRegistrationsResourceCountryOptionsCanada(
  provinceStandard: json['province_standard'] != null ? TaxProductRegistrationsResourceCountryOptionsCaProvinceStandard.fromJson(json['province_standard'] as Map<String, dynamic>) : null,
  type: TaxProductRegistrationsResourceCountryOptionsCanadaType.fromJson(json['type'] as String),
); }

final TaxProductRegistrationsResourceCountryOptionsCaProvinceStandard? provinceStandard;

/// Type of registration in Canada.
final TaxProductRegistrationsResourceCountryOptionsCanadaType type;

Map<String, dynamic> toJson() { return {
  if (provinceStandard != null) 'province_standard': provinceStandard?.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
TaxProductRegistrationsResourceCountryOptionsCanada copyWith({TaxProductRegistrationsResourceCountryOptionsCaProvinceStandard Function()? provinceStandard, TaxProductRegistrationsResourceCountryOptionsCanadaType? type, }) { return TaxProductRegistrationsResourceCountryOptionsCanada(
  provinceStandard: provinceStandard != null ? provinceStandard() : this.provinceStandard,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TaxProductRegistrationsResourceCountryOptionsCanada &&
          provinceStandard == other.provinceStandard &&
          type == other.type; } 
@override int get hashCode { return Object.hash(provinceStandard, type); } 
@override String toString() { return 'TaxProductRegistrationsResourceCountryOptionsCanada(provinceStandard: $provinceStandard, type: $type)'; } 
 }
