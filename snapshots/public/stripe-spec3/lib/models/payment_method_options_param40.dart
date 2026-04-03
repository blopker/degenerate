// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PaymentMethodOptionsParam40SetupFutureUsage {const PaymentMethodOptionsParam40SetupFutureUsage._(this.value);

factory PaymentMethodOptionsParam40SetupFutureUsage.fromJson(String json) { return switch (json) {
  '' => $empty,
  'none' => none,
  'off_session' => offSession,
  _ => PaymentMethodOptionsParam40SetupFutureUsage._(json),
}; }

static const PaymentMethodOptionsParam40SetupFutureUsage $empty = PaymentMethodOptionsParam40SetupFutureUsage._('');

static const PaymentMethodOptionsParam40SetupFutureUsage none = PaymentMethodOptionsParam40SetupFutureUsage._('none');

static const PaymentMethodOptionsParam40SetupFutureUsage offSession = PaymentMethodOptionsParam40SetupFutureUsage._('off_session');

static const List<PaymentMethodOptionsParam40SetupFutureUsage> values = [$empty, none, offSession];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam40SetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam40SetupFutureUsage($value)'; } 
 }
@immutable final class PaymentMethodOptionsParam40 {const PaymentMethodOptionsParam40({this.setupFutureUsage});

factory PaymentMethodOptionsParam40.fromJson(Map<String, dynamic> json) { return PaymentMethodOptionsParam40(
  setupFutureUsage: json['setup_future_usage'] != null ? PaymentMethodOptionsParam40SetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

final PaymentMethodOptionsParam40SetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'setup_future_usage'}.contains(key)); } 
PaymentMethodOptionsParam40 copyWith({PaymentMethodOptionsParam40SetupFutureUsage Function()? setupFutureUsage}) { return PaymentMethodOptionsParam40(
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodOptionsParam40 &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return setupFutureUsage.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam40(setupFutureUsage: $setupFutureUsage)'; } 
 }
