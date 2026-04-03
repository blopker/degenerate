// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PaymentIntentPaymentMethodOptionsParam32SetupFutureUsage {const PaymentIntentPaymentMethodOptionsParam32SetupFutureUsage._(this.value);

factory PaymentIntentPaymentMethodOptionsParam32SetupFutureUsage.fromJson(String json) { return switch (json) {
  '' => $empty,
  'none' => none,
  _ => PaymentIntentPaymentMethodOptionsParam32SetupFutureUsage._(json),
}; }

static const PaymentIntentPaymentMethodOptionsParam32SetupFutureUsage $empty = PaymentIntentPaymentMethodOptionsParam32SetupFutureUsage._('');

static const PaymentIntentPaymentMethodOptionsParam32SetupFutureUsage none = PaymentIntentPaymentMethodOptionsParam32SetupFutureUsage._('none');

static const List<PaymentIntentPaymentMethodOptionsParam32SetupFutureUsage> values = [$empty, none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentPaymentMethodOptionsParam32SetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParam32SetupFutureUsage($value)'; } 
 }
@immutable final class PaymentIntentPaymentMethodOptionsParam32 {const PaymentIntentPaymentMethodOptionsParam32({this.code, this.setupFutureUsage, });

factory PaymentIntentPaymentMethodOptionsParam32.fromJson(Map<String, dynamic> json) { return PaymentIntentPaymentMethodOptionsParam32(
  code: json['code'] as String?,
  setupFutureUsage: json['setup_future_usage'] != null ? PaymentIntentPaymentMethodOptionsParam32SetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

final String? code;

final PaymentIntentPaymentMethodOptionsParam32SetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  'code': ?code,
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'code', 'setup_future_usage'}.contains(key)); } 
PaymentIntentPaymentMethodOptionsParam32 copyWith({String Function()? code, PaymentIntentPaymentMethodOptionsParam32SetupFutureUsage Function()? setupFutureUsage, }) { return PaymentIntentPaymentMethodOptionsParam32(
  code: code != null ? code() : this.code,
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentIntentPaymentMethodOptionsParam32 &&
          code == other.code &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return Object.hash(code, setupFutureUsage); } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParam32(code: $code, setupFutureUsage: $setupFutureUsage)'; } 
 }
