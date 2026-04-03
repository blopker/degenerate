// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// 
@immutable final class PaymentLinksResourceCustomFieldsNumeric {const PaymentLinksResourceCustomFieldsNumeric({this.defaultValue, this.maximumLength, this.minimumLength, });

factory PaymentLinksResourceCustomFieldsNumeric.fromJson(Map<String, dynamic> json) { return PaymentLinksResourceCustomFieldsNumeric(
  defaultValue: json['default_value'] as String?,
  maximumLength: json['maximum_length'] != null ? (json['maximum_length'] as num).toInt() : null,
  minimumLength: json['minimum_length'] != null ? (json['minimum_length'] as num).toInt() : null,
); }

/// The value that pre-fills the field on the payment page.
final String? defaultValue;

/// The maximum character length constraint for the customer's input.
final int? maximumLength;

/// The minimum character length requirement for the customer's input.
final int? minimumLength;

Map<String, dynamic> toJson() { return {
  'default_value': ?defaultValue,
  'maximum_length': ?maximumLength,
  'minimum_length': ?minimumLength,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'default_value', 'maximum_length', 'minimum_length'}.contains(key)); } 
PaymentLinksResourceCustomFieldsNumeric copyWith({String? Function()? defaultValue, int? Function()? maximumLength, int? Function()? minimumLength, }) { return PaymentLinksResourceCustomFieldsNumeric(
  defaultValue: defaultValue != null ? defaultValue() : this.defaultValue,
  maximumLength: maximumLength != null ? maximumLength() : this.maximumLength,
  minimumLength: minimumLength != null ? minimumLength() : this.minimumLength,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentLinksResourceCustomFieldsNumeric &&
          defaultValue == other.defaultValue &&
          maximumLength == other.maximumLength &&
          minimumLength == other.minimumLength; } 
@override int get hashCode { return Object.hash(defaultValue, maximumLength, minimumLength); } 
@override String toString() { return 'PaymentLinksResourceCustomFieldsNumeric(defaultValue: $defaultValue, maximumLength: $maximumLength, minimumLength: $minimumLength)'; } 
 }
