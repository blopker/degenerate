// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PaymentMethodOptionsParam94SetupFutureUsage {const PaymentMethodOptionsParam94SetupFutureUsage._(this.value);

factory PaymentMethodOptionsParam94SetupFutureUsage.fromJson(String json) { return switch (json) {
  'none' => none,
  _ => PaymentMethodOptionsParam94SetupFutureUsage._(json),
}; }

static const PaymentMethodOptionsParam94SetupFutureUsage none = PaymentMethodOptionsParam94SetupFutureUsage._('none');

static const List<PaymentMethodOptionsParam94SetupFutureUsage> values = [none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam94SetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam94SetupFutureUsage($value)'; } 
 }
@immutable final class PaymentMethodOptionsParam94 {const PaymentMethodOptionsParam94({this.setupFutureUsage});

factory PaymentMethodOptionsParam94.fromJson(Map<String, dynamic> json) { return PaymentMethodOptionsParam94(
  setupFutureUsage: json['setup_future_usage'] != null ? PaymentMethodOptionsParam94SetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

final PaymentMethodOptionsParam94SetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'setup_future_usage'}.contains(key)); } 
PaymentMethodOptionsParam94 copyWith({PaymentMethodOptionsParam94SetupFutureUsage Function()? setupFutureUsage}) { return PaymentMethodOptionsParam94(
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodOptionsParam94 &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return setupFutureUsage.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam94(setupFutureUsage: $setupFutureUsage)'; } 
 }
