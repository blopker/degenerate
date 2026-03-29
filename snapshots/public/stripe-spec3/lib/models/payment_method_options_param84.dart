// GENERATED CODE - DO NOT MODIFY BY HAND

final class PaymentMethodOptionsParam84SetupFutureUsage {const PaymentMethodOptionsParam84SetupFutureUsage._(this.value);

factory PaymentMethodOptionsParam84SetupFutureUsage.fromJson(String json) { return switch (json) {
  'none' => none,
  _ => PaymentMethodOptionsParam84SetupFutureUsage._(json),
}; }

static const PaymentMethodOptionsParam84SetupFutureUsage none = PaymentMethodOptionsParam84SetupFutureUsage._('none');

static const List<PaymentMethodOptionsParam84SetupFutureUsage> values = [none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam84SetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam84SetupFutureUsage($value)'; } 
 }
final class PaymentMethodOptionsParam84 {const PaymentMethodOptionsParam84({this.setupFutureUsage});

factory PaymentMethodOptionsParam84.fromJson(Map<String, dynamic> json) { return PaymentMethodOptionsParam84(
  setupFutureUsage: json['setup_future_usage'] != null ? PaymentMethodOptionsParam84SetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

final PaymentMethodOptionsParam84SetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PaymentMethodOptionsParam84 copyWith({PaymentMethodOptionsParam84SetupFutureUsage Function()? setupFutureUsage}) { return PaymentMethodOptionsParam84(
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodOptionsParam84 &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return setupFutureUsage.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam84(setupFutureUsage: $setupFutureUsage)'; } 
 }
