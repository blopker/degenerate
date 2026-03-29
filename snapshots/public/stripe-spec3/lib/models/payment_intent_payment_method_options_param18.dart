// GENERATED CODE - DO NOT MODIFY BY HAND

final class PaymentIntentPaymentMethodOptionsParam18SetupFutureUsage {const PaymentIntentPaymentMethodOptionsParam18SetupFutureUsage._(this.value);

factory PaymentIntentPaymentMethodOptionsParam18SetupFutureUsage.fromJson(String json) { return switch (json) {
  '' => $empty,
  'none' => none,
  _ => PaymentIntentPaymentMethodOptionsParam18SetupFutureUsage._(json),
}; }

static const PaymentIntentPaymentMethodOptionsParam18SetupFutureUsage $empty = PaymentIntentPaymentMethodOptionsParam18SetupFutureUsage._('');

static const PaymentIntentPaymentMethodOptionsParam18SetupFutureUsage none = PaymentIntentPaymentMethodOptionsParam18SetupFutureUsage._('none');

static const List<PaymentIntentPaymentMethodOptionsParam18SetupFutureUsage> values = [$empty, none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentIntentPaymentMethodOptionsParam18SetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParam18SetupFutureUsage($value)'; } 
 }
final class PaymentIntentPaymentMethodOptionsParam18 {const PaymentIntentPaymentMethodOptionsParam18({this.code, this.setupFutureUsage, });

factory PaymentIntentPaymentMethodOptionsParam18.fromJson(Map<String, dynamic> json) { return PaymentIntentPaymentMethodOptionsParam18(
  code: json['code'] as String?,
  setupFutureUsage: json['setup_future_usage'] != null ? PaymentIntentPaymentMethodOptionsParam18SetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

final String? code;

final PaymentIntentPaymentMethodOptionsParam18SetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  'code': ?code,
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'code', 'setup_future_usage'}.contains(key)); } 
PaymentIntentPaymentMethodOptionsParam18 copyWith({String Function()? code, PaymentIntentPaymentMethodOptionsParam18SetupFutureUsage Function()? setupFutureUsage, }) { return PaymentIntentPaymentMethodOptionsParam18(
  code: code != null ? code() : this.code,
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentIntentPaymentMethodOptionsParam18 &&
          code == other.code &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return Object.hash(code, setupFutureUsage); } 
@override String toString() { return 'PaymentIntentPaymentMethodOptionsParam18(code: $code, setupFutureUsage: $setupFutureUsage)'; } 
 }
