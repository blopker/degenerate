// GENERATED CODE - DO NOT MODIFY BY HAND

import 'address.dart';/// The address validation capabilities to use.
final class IssuingCardShippingAddressValidationMode {const IssuingCardShippingAddressValidationMode._(this.value);

factory IssuingCardShippingAddressValidationMode.fromJson(String json) { return switch (json) {
  'disabled' => disabled,
  'normalization_only' => normalizationOnly,
  'validation_and_normalization' => validationAndNormalization,
  _ => IssuingCardShippingAddressValidationMode._(json),
}; }

static const IssuingCardShippingAddressValidationMode disabled = IssuingCardShippingAddressValidationMode._('disabled');

static const IssuingCardShippingAddressValidationMode normalizationOnly = IssuingCardShippingAddressValidationMode._('normalization_only');

static const IssuingCardShippingAddressValidationMode validationAndNormalization = IssuingCardShippingAddressValidationMode._('validation_and_normalization');

static const List<IssuingCardShippingAddressValidationMode> values = [disabled, normalizationOnly, validationAndNormalization];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuingCardShippingAddressValidationMode && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'IssuingCardShippingAddressValidationMode($value)'; } 
 }
/// The validation result for the shipping address.
final class IssuingCardShippingAddressValidationResult {const IssuingCardShippingAddressValidationResult._(this.value);

factory IssuingCardShippingAddressValidationResult.fromJson(String json) { return switch (json) {
  'indeterminate' => indeterminate,
  'likely_deliverable' => likelyDeliverable,
  'likely_undeliverable' => likelyUndeliverable,
  _ => IssuingCardShippingAddressValidationResult._(json),
}; }

static const IssuingCardShippingAddressValidationResult indeterminate = IssuingCardShippingAddressValidationResult._('indeterminate');

static const IssuingCardShippingAddressValidationResult likelyDeliverable = IssuingCardShippingAddressValidationResult._('likely_deliverable');

static const IssuingCardShippingAddressValidationResult likelyUndeliverable = IssuingCardShippingAddressValidationResult._('likely_undeliverable');

static const List<IssuingCardShippingAddressValidationResult> values = [indeterminate, likelyDeliverable, likelyUndeliverable];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuingCardShippingAddressValidationResult && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'IssuingCardShippingAddressValidationResult($value)'; } 
 }
/// 
final class IssuingCardShippingAddressValidation {const IssuingCardShippingAddressValidation({required this.mode, this.normalizedAddress, this.result, });

factory IssuingCardShippingAddressValidation.fromJson(Map<String, dynamic> json) { return IssuingCardShippingAddressValidation(
  mode: IssuingCardShippingAddressValidationMode.fromJson(json['mode'] as String),
  normalizedAddress: json['normalized_address'] != null ? Address.fromJson(json['normalized_address'] as Map<String, dynamic>) : null,
  result: json['result'] != null ? IssuingCardShippingAddressValidationResult.fromJson(json['result'] as String) : null,
); }

/// The address validation capabilities to use.
final IssuingCardShippingAddressValidationMode mode;

/// The normalized shipping address.
final Address? normalizedAddress;

/// The validation result for the shipping address.
final IssuingCardShippingAddressValidationResult? result;

Map<String, dynamic> toJson() { return {
  'mode': mode.toJson(),
  if (normalizedAddress != null) 'normalized_address': normalizedAddress?.toJson(),
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('mode'); } 
IssuingCardShippingAddressValidation copyWith({IssuingCardShippingAddressValidationMode? mode, Address? Function()? normalizedAddress, IssuingCardShippingAddressValidationResult? Function()? result, }) { return IssuingCardShippingAddressValidation(
  mode: mode ?? this.mode,
  normalizedAddress: normalizedAddress != null ? normalizedAddress() : this.normalizedAddress,
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuingCardShippingAddressValidation &&
          mode == other.mode &&
          normalizedAddress == other.normalizedAddress &&
          result == other.result; } 
@override int get hashCode { return Object.hash(mode, normalizedAddress, result); } 
@override String toString() { return 'IssuingCardShippingAddressValidation(mode: $mode, normalizedAddress: $normalizedAddress, result: $result)'; } 
 }
