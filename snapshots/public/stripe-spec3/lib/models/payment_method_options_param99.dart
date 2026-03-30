// GENERATED CODE - DO NOT MODIFY BY HAND

final class PaymentMethodOptionsParam99SetupFutureUsage {const PaymentMethodOptionsParam99SetupFutureUsage._(this.value);

factory PaymentMethodOptionsParam99SetupFutureUsage.fromJson(String json) { return switch (json) {
  'none' => none,
  _ => PaymentMethodOptionsParam99SetupFutureUsage._(json),
}; }

static const PaymentMethodOptionsParam99SetupFutureUsage none = PaymentMethodOptionsParam99SetupFutureUsage._('none');

static const List<PaymentMethodOptionsParam99SetupFutureUsage> values = [none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam99SetupFutureUsage && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam99SetupFutureUsage($value)'; } 
 }
final class PaymentMethodOptionsParam99 {const PaymentMethodOptionsParam99({this.setupFutureUsage, this.tosShownAndAccepted, });

factory PaymentMethodOptionsParam99.fromJson(Map<String, dynamic> json) { return PaymentMethodOptionsParam99(
  setupFutureUsage: json['setup_future_usage'] != null ? PaymentMethodOptionsParam99SetupFutureUsage.fromJson(json['setup_future_usage'] as String) : null,
  tosShownAndAccepted: json['tos_shown_and_accepted'] as bool?,
); }

final PaymentMethodOptionsParam99SetupFutureUsage? setupFutureUsage;

final bool? tosShownAndAccepted;

Map<String, dynamic> toJson() { return {
  if (setupFutureUsage != null) 'setup_future_usage': setupFutureUsage?.toJson(),
  'tos_shown_and_accepted': ?tosShownAndAccepted,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'setup_future_usage', 'tos_shown_and_accepted'}.contains(key)); } 
PaymentMethodOptionsParam99 copyWith({PaymentMethodOptionsParam99SetupFutureUsage Function()? setupFutureUsage, bool Function()? tosShownAndAccepted, }) { return PaymentMethodOptionsParam99(
  setupFutureUsage: setupFutureUsage != null ? setupFutureUsage() : this.setupFutureUsage,
  tosShownAndAccepted: tosShownAndAccepted != null ? tosShownAndAccepted() : this.tosShownAndAccepted,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodOptionsParam99 &&
          setupFutureUsage == other.setupFutureUsage &&
          tosShownAndAccepted == other.tosShownAndAccepted; } 
@override int get hashCode { return Object.hash(setupFutureUsage, tosShownAndAccepted); } 
@override String toString() { return 'PaymentMethodOptionsParam99(setupFutureUsage: $setupFutureUsage, tosShownAndAccepted: $tosShownAndAccepted)'; } 
 }
