// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_payment_links_request_custom_fields_dropdown.dart';import 'post_payment_links_request_custom_fields_label.dart';import 'post_payment_links_request_custom_fields_numeric.dart';import 'post_payment_links_request_custom_fields_text.dart';@immutable final class PostPaymentLinksRequestCustomFieldsType {const PostPaymentLinksRequestCustomFieldsType._(this.value);

factory PostPaymentLinksRequestCustomFieldsType.fromJson(String json) { return switch (json) {
  'dropdown' => dropdown,
  'numeric' => numeric,
  'text' => text,
  _ => PostPaymentLinksRequestCustomFieldsType._(json),
}; }

static const PostPaymentLinksRequestCustomFieldsType dropdown = PostPaymentLinksRequestCustomFieldsType._('dropdown');

static const PostPaymentLinksRequestCustomFieldsType numeric = PostPaymentLinksRequestCustomFieldsType._('numeric');

static const PostPaymentLinksRequestCustomFieldsType text = PostPaymentLinksRequestCustomFieldsType._('text');

static const List<PostPaymentLinksRequestCustomFieldsType> values = [dropdown, numeric, text];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostPaymentLinksRequestCustomFieldsType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostPaymentLinksRequestCustomFieldsType($value)'; } 
 }
@immutable final class PostPaymentLinksRequestCustomFields {const PostPaymentLinksRequestCustomFields({required this.key, required this.label, required this.type, this.dropdown, this.numeric, this.optional, this.text, });

factory PostPaymentLinksRequestCustomFields.fromJson(Map<String, dynamic> json) { return PostPaymentLinksRequestCustomFields(
  dropdown: json['dropdown'] != null ? PostPaymentLinksRequestCustomFieldsDropdown.fromJson(json['dropdown'] as Map<String, dynamic>) : null,
  key: json['key'] as String,
  label: PostPaymentLinksRequestCustomFieldsLabel.fromJson(json['label'] as Map<String, dynamic>),
  numeric: json['numeric'] != null ? PostPaymentLinksRequestCustomFieldsNumeric.fromJson(json['numeric'] as Map<String, dynamic>) : null,
  optional: json['optional'] as bool?,
  text: json['text'] != null ? PostPaymentLinksRequestCustomFieldsText.fromJson(json['text'] as Map<String, dynamic>) : null,
  type: PostPaymentLinksRequestCustomFieldsType.fromJson(json['type'] as String),
); }

final PostPaymentLinksRequestCustomFieldsDropdown? dropdown;

final String key;

final PostPaymentLinksRequestCustomFieldsLabel label;

final PostPaymentLinksRequestCustomFieldsNumeric? numeric;

final bool? optional;

final PostPaymentLinksRequestCustomFieldsText? text;

final PostPaymentLinksRequestCustomFieldsType type;

Map<String, dynamic> toJson() { return {
  if (dropdown != null) 'dropdown': dropdown?.toJson(),
  'key': key,
  'label': label.toJson(),
  if (numeric != null) 'numeric': numeric?.toJson(),
  'optional': ?optional,
  if (text != null) 'text': text?.toJson(),
  'type': type.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('key') && json['key'] is String &&
      json.containsKey('label') &&
      json.containsKey('type'); } 
PostPaymentLinksRequestCustomFields copyWith({PostPaymentLinksRequestCustomFieldsDropdown Function()? dropdown, String? key, PostPaymentLinksRequestCustomFieldsLabel? label, PostPaymentLinksRequestCustomFieldsNumeric Function()? numeric, bool Function()? optional, PostPaymentLinksRequestCustomFieldsText Function()? text, PostPaymentLinksRequestCustomFieldsType? type, }) { return PostPaymentLinksRequestCustomFields(
  dropdown: dropdown != null ? dropdown() : this.dropdown,
  key: key ?? this.key,
  label: label ?? this.label,
  numeric: numeric != null ? numeric() : this.numeric,
  optional: optional != null ? optional() : this.optional,
  text: text != null ? text() : this.text,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentLinksRequestCustomFields &&
          dropdown == other.dropdown &&
          key == other.key &&
          label == other.label &&
          numeric == other.numeric &&
          optional == other.optional &&
          text == other.text &&
          type == other.type; } 
@override int get hashCode { return Object.hash(dropdown, key, label, numeric, optional, text, type); } 
@override String toString() { return 'PostPaymentLinksRequestCustomFields(dropdown: $dropdown, key: $key, label: $label, numeric: $numeric, optional: $optional, text: $text, type: $type)'; } 
 }
