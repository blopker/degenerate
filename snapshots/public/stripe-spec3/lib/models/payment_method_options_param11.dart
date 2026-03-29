// GENERATED CODE - DO NOT MODIFY BY HAND

final class PaymentMethodOptionsParam11SetupFutureUsage {const PaymentMethodOptionsParam11SetupFutureUsage._(this.value);

factory PaymentMethodOptionsParam11SetupFutureUsage.fromJson(String json) { return switch (json) {
  'none' => none,
  _ => PaymentMethodOptionsParam11SetupFutureUsage._(json),
}; }

static const PaymentMethodOptionsParam11SetupFutureUsage none = PaymentMethodOptionsParam11SetupFutureUsage._('none');

static const List<PaymentMethodOptionsParam11SetupFutureUsage> values = [none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam11SetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam11SetupFutureUsage($value)'; } 
 }
final class PaymentMethodOptionsParam11 {const PaymentMethodOptionsParam11({this.setupFutureUsage});

factory PaymentMethodOptionsParam11.fromJson(Map<String, dynamic> json) { return PaymentMethodOptionsParam11(
  setupFutureUsage: json['setup_future_usage'] != null ? PaymentMethodOptionsParam11SetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
); }

final PaymentMethodOptionsParam11SetupFutureUsage? setupFutureUsage;

Map<String, dynamic> toJson() { return {
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'setup_future_usage'}.contains(key)); } 
PaymentMethodOptionsParam11 copyWith({PaymentMethodOptionsParam11SetupFutureUsage Function()? setupFutureUsage}) { return PaymentMethodOptionsParam11(
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodOptionsParam11 &&
          setupFutureUsage == other.setupFutureUsage; } 
@override int get hashCode { return setupFutureUsage.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam11(setupFutureUsage: $setupFutureUsage)'; } 
 }
