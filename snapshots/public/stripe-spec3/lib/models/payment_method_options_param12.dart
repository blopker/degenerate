// GENERATED CODE - DO NOT MODIFY BY HAND

final class PaymentMethodOptionsParam12SetupFutureUsage {const PaymentMethodOptionsParam12SetupFutureUsage._(this.value);

factory PaymentMethodOptionsParam12SetupFutureUsage.fromJson(String json) { return switch (json) {
  'none' => none,
  _ => PaymentMethodOptionsParam12SetupFutureUsage._(json),
}; }

static const PaymentMethodOptionsParam12SetupFutureUsage none = PaymentMethodOptionsParam12SetupFutureUsage._('none');

static const List<PaymentMethodOptionsParam12SetupFutureUsage> values = [none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam12SetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam12SetupFutureUsage($value)'; } 
 }
final class PaymentMethodOptionsParam12 {const PaymentMethodOptionsParam12({this.setupFutureUsage});

factory PaymentMethodOptionsParam12.fromJson(Map<String, dynamic> json) { return PaymentMethodOptionsParam12(
  setupFutureUsage: json['setup_future_usage'] != null ? PaymentMethodOptionsParam12SetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

final PaymentMethodOptionsParam12SetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PaymentMethodOptionsParam12 copyWith({PaymentMethodOptionsParam12SetupFutureUsage Function()? setupFutureUsage}) { return PaymentMethodOptionsParam12(
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodOptionsParam12 &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return setupFutureUsage.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam12(setupFutureUsage: $setupFutureUsage)'; } 
 }
