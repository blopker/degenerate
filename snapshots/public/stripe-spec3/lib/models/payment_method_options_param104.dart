// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PaymentMethodOptionsParam104SetupFutureUsage {const PaymentMethodOptionsParam104SetupFutureUsage._(this.value);

factory PaymentMethodOptionsParam104SetupFutureUsage.fromJson(String json) { return switch (json) {
  'none' => none,
  _ => PaymentMethodOptionsParam104SetupFutureUsage._(json),
}; }

static const PaymentMethodOptionsParam104SetupFutureUsage none = PaymentMethodOptionsParam104SetupFutureUsage._('none');

static const List<PaymentMethodOptionsParam104SetupFutureUsage> values = [none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam104SetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam104SetupFutureUsage($value)'; } 
 }
@immutable final class PaymentMethodOptionsParam104 {const PaymentMethodOptionsParam104({this.setupFutureUsage});

factory PaymentMethodOptionsParam104.fromJson(Map<String, dynamic> json) { return PaymentMethodOptionsParam104(
  setupFutureUsage: json['setup_future_usage'] != null ? PaymentMethodOptionsParam104SetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

final PaymentMethodOptionsParam104SetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'setup_future_usage'}.contains(key)); } 
PaymentMethodOptionsParam104 copyWith({PaymentMethodOptionsParam104SetupFutureUsage Function()? setupFutureUsage}) { return PaymentMethodOptionsParam104(
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodOptionsParam104 &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return setupFutureUsage.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam104(setupFutureUsage: $setupFutureUsage)'; } 
 }
