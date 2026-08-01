// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The method used to process this payment method offline. Only deferred is allowed.
@immutable final class PaymentMethodDetailsCardPresentOfflineType {const PaymentMethodDetailsCardPresentOfflineType._(this.value);

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
@immutable final class PaymentMethodDetailsCardPresentOffline {const PaymentMethodDetailsCardPresentOffline({this.storedAt = const Omittable.absent(), this.type = const Omittable.absent(), });

factory PaymentMethodDetailsCardPresentOffline.fromJson(Map<String, dynamic> json) { return PaymentMethodDetailsCardPresentOffline(
  storedAt: json.containsKey('stored_at') ? Omittable(json['stored_at'] != null ? (json['stored_at'] as num).toInt() : null) : const Omittable.absent(),
  type: json.containsKey('type') ? Omittable(json['type'] != null ? PaymentMethodDetailsCardPresentOfflineType.fromJson(json['type'] as String) : null) : const Omittable.absent(),
); }

/// Time at which the payment was collected while offline
final Omittable<int?> storedAt;

/// The method used to process this payment method offline. Only deferred is allowed.
final Omittable<PaymentMethodDetailsCardPresentOfflineType?> type;

Map<String, dynamic> toJson() { return {
  if (storedAt.isPresent) 'stored_at': storedAt.value,
  if (type.isPresent) 'type': type.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'stored_at', 'type'}.contains(key)); } 
PaymentMethodDetailsCardPresentOffline copyWith({Omittable<int?>? storedAt, Omittable<PaymentMethodDetailsCardPresentOfflineType?>? type, }) { return PaymentMethodDetailsCardPresentOffline(
  storedAt: storedAt ?? this.storedAt,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodDetailsCardPresentOffline &&
          storedAt == other.storedAt &&
          type == other.type; } 
@override int get hashCode { return Object.hash(storedAt, type); } 
@override String toString() { return 'PaymentMethodDetailsCardPresentOffline(storedAt: $storedAt, type: $type)'; } 
 }
