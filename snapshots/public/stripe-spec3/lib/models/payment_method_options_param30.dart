// GENERATED CODE - DO NOT MODIFY BY HAND

final class PaymentMethodOptionsParam30SetupFutureUsage {const PaymentMethodOptionsParam30SetupFutureUsage._(this.value);

factory PaymentMethodOptionsParam30SetupFutureUsage.fromJson(String json) { return switch (json) {
  'none' => none,
  _ => PaymentMethodOptionsParam30SetupFutureUsage._(json),
}; }

static const PaymentMethodOptionsParam30SetupFutureUsage none = PaymentMethodOptionsParam30SetupFutureUsage._('none');

static const List<PaymentMethodOptionsParam30SetupFutureUsage> values = [none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam30SetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam30SetupFutureUsage($value)'; } 
 }
final class PaymentMethodOptionsParam30 {const PaymentMethodOptionsParam30({this.setupFutureUsage});

factory PaymentMethodOptionsParam30.fromJson(Map<String, dynamic> json) { return PaymentMethodOptionsParam30(
  setupFutureUsage: json['setup_future_usage'] != null ? PaymentMethodOptionsParam30SetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

final PaymentMethodOptionsParam30SetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PaymentMethodOptionsParam30 copyWith({PaymentMethodOptionsParam30SetupFutureUsage Function()? setupFutureUsage}) { return PaymentMethodOptionsParam30(
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodOptionsParam30 &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return setupFutureUsage.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam30(setupFutureUsage: $setupFutureUsage)'; } 
 }
