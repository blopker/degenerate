// GENERATED CODE - DO NOT MODIFY BY HAND

final class PaymentMethodOptionsParam47SetupFutureUsage {const PaymentMethodOptionsParam47SetupFutureUsage._(this.value);

factory PaymentMethodOptionsParam47SetupFutureUsage.fromJson(String json) { return switch (json) {
  'none' => none,
  _ => PaymentMethodOptionsParam47SetupFutureUsage._(json),
}; }

static const PaymentMethodOptionsParam47SetupFutureUsage none = PaymentMethodOptionsParam47SetupFutureUsage._('none');

static const List<PaymentMethodOptionsParam47SetupFutureUsage> values = [none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam47SetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam47SetupFutureUsage($value)'; } 
 }
final class PaymentMethodOptionsParam47 {const PaymentMethodOptionsParam47({this.setupFutureUsage});

factory PaymentMethodOptionsParam47.fromJson(Map<String, dynamic> json) { return PaymentMethodOptionsParam47(
  setupFutureUsage: json['setup_future_usage'] != null ? PaymentMethodOptionsParam47SetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

final PaymentMethodOptionsParam47SetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PaymentMethodOptionsParam47 copyWith({PaymentMethodOptionsParam47SetupFutureUsage Function()? setupFutureUsage}) { return PaymentMethodOptionsParam47(
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodOptionsParam47 &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return setupFutureUsage.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam47(setupFutureUsage: $setupFutureUsage)'; } 
 }
