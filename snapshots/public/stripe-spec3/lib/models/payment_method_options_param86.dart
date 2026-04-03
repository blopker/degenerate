// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PaymentMethodOptionsParam86SetupFutureUsage {const PaymentMethodOptionsParam86SetupFutureUsage._(this.value);

factory PaymentMethodOptionsParam86SetupFutureUsage.fromJson(String json) { return switch (json) {
  'none' => none,
  _ => PaymentMethodOptionsParam86SetupFutureUsage._(json),
}; }

static const PaymentMethodOptionsParam86SetupFutureUsage none = PaymentMethodOptionsParam86SetupFutureUsage._('none');

static const List<PaymentMethodOptionsParam86SetupFutureUsage> values = [none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam86SetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam86SetupFutureUsage($value)'; } 
 }
@immutable final class PaymentMethodOptionsParam86 {const PaymentMethodOptionsParam86({this.setupFutureUsage});

factory PaymentMethodOptionsParam86.fromJson(Map<String, dynamic> json) { return PaymentMethodOptionsParam86(
  setupFutureUsage: json['setup_future_usage'] != null ? PaymentMethodOptionsParam86SetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

final PaymentMethodOptionsParam86SetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'setup_future_usage'}.contains(key)); } 
PaymentMethodOptionsParam86 copyWith({PaymentMethodOptionsParam86SetupFutureUsage Function()? setupFutureUsage}) { return PaymentMethodOptionsParam86(
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodOptionsParam86 &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return setupFutureUsage.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam86(setupFutureUsage: $setupFutureUsage)'; } 
 }
