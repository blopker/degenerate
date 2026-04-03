// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PaymentMethodOptionsParam20SetupFutureUsage {const PaymentMethodOptionsParam20SetupFutureUsage._(this.value);

factory PaymentMethodOptionsParam20SetupFutureUsage.fromJson(String json) { return switch (json) {
  'none' => none,
  _ => PaymentMethodOptionsParam20SetupFutureUsage._(json),
}; }

static const PaymentMethodOptionsParam20SetupFutureUsage none = PaymentMethodOptionsParam20SetupFutureUsage._('none');

static const List<PaymentMethodOptionsParam20SetupFutureUsage> values = [none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam20SetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam20SetupFutureUsage($value)'; } 
 }
@immutable final class PaymentMethodOptionsParam20 {const PaymentMethodOptionsParam20({this.setupFutureUsage});

factory PaymentMethodOptionsParam20.fromJson(Map<String, dynamic> json) { return PaymentMethodOptionsParam20(
  setupFutureUsage: json['setup_future_usage'] != null ? PaymentMethodOptionsParam20SetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

final PaymentMethodOptionsParam20SetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'setup_future_usage'}.contains(key)); } 
PaymentMethodOptionsParam20 copyWith({PaymentMethodOptionsParam20SetupFutureUsage Function()? setupFutureUsage}) { return PaymentMethodOptionsParam20(
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodOptionsParam20 &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return setupFutureUsage.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam20(setupFutureUsage: $setupFutureUsage)'; } 
 }
