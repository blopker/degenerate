// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_links_resource_custom_fields_dropdown_option.dart';/// 
final class PaymentLinksResourceCustomFieldsDropdown {const PaymentLinksResourceCustomFieldsDropdown({this.defaultValue, required this.options, });

factory PaymentLinksResourceCustomFieldsDropdown.fromJson(Map<String, dynamic> json) { return PaymentLinksResourceCustomFieldsDropdown(
  defaultValue: json['default_value'] as String?,
  options: (json['options'] as List<dynamic>).map((e) => PaymentLinksResourceCustomFieldsDropdownOption.fromJson(e as Map<String, dynamic>)).toList(),
); }

/// The value that pre-fills on the payment page.
final String? defaultValue;

/// The options available for the customer to select. Up to 200 options allowed.
final List<PaymentLinksResourceCustomFieldsDropdownOption> options;

Map<String, dynamic> toJson() { return {
  'default_value': ?defaultValue,
  'options': options.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('options'); } 
PaymentLinksResourceCustomFieldsDropdown copyWith({String? Function()? defaultValue, List<PaymentLinksResourceCustomFieldsDropdownOption>? options, }) { return PaymentLinksResourceCustomFieldsDropdown(
  defaultValue: defaultValue != null ? defaultValue() : this.defaultValue,
  options: options ?? this.options,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentLinksResourceCustomFieldsDropdown &&
          defaultValue == other.defaultValue &&
          listEquals(options, other.options); } 
@override int get hashCode { return Object.hash(defaultValue, Object.hashAll(options)); } 
@override String toString() { return 'PaymentLinksResourceCustomFieldsDropdown(defaultValue: $defaultValue, options: $options)'; } 
 }
