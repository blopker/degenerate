// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Requested routing priority
@immutable final class PaymentMethodOptionsCardPresentRoutingRequestedPriority {const PaymentMethodOptionsCardPresentRoutingRequestedPriority._(this.value);

factory PaymentMethodOptionsCardPresentRoutingRequestedPriority.fromJson(String json) { return switch (json) {
  'domestic' => domestic,
  'international' => international,
  _ => PaymentMethodOptionsCardPresentRoutingRequestedPriority._(json),
}; }

static const PaymentMethodOptionsCardPresentRoutingRequestedPriority domestic = PaymentMethodOptionsCardPresentRoutingRequestedPriority._('domestic');

static const PaymentMethodOptionsCardPresentRoutingRequestedPriority international = PaymentMethodOptionsCardPresentRoutingRequestedPriority._('international');

static const List<PaymentMethodOptionsCardPresentRoutingRequestedPriority> values = [domestic, international];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsCardPresentRoutingRequestedPriority && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsCardPresentRoutingRequestedPriority($value)'; } 
 }
/// 
@immutable final class PaymentMethodOptionsCardPresentRouting {const PaymentMethodOptionsCardPresentRouting({this.requestedPriority});

factory PaymentMethodOptionsCardPresentRouting.fromJson(Map<String, dynamic> json) { return PaymentMethodOptionsCardPresentRouting(
  requestedPriority: json['requested_priority'] != null ? PaymentMethodOptionsCardPresentRoutingRequestedPriority.fromJson(json['requested_priority'] as String) : null,
); }

/// Requested routing priority
final PaymentMethodOptionsCardPresentRoutingRequestedPriority? requestedPriority;

Map<String, dynamic> toJson() { return {
  if (requestedPriority != null) 'requested_priority': requestedPriority?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested_priority'}.contains(key)); } 
PaymentMethodOptionsCardPresentRouting copyWith({PaymentMethodOptionsCardPresentRoutingRequestedPriority? Function()? requestedPriority}) { return PaymentMethodOptionsCardPresentRouting(
  requestedPriority: requestedPriority != null ? requestedPriority() : this.requestedPriority,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodOptionsCardPresentRouting &&
          requestedPriority == other.requestedPriority; } 
@override int get hashCode { return requestedPriority.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsCardPresentRouting(requestedPriority: $requestedPriority)'; } 
 }
