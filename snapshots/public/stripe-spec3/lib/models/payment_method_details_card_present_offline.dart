// GENERATED CODE - DO NOT MODIFY BY HAND

/// The method used to process this payment method offline. Only deferred is allowed.
final class PaymentMethodDetailsCardPresentOfflineType {const PaymentMethodDetailsCardPresentOfflineType._(this.value);

factory PaymentMethodDetailsCardPresentOfflineType.fromJson(String json) { return switch (json) {
  'deferred' => $deferred,
  _ => PaymentMethodDetailsCardPresentOfflineType._(json),
}; }

static const PaymentMethodDetailsCardPresentOfflineType $deferred = PaymentMethodDetailsCardPresentOfflineType._('deferred');

static const List<PaymentMethodDetailsCardPresentOfflineType> values = [$deferred];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodDetailsCardPresentOfflineType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodDetailsCardPresentOfflineType($value)'; } 
 }
/// 
final class PaymentMethodDetailsCardPresentOffline {const PaymentMethodDetailsCardPresentOffline({this.storedAt, this.type, });

factory PaymentMethodDetailsCardPresentOffline.fromJson(Map<String, dynamic> json) { return PaymentMethodDetailsCardPresentOffline(
  storedAt: json['stored_at'] != null ? (json['stored_at'] as num).toInt() : null,
  type: json['type'] != null ? PaymentMethodDetailsCardPresentOfflineType.fromJson(json['type'] as String) : null,
); }

/// Time at which the payment was collected while offline
final int? storedAt;

/// The method used to process this payment method offline. Only deferred is allowed.
final PaymentMethodDetailsCardPresentOfflineType? type;

Map<String, dynamic> toJson() { return {
  'stored_at': ?storedAt,
  if (type != null) 'type': type?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PaymentMethodDetailsCardPresentOffline copyWith({int? Function()? storedAt, PaymentMethodDetailsCardPresentOfflineType? Function()? type, }) { return PaymentMethodDetailsCardPresentOffline(
  storedAt: storedAt != null ? storedAt() : this.storedAt,
  type: type != null ? type() : this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodDetailsCardPresentOffline &&
          storedAt == other.storedAt &&
          type == other.type; } 
@override int get hashCode { return Object.hash(storedAt, type); } 
@override String toString() { return 'PaymentMethodDetailsCardPresentOffline(storedAt: $storedAt, type: $type)'; } 
 }
