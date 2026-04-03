// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PaymentMethodOptionsParam77SetupFutureUsage {const PaymentMethodOptionsParam77SetupFutureUsage._(this.value);

factory PaymentMethodOptionsParam77SetupFutureUsage.fromJson(String json) { return switch (json) {
  '' => $empty,
  'none' => none,
  'off_session' => offSession,
  _ => PaymentMethodOptionsParam77SetupFutureUsage._(json),
}; }

static const PaymentMethodOptionsParam77SetupFutureUsage $empty = PaymentMethodOptionsParam77SetupFutureUsage._('');

static const PaymentMethodOptionsParam77SetupFutureUsage none = PaymentMethodOptionsParam77SetupFutureUsage._('none');

static const PaymentMethodOptionsParam77SetupFutureUsage offSession = PaymentMethodOptionsParam77SetupFutureUsage._('off_session');

static const List<PaymentMethodOptionsParam77SetupFutureUsage> values = [$empty, none, offSession];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam77SetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam77SetupFutureUsage($value)'; } 
 }
@immutable final class PaymentMethodOptionsParam77 {const PaymentMethodOptionsParam77({this.setupFutureUsage});

factory PaymentMethodOptionsParam77.fromJson(Map<String, dynamic> json) { return PaymentMethodOptionsParam77(
  setupFutureUsage: json['setup_future_usage'] != null ? PaymentMethodOptionsParam77SetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

final PaymentMethodOptionsParam77SetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'setup_future_usage'}.contains(key)); } 
PaymentMethodOptionsParam77 copyWith({PaymentMethodOptionsParam77SetupFutureUsage Function()? setupFutureUsage}) { return PaymentMethodOptionsParam77(
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodOptionsParam77 &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return setupFutureUsage.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam77(setupFutureUsage: $setupFutureUsage)'; } 
 }
