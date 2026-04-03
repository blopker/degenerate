// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PaymentMethodOptionsParam49SetupFutureUsage {const PaymentMethodOptionsParam49SetupFutureUsage._(this.value);

factory PaymentMethodOptionsParam49SetupFutureUsage.fromJson(String json) { return switch (json) {
  'none' => none,
  _ => PaymentMethodOptionsParam49SetupFutureUsage._(json),
}; }

static const PaymentMethodOptionsParam49SetupFutureUsage none = PaymentMethodOptionsParam49SetupFutureUsage._('none');

static const List<PaymentMethodOptionsParam49SetupFutureUsage> values = [none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam49SetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam49SetupFutureUsage($value)'; } 
 }
@immutable final class PaymentMethodOptionsParam49 {const PaymentMethodOptionsParam49({this.setupFutureUsage});

factory PaymentMethodOptionsParam49.fromJson(Map<String, dynamic> json) { return PaymentMethodOptionsParam49(
  setupFutureUsage: json['setup_future_usage'] != null ? PaymentMethodOptionsParam49SetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

final PaymentMethodOptionsParam49SetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'setup_future_usage'}.contains(key)); } 
PaymentMethodOptionsParam49 copyWith({PaymentMethodOptionsParam49SetupFutureUsage Function()? setupFutureUsage}) { return PaymentMethodOptionsParam49(
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodOptionsParam49 &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return setupFutureUsage.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam49(setupFutureUsage: $setupFutureUsage)'; } 
 }
