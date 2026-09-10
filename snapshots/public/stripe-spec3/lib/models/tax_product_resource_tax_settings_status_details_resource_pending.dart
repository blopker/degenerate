// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class TaxProductResourceTaxSettingsStatusDetailsResourcePending {const TaxProductResourceTaxSettingsStatusDetailsResourcePending({this.missingFields = const Omittable.absent()});

factory TaxProductResourceTaxSettingsStatusDetailsResourcePending.fromJson(Map<String, dynamic> json) { return TaxProductResourceTaxSettingsStatusDetailsResourcePending(
  missingFields: json.containsKey('missing_fields') ? Omittable((json['missing_fields'] as List<dynamic>?)?.map((e) => e as String).toList()) : const Omittable.absent(),
); }

/// The list of missing fields that are required to perform calculations. It includes the entry `head_office` when the status is `pending`. It is recommended to set the optional values even if they aren't listed as required for calculating taxes. Calculations can fail if missing fields aren't explicitly provided on every call.
final Omittable<List<String>?> missingFields;

Map<String, dynamic> toJson() { return {
  if (missingFields.isPresent) 'missing_fields': missingFields.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'missing_fields'}.contains(key)); } 
TaxProductResourceTaxSettingsStatusDetailsResourcePending copyWith({Omittable<List<String>?>? missingFields}) { return TaxProductResourceTaxSettingsStatusDetailsResourcePending(
  missingFields: missingFields ?? this.missingFields,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TaxProductResourceTaxSettingsStatusDetailsResourcePending &&
          missingFields.isPresent == other.missingFields.isPresent &&
          listEquals(missingFields.value, other.missingFields.value); } 
@override int get hashCode { return Object.hashAll(missingFields.value ?? const []).hashCode; } 
@override String toString() { return 'TaxProductResourceTaxSettingsStatusDetailsResourcePending(missingFields: $missingFields)'; } 
 }
