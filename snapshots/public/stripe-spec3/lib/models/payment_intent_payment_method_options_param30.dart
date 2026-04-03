// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PaymentIntentPaymentMethodOptionsParam30SetupFutureUsage {const PaymentIntentPaymentMethodOptionsParam30SetupFutureUsage._(this.value);

factory PaymentIntentPaymentMethodOptionsParam30SetupFutureUsage.fromJson(String json) { return switch (json) {
  '' => $empty,
  'none' => none,
  'off_session' => offSession,
  'on_session' => onSession,
  _ => PaymentIntentPaymentMethodOptionsParam30SetupFutureUsage._(json),
}; }

static const PaymentIntentPaymentMethodOptionsParam30SetupFutureUsage $empty = PaymentIntentPaymentMethodOptionsParam30SetupFutureUsage._('');

static const PaymentIntentPaymentMethodOptionsParam30SetupFutureUsage none = PaymentIntentPaymentMethodOptionsParam30SetupFutureUsage._('none');

static const PaymentIntentPaymentMethodOptionsParam30SetupFutureUsage offSession = PaymentIntentPaymentMethodOptionsParam30SetupFutureUsage._('off_session');

static const PaymentIntentPaymentMethodOptionsParam30SetupFutureUsage onSession = PaymentIntentPaymentMethodOptionsParam30SetupFutureUsage._('on_session');

static const List<PaymentIntentPaymentMethodOptionsParam30SetupFutureUsage> values = [$empty, none, offSession, onSession];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentPaymentMethodOptionsParam30SetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParam30SetupFutureUsage($value)'; } 
 }
@immutable final class PaymentIntentPaymentMethodOptionsParam30 {const PaymentIntentPaymentMethodOptionsParam30({this.setupFutureUsage, this.targetDate, });

factory PaymentIntentPaymentMethodOptionsParam30.fromJson(Map<String, dynamic> json) { return PaymentIntentPaymentMethodOptionsParam30(
  setupFutureUsage: json['setup_future_usage'] != null ? PaymentIntentPaymentMethodOptionsParam30SetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
  targetDate: json['target_date'] as String?,
); }

final PaymentIntentPaymentMethodOptionsParam30SetupFutureUsage? setupFutureUsage;

final String? targetDate;

Map<String, dynamic> toJson() { return {
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
  'target_date': ?targetDate,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'setup_future_usage', 'target_date'}.contains(key)); } 
PaymentIntentPaymentMethodOptionsParam30 copyWith({PaymentIntentPaymentMethodOptionsParam30SetupFutureUsage Function()? setupFutureUsage, String Function()? targetDate, }) { return PaymentIntentPaymentMethodOptionsParam30(
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
  targetDate: targetDate != null ? targetDate() : this.targetDate,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentIntentPaymentMethodOptionsParam30 &&
          setupFutureUsage == other.setupFutureUsage &&
          targetDate == other.targetDate; } 
@override int get hashCode { return Object.hash(setupFutureUsage, targetDate); } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParam30(setupFutureUsage: $setupFutureUsage, targetDate: $targetDate)'; } 
 }
