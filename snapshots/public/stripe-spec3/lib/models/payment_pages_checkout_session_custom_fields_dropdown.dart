// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_pages_checkout_session_custom_fields_option.dart';/// 
@immutable final class PaymentPagesCheckoutSessionCustomFieldsDropdown {const PaymentPagesCheckoutSessionCustomFieldsDropdown({required this.options, this.defaultValue = const Omittable.absent(), this.value = const Omittable.absent(), });

factory PaymentPagesCheckoutSessionCustomFieldsDropdown.fromJson(Map<String, dynamic> json) { return PaymentPagesCheckoutSessionCustomFieldsDropdown(
  defaultValue: json.containsKey('default_value') ? Omittable(json['default_value'] as String?) : const Omittable.absent(),
  options: (json['options'] as List<dynamic>).map((e) => PaymentPagesCheckoutSessionCustomFieldsOption.fromJson(e as Map<String, dynamic>)).toList(),
  value: json.containsKey('value') ? Omittable(json['value'] as String?) : const Omittable.absent(),
); }

/// The value that pre-fills on the payment page.
final Omittable<String?> defaultValue;

/// The options available for the customer to select. Up to 200 options allowed.
final List<PaymentPagesCheckoutSessionCustomFieldsOption> options;

/// The option selected by the customer. This will be the `value` for the option.
final Omittable<String?> value;

Map<String, dynamic> toJson() { return {
  if (defaultValue.isPresent) 'default_value': defaultValue.value,
  'options': options.map((e) => e.toJson()).toList(),
  if (value.isPresent) 'value': value.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('options'); } 
PaymentPagesCheckoutSessionCustomFieldsDropdown copyWith({Omittable<String?>? defaultValue, List<PaymentPagesCheckoutSessionCustomFieldsOption>? options, Omittable<String?>? value, }) { return PaymentPagesCheckoutSessionCustomFieldsDropdown(
  defaultValue: defaultValue ?? this.defaultValue,
  options: options ?? this.options,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentPagesCheckoutSessionCustomFieldsDropdown &&
          defaultValue == other.defaultValue &&
          listEquals(options, other.options) &&
          value == other.value; } 
@override int get hashCode { return Object.hash(defaultValue, Object.hashAll(options), value); } 
@override String toString() { return 'PaymentPagesCheckoutSessionCustomFieldsDropdown(defaultValue: $defaultValue, options: $options, value: $value)'; } 
 }
