// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The account's display preference.
@immutable final class PaymentMethodConfigResourceDisplayPreferencePreference {const PaymentMethodConfigResourceDisplayPreferencePreference._(this.value);

factory PaymentMethodConfigResourceDisplayPreferencePreference.fromJson(String json) { return switch (json) {
  'none' => none,
  'off' => off,
  'on' => $on,
  _ => PaymentMethodConfigResourceDisplayPreferencePreference._(json),
}; }

static const PaymentMethodConfigResourceDisplayPreferencePreference none = PaymentMethodConfigResourceDisplayPreferencePreference._('none');

static const PaymentMethodConfigResourceDisplayPreferencePreference off = PaymentMethodConfigResourceDisplayPreferencePreference._('off');

static const PaymentMethodConfigResourceDisplayPreferencePreference $on = PaymentMethodConfigResourceDisplayPreferencePreference._('on');

static const List<PaymentMethodConfigResourceDisplayPreferencePreference> values = [none, off, $on];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodConfigResourceDisplayPreferencePreference && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodConfigResourceDisplayPreferencePreference($value)'; } 
 }
/// The effective display preference value.
@immutable final class PaymentMethodConfigResourceDisplayPreferenceValue {const PaymentMethodConfigResourceDisplayPreferenceValue._(this.value);

factory PaymentMethodConfigResourceDisplayPreferenceValue.fromJson(String json) { return switch (json) {
  'off' => off,
  'on' => $on,
  _ => PaymentMethodConfigResourceDisplayPreferenceValue._(json),
}; }

static const PaymentMethodConfigResourceDisplayPreferenceValue off = PaymentMethodConfigResourceDisplayPreferenceValue._('off');

static const PaymentMethodConfigResourceDisplayPreferenceValue $on = PaymentMethodConfigResourceDisplayPreferenceValue._('on');

static const List<PaymentMethodConfigResourceDisplayPreferenceValue> values = [off, $on];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodConfigResourceDisplayPreferenceValue && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodConfigResourceDisplayPreferenceValue($value)'; } 
 }
/// 
@immutable final class PaymentMethodConfigResourceDisplayPreference {const PaymentMethodConfigResourceDisplayPreference({required this.preference, required this.value, this.overridable, });

factory PaymentMethodConfigResourceDisplayPreference.fromJson(Map<String, dynamic> json) { return PaymentMethodConfigResourceDisplayPreference(
  overridable: json['overridable'] as bool?,
  preference: PaymentMethodConfigResourceDisplayPreferencePreference.fromJson(json['preference'] as String),
  value: PaymentMethodConfigResourceDisplayPreferenceValue.fromJson(json['value'] as String),
); }

/// For child configs, whether or not the account's preference will be observed. If `false`, the parent configuration's default is used.
final bool? overridable;

/// The account's display preference.
final PaymentMethodConfigResourceDisplayPreferencePreference preference;

/// The effective display preference value.
final PaymentMethodConfigResourceDisplayPreferenceValue value;

Map<String, dynamic> toJson() { return {
  'overridable': ?overridable,
  'preference': preference.toJson(),
  'value': value.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('preference') &&
      json.containsKey('value'); } 
PaymentMethodConfigResourceDisplayPreference copyWith({bool? Function()? overridable, PaymentMethodConfigResourceDisplayPreferencePreference? preference, PaymentMethodConfigResourceDisplayPreferenceValue? value, }) { return PaymentMethodConfigResourceDisplayPreference(
  overridable: overridable != null ? overridable() : this.overridable,
  preference: preference ?? this.preference,
  value: value ?? this.value,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodConfigResourceDisplayPreference &&
          overridable == other.overridable &&
          preference == other.preference &&
          value == other.value; } 
@override int get hashCode { return Object.hash(overridable, preference, value); } 
@override String toString() { return 'PaymentMethodConfigResourceDisplayPreference(overridable: $overridable, preference: $preference, value: $value)'; } 
 }
