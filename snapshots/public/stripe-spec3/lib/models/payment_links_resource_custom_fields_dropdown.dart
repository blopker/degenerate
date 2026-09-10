// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_links_resource_custom_fields_dropdown_option.dart';/// 
@immutable final class PaymentLinksResourceCustomFieldsDropdown {const PaymentLinksResourceCustomFieldsDropdown({required this.options, this.defaultValue = const Omittable.absent(), });

factory PaymentLinksResourceCustomFieldsDropdown.fromJson(Map<String, dynamic> json) { return PaymentLinksResourceCustomFieldsDropdown(
  defaultValue: json.containsKey('default_value') ? Omittable(json['default_value'] as String?) : const Omittable.absent(),
  options: (json['options'] as List<dynamic>).map((e) => PaymentLinksResourceCustomFieldsDropdownOption.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// The value that pre-fills on the payment page.
final Omittable<String?> defaultValue;

/// The options available for the customer to select. Up to 200 options allowed.
final List<PaymentLinksResourceCustomFieldsDropdownOption> options;

Map<String, dynamic> toJson() { return {
  if (defaultValue.isPresent) 'default_value': defaultValue.value,
  'options': options.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('options'); } 
PaymentLinksResourceCustomFieldsDropdown copyWith({Omittable<String?>? defaultValue, List<PaymentLinksResourceCustomFieldsDropdownOption>? options, }) { return PaymentLinksResourceCustomFieldsDropdown(
  defaultValue: defaultValue ?? this.defaultValue,
  options: options ?? this.options,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentLinksResourceCustomFieldsDropdown &&
          defaultValue == other.defaultValue &&
          listEquals(options, other.options); } 
@override int get hashCode { return Object.hash(defaultValue, Object.hashAll(options)); } 
@override String toString() { return 'PaymentLinksResourceCustomFieldsDropdown(defaultValue: $defaultValue, options: $options)'; } 
 }
