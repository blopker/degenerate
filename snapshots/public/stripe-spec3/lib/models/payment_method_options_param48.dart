// GENERATED CODE - DO NOT MODIFY BY HAND

final class PaymentMethodOptionsParam48SetupFutureUsage {const PaymentMethodOptionsParam48SetupFutureUsage._(this.value);

factory PaymentMethodOptionsParam48SetupFutureUsage.fromJson(String json) { return switch (json) {
  'none' => none,
  _ => PaymentMethodOptionsParam48SetupFutureUsage._(json),
}; }

static const PaymentMethodOptionsParam48SetupFutureUsage none = PaymentMethodOptionsParam48SetupFutureUsage._('none');

static const List<PaymentMethodOptionsParam48SetupFutureUsage> values = [none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam48SetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam48SetupFutureUsage($value)'; } 
 }
final class PaymentMethodOptionsParam48 {const PaymentMethodOptionsParam48({this.setupFutureUsage});

factory PaymentMethodOptionsParam48.fromJson(Map<String, dynamic> json) { return PaymentMethodOptionsParam48(
  setupFutureUsage: json['setup_future_usage'] != null ? PaymentMethodOptionsParam48SetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

final PaymentMethodOptionsParam48SetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'setup_future_usage'}.contains(key)); } 
PaymentMethodOptionsParam48 copyWith({PaymentMethodOptionsParam48SetupFutureUsage Function()? setupFutureUsage}) { return PaymentMethodOptionsParam48(
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodOptionsParam48 &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return setupFutureUsage.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam48(setupFutureUsage: $setupFutureUsage)'; } 
 }
