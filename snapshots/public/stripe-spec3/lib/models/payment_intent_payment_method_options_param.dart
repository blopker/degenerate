// GENERATED CODE - DO NOT MODIFY BY HAND

import 'payment_intent_payment_method_options_param_mandate_options.dart';final class PaymentIntentPaymentMethodOptionsParamSetupFutureUsage {const PaymentIntentPaymentMethodOptionsParamSetupFutureUsage._(this.value);

factory PaymentIntentPaymentMethodOptionsParamSetupFutureUsage.fromJson(String json) { return switch (json) {
  '' => $empty,
  'none' => none,
  'off_session' => offSession,
  'on_session' => onSession,
  _ => PaymentIntentPaymentMethodOptionsParamSetupFutureUsage._(json),
}; }

static const PaymentIntentPaymentMethodOptionsParamSetupFutureUsage $empty = PaymentIntentPaymentMethodOptionsParamSetupFutureUsage._('');

static const PaymentIntentPaymentMethodOptionsParamSetupFutureUsage none = PaymentIntentPaymentMethodOptionsParamSetupFutureUsage._('none');

static const PaymentIntentPaymentMethodOptionsParamSetupFutureUsage offSession = PaymentIntentPaymentMethodOptionsParamSetupFutureUsage._('off_session');

static const PaymentIntentPaymentMethodOptionsParamSetupFutureUsage onSession = PaymentIntentPaymentMethodOptionsParamSetupFutureUsage._('on_session');

static const List<PaymentIntentPaymentMethodOptionsParamSetupFutureUsage> values = [$empty, none, offSession, onSession];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentPaymentMethodOptionsParamSetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParamSetupFutureUsage($value)'; } 
 }
final class PaymentIntentPaymentMethodOptionsParamVerificationMethod {const PaymentIntentPaymentMethodOptionsParamVerificationMethod._(this.value);

factory PaymentIntentPaymentMethodOptionsParamVerificationMethod.fromJson(String json) { return switch (json) {
  'automatic' => automatic,
  'instant' => instant,
  'microdeposits' => microdeposits,
  _ => PaymentIntentPaymentMethodOptionsParamVerificationMethod._(json),
}; }

static const PaymentIntentPaymentMethodOptionsParamVerificationMethod automatic = PaymentIntentPaymentMethodOptionsParamVerificationMethod._('automatic');

static const PaymentIntentPaymentMethodOptionsParamVerificationMethod instant = PaymentIntentPaymentMethodOptionsParamVerificationMethod._('instant');

static const PaymentIntentPaymentMethodOptionsParamVerificationMethod microdeposits = PaymentIntentPaymentMethodOptionsParamVerificationMethod._('microdeposits');

static const List<PaymentIntentPaymentMethodOptionsParamVerificationMethod> values = [automatic, instant, microdeposits];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentPaymentMethodOptionsParamVerificationMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParamVerificationMethod($value)'; } 
 }
final class PaymentIntentPaymentMethodOptionsParam {const PaymentIntentPaymentMethodOptionsParam({this.mandateOptions, this.setupFutureUsage, this.targetDate, this.verificationMethod, });

factory PaymentIntentPaymentMethodOptionsParam.fromJson(Map<String, dynamic> json) { return PaymentIntentPaymentMethodOptionsParam(
  mandateOptions: json['mandate_options'] != null ? PaymentIntentPaymentMethodOptionsParamMandateOptions.fromJson(json['mandate_options'] as Map<String, dynamic>) : null,
  setupFutureUsage: json['setup_future_usage'] != null ? PaymentIntentPaymentMethodOptionsParamSetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
  targetDate: json['target_date'] as String?,
  verificationMethod: json['verification_method'] != null ? PaymentIntentPaymentMethodOptionsParamVerificationMethod.fromJson(json['verification_method'] as String) : null,
); }

final PaymentIntentPaymentMethodOptionsParamMandateOptions? mandateOptions;

final PaymentIntentPaymentMethodOptionsParamSetupFutureUsage? setupFutureUsage;

final String? targetDate;

final PaymentIntentPaymentMethodOptionsParamVerificationMethod? verificationMethod;

Map<String, dynamic> toJson() { return {
  if (mandateOptions != null) 'mandate_options': mandateOptions?.toJson(),
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
  'target_date': ?targetDate,
  if (verificationMethod != null) 'verification_method': verificationMethod?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PaymentIntentPaymentMethodOptionsParam copyWith({PaymentIntentPaymentMethodOptionsParamMandateOptions Function()? mandateOptions, PaymentIntentPaymentMethodOptionsParamSetupFutureUsage Function()? setupFutureUsage, String Function()? targetDate, PaymentIntentPaymentMethodOptionsParamVerificationMethod Function()? verificationMethod, }) { return PaymentIntentPaymentMethodOptionsParam(
  mandateOptions: mandateOptions != null ? mandateOptions() : this.mandateOptions,
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
  targetDate: targetDate != null ? targetDate() : this.targetDate,
  verificationMethod: verificationMethod != null ? verificationMethod() : this.verificationMethod,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentIntentPaymentMethodOptionsParam &&
          mandateOptions == other.mandateOptions &&
          setupFutureUsage == other.setupFutureUsage &&
          targetDate == other.targetDate &&
          verificationMethod == other.verificationMethod; } 
@override int get hashCode { return Object.hash(mandateOptions, setupFutureUsage, targetDate, verificationMethod); } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParam(mandateOptions: $mandateOptions, setupFutureUsage: $setupFutureUsage, targetDate: $targetDate, verificationMethod: $verificationMethod)'; } 
 }
