// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_payment_links_payment_link_request_custom_fields_variant1_dropdown_options.dart';final class PostPaymentLinksPaymentLinkRequestCustomFieldsVariant1Dropdown {const PostPaymentLinksPaymentLinkRequestCustomFieldsVariant1Dropdown({this.defaultValue, required this.options, });

factory PostPaymentLinksPaymentLinkRequestCustomFieldsVariant1Dropdown.fromJson(Map<String, dynamic> json) { return PostPaymentLinksPaymentLinkRequestCustomFieldsVariant1Dropdown(
  defaultValue: json['default_value'] as String?,
  options: (json['options'] as List<dynamic>).map((e) => PostPaymentLinksPaymentLinkRequestCustomFieldsVariant1DropdownOptions.fromJson(e as Map<String, dynamic>)).toList(),
); }

final String? defaultValue;

final List<PostPaymentLinksPaymentLinkRequestCustomFieldsVariant1DropdownOptions> options;

Map<String, dynamic> toJson() { return {
  'default_value': ?defaultValue,
  'options': options.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('options'); } 
PostPaymentLinksPaymentLinkRequestCustomFieldsVariant1Dropdown copyWith({String Function()? defaultValue, List<PostPaymentLinksPaymentLinkRequestCustomFieldsVariant1DropdownOptions>? options, }) { return PostPaymentLinksPaymentLinkRequestCustomFieldsVariant1Dropdown(
  defaultValue: defaultValue != null ? defaultValue() : this.defaultValue,
  options: options ?? this.options,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentLinksPaymentLinkRequestCustomFieldsVariant1Dropdown &&
          defaultValue == other.defaultValue &&
          listEquals(options, other.options); } 
@override int get hashCode { return Object.hash(defaultValue, Object.hashAll(options)); } 
@override String toString() { return 'PostPaymentLinksPaymentLinkRequestCustomFieldsVariant1Dropdown(defaultValue: $defaultValue, options: $options)'; } 
 }
