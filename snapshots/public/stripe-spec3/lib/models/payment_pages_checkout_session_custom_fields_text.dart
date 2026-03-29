// GENERATED CODE - DO NOT MODIFY BY HAND

/// 
final class PaymentPagesCheckoutSessionCustomFieldsText {const PaymentPagesCheckoutSessionCustomFieldsText({this.defaultValue, this.maximumLength, this.minimumLength, this.value, });

factory PaymentPagesCheckoutSessionCustomFieldsText.fromJson(Map<String, dynamic> json) { return PaymentPagesCheckoutSessionCustomFieldsText(
  defaultValue: json['default_value'] as String?,
  maximumLength: json['maximum_length'] != null ? (json['maximum_length'] as num).toInt() : null,
  minimumLength: json['minimum_length'] != null ? (json['minimum_length'] as num).toInt() : null,
  value: json['value'] as String?,
); }

/// The value that pre-fills the field on the payment page.
final String? defaultValue;

/// The maximum character length constraint for the customer's input.
final int? maximumLength;

/// The minimum character length requirement for the customer's input.
final int? minimumLength;

/// The value entered by the customer.
final String? value;

Map<String, dynamic> toJson() { return {
  'default_value': ?defaultValue,
  'maximum_length': ?maximumLength,
  'minimum_length': ?minimumLength,
  'value': ?value,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PaymentPagesCheckoutSessionCustomFieldsText copyWith({String? Function()? defaultValue, int? Function()? maximumLength, int? Function()? minimumLength, String? Function()? value, }) { return PaymentPagesCheckoutSessionCustomFieldsText(
  defaultValue: defaultValue != null ? defaultValue() : this.defaultValue,
  maximumLength: maximumLength != null ? maximumLength() : this.maximumLength,
  minimumLength: minimumLength != null ? minimumLength() : this.minimumLength,
  value: value != null ? value() : this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentPagesCheckoutSessionCustomFieldsText &&
          defaultValue == other.defaultValue &&
          maximumLength == other.maximumLength &&
          minimumLength == other.minimumLength &&
          value == other.value; } 
@override int get hashCode { return Object.hash(defaultValue, maximumLength, minimumLength, value); } 
@override String toString() { return 'PaymentPagesCheckoutSessionCustomFieldsText(defaultValue: $defaultValue, maximumLength: $maximumLength, minimumLength: $minimumLength, value: $value)'; } 
 }
