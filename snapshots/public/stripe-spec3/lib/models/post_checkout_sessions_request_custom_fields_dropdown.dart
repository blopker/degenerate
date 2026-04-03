// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_checkout_sessions_request_custom_fields_dropdown_options.dart';@immutable final class PostCheckoutSessionsRequestCustomFieldsDropdown {const PostCheckoutSessionsRequestCustomFieldsDropdown({required this.options, this.defaultValue, });

factory PostCheckoutSessionsRequestCustomFieldsDropdown.fromJson(Map<String, dynamic> json) { return PostCheckoutSessionsRequestCustomFieldsDropdown(
  defaultValue: json['default_value'] as String?,
  options: (json['options'] as List<dynamic>).map((e) => PostCheckoutSessionsRequestCustomFieldsDropdownOptions.fromJson(e as Map<String, dynamic>)).toList(),
); }

final String? defaultValue;

final List<PostCheckoutSessionsRequestCustomFieldsDropdownOptions> options;

Map<String, dynamic> toJson() { return {
  'default_value': ?defaultValue,
  'options': options.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('options'); } 
PostCheckoutSessionsRequestCustomFieldsDropdown copyWith({String Function()? defaultValue, List<PostCheckoutSessionsRequestCustomFieldsDropdownOptions>? options, }) { return PostCheckoutSessionsRequestCustomFieldsDropdown(
  defaultValue: defaultValue != null ? defaultValue() : this.defaultValue,
  options: options ?? this.options,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostCheckoutSessionsRequestCustomFieldsDropdown &&
          defaultValue == other.defaultValue &&
          listEquals(options, other.options); } 
@override int get hashCode { return Object.hash(defaultValue, Object.hashAll(options)); } 
@override String toString() { return 'PostCheckoutSessionsRequestCustomFieldsDropdown(defaultValue: $defaultValue, options: $options)'; } 
 }
