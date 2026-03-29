// GENERATED CODE - DO NOT MODIFY BY HAND

final class PaymentMethodOptionsParam22SetupFutureUsage {const PaymentMethodOptionsParam22SetupFutureUsage._(this.value);

factory PaymentMethodOptionsParam22SetupFutureUsage.fromJson(String json) { return switch (json) {
  'none' => none,
  _ => PaymentMethodOptionsParam22SetupFutureUsage._(json),
}; }

static const PaymentMethodOptionsParam22SetupFutureUsage none = PaymentMethodOptionsParam22SetupFutureUsage._('none');

static const List<PaymentMethodOptionsParam22SetupFutureUsage> values = [none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam22SetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam22SetupFutureUsage($value)'; } 
 }
final class PaymentMethodOptionsParam22 {const PaymentMethodOptionsParam22({this.setupFutureUsage});

factory PaymentMethodOptionsParam22.fromJson(Map<String, dynamic> json) { return PaymentMethodOptionsParam22(
  setupFutureUsage: json['setup_future_usage'] != null ? PaymentMethodOptionsParam22SetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

final PaymentMethodOptionsParam22SetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PaymentMethodOptionsParam22 copyWith({PaymentMethodOptionsParam22SetupFutureUsage Function()? setupFutureUsage}) { return PaymentMethodOptionsParam22(
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodOptionsParam22 &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return setupFutureUsage.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam22(setupFutureUsage: $setupFutureUsage)'; } 
 }
