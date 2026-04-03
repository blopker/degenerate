// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PaymentMethodOptionsParam13SetupFutureUsage {const PaymentMethodOptionsParam13SetupFutureUsage._(this.value);

factory PaymentMethodOptionsParam13SetupFutureUsage.fromJson(String json) { return switch (json) {
  'none' => none,
  _ => PaymentMethodOptionsParam13SetupFutureUsage._(json),
}; }

static const PaymentMethodOptionsParam13SetupFutureUsage none = PaymentMethodOptionsParam13SetupFutureUsage._('none');

static const List<PaymentMethodOptionsParam13SetupFutureUsage> values = [none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam13SetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam13SetupFutureUsage($value)'; } 
 }
@immutable final class PaymentMethodOptionsParam13 {const PaymentMethodOptionsParam13({this.setupFutureUsage});

factory PaymentMethodOptionsParam13.fromJson(Map<String, dynamic> json) { return PaymentMethodOptionsParam13(
  setupFutureUsage: json['setup_future_usage'] != null ? PaymentMethodOptionsParam13SetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

final PaymentMethodOptionsParam13SetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'setup_future_usage'}.contains(key)); } 
PaymentMethodOptionsParam13 copyWith({PaymentMethodOptionsParam13SetupFutureUsage Function()? setupFutureUsage}) { return PaymentMethodOptionsParam13(
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodOptionsParam13 &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return setupFutureUsage.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam13(setupFutureUsage: $setupFutureUsage)'; } 
 }
