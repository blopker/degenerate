// GENERATED CODE - DO NOT MODIFY BY HAND

final class PaymentMethodOptionsParam37SetupFutureUsage {const PaymentMethodOptionsParam37SetupFutureUsage._(this.value);

factory PaymentMethodOptionsParam37SetupFutureUsage.fromJson(String json) { return switch (json) {
  'none' => none,
  _ => PaymentMethodOptionsParam37SetupFutureUsage._(json),
}; }

static const PaymentMethodOptionsParam37SetupFutureUsage none = PaymentMethodOptionsParam37SetupFutureUsage._('none');

static const List<PaymentMethodOptionsParam37SetupFutureUsage> values = [none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam37SetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam37SetupFutureUsage($value)'; } 
 }
final class PaymentMethodOptionsParam37 {const PaymentMethodOptionsParam37({this.setupFutureUsage});

factory PaymentMethodOptionsParam37.fromJson(Map<String, dynamic> json) { return PaymentMethodOptionsParam37(
  setupFutureUsage: json['setup_future_usage'] != null ? PaymentMethodOptionsParam37SetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

final PaymentMethodOptionsParam37SetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PaymentMethodOptionsParam37 copyWith({PaymentMethodOptionsParam37SetupFutureUsage Function()? setupFutureUsage}) { return PaymentMethodOptionsParam37(
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodOptionsParam37 &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return setupFutureUsage.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam37(setupFutureUsage: $setupFutureUsage)'; } 
 }
