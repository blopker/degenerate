// GENERATED CODE - DO NOT MODIFY BY HAND

final class PaymentMethodOptionsParam10SetupFutureUsage {const PaymentMethodOptionsParam10SetupFutureUsage._(this.value);

factory PaymentMethodOptionsParam10SetupFutureUsage.fromJson(String json) { return switch (json) {
  'none' => none,
  _ => PaymentMethodOptionsParam10SetupFutureUsage._(json),
}; }

static const PaymentMethodOptionsParam10SetupFutureUsage none = PaymentMethodOptionsParam10SetupFutureUsage._('none');

static const List<PaymentMethodOptionsParam10SetupFutureUsage> values = [none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam10SetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam10SetupFutureUsage($value)'; } 
 }
final class PaymentMethodOptionsParam10 {const PaymentMethodOptionsParam10({this.setupFutureUsage});

factory PaymentMethodOptionsParam10.fromJson(Map<String, dynamic> json) { return PaymentMethodOptionsParam10(
  setupFutureUsage: json['setup_future_usage'] != null ? PaymentMethodOptionsParam10SetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

final PaymentMethodOptionsParam10SetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PaymentMethodOptionsParam10 copyWith({PaymentMethodOptionsParam10SetupFutureUsage Function()? setupFutureUsage}) { return PaymentMethodOptionsParam10(
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodOptionsParam10 &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return setupFutureUsage.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam10(setupFutureUsage: $setupFutureUsage)'; } 
 }
