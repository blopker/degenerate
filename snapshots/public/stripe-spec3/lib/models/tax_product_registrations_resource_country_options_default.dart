// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Type of registration in `country`.
@immutable final class TaxProductRegistrationsResourceCountryOptionsDefaultType {const TaxProductRegistrationsResourceCountryOptionsDefaultType._(this.value);

factory TaxProductRegistrationsResourceCountryOptionsDefaultType.fromJson(String json) { return switch (json) {
  'standard' => standard,
  _ => TaxProductRegistrationsResourceCountryOptionsDefaultType._(json),
}; }

static const TaxProductRegistrationsResourceCountryOptionsDefaultType standard = TaxProductRegistrationsResourceCountryOptionsDefaultType._('standard');

static const List<TaxProductRegistrationsResourceCountryOptionsDefaultType> values = [standard];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TaxProductRegistrationsResourceCountryOptionsDefaultType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TaxProductRegistrationsResourceCountryOptionsDefaultType($value)'; } 
 }
/// 
@immutable final class TaxProductRegistrationsResourceCountryOptionsDefault {const TaxProductRegistrationsResourceCountryOptionsDefault({required this.type});

factory TaxProductRegistrationsResourceCountryOptionsDefault.fromJson(Map<String, dynamic> json) { return TaxProductRegistrationsResourceCountryOptionsDefault(
  type: TaxProductRegistrationsResourceCountryOptionsDefaultType.fromJson(json['type'] as String),
); }

/// Type of registration in `country`.
final TaxProductRegistrationsResourceCountryOptionsDefaultType type;

Map<String, dynamic> toJson() { return {
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type'); } 
TaxProductRegistrationsResourceCountryOptionsDefault copyWith({TaxProductRegistrationsResourceCountryOptionsDefaultType? type}) { return TaxProductRegistrationsResourceCountryOptionsDefault(
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TaxProductRegistrationsResourceCountryOptionsDefault &&
          type == other.type; } 
@override int get hashCode { return type.hashCode; } 
@override String toString() { return 'TaxProductRegistrationsResourceCountryOptionsDefault(type: $type)'; } 
 }
