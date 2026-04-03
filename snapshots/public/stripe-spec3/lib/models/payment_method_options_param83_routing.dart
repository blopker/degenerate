// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PaymentMethodOptionsParam83RoutingRequestedPriority {const PaymentMethodOptionsParam83RoutingRequestedPriority._(this.value);

factory PaymentMethodOptionsParam83RoutingRequestedPriority.fromJson(String json) { return switch (json) {
  'domestic' => domestic,
  'international' => international,
  _ => PaymentMethodOptionsParam83RoutingRequestedPriority._(json),
}; }

static const PaymentMethodOptionsParam83RoutingRequestedPriority domestic = PaymentMethodOptionsParam83RoutingRequestedPriority._('domestic');

static const PaymentMethodOptionsParam83RoutingRequestedPriority international = PaymentMethodOptionsParam83RoutingRequestedPriority._('international');

static const List<PaymentMethodOptionsParam83RoutingRequestedPriority> values = [domestic, international];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam83RoutingRequestedPriority && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam83RoutingRequestedPriority($value)'; } 
 }
@immutable final class PaymentMethodOptionsParam83Routing {const PaymentMethodOptionsParam83Routing({this.requestedPriority});

factory PaymentMethodOptionsParam83Routing.fromJson(Map<String, dynamic> json) { return PaymentMethodOptionsParam83Routing(
  requestedPriority: json['requested_priority'] != null ? PaymentMethodOptionsParam83RoutingRequestedPriority.fromJson(json['requested_priority'] as String) : null,
); }

final PaymentMethodOptionsParam83RoutingRequestedPriority? requestedPriority;

Map<String, dynamic> toJson() { return {
  if (requestedPriority != null) 'requested_priority': requestedPriority?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'requested_priority'}.contains(key)); } 
PaymentMethodOptionsParam83Routing copyWith({PaymentMethodOptionsParam83RoutingRequestedPriority Function()? requestedPriority}) { return PaymentMethodOptionsParam83Routing(
  requestedPriority: requestedPriority != null ? requestedPriority() : this.requestedPriority,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodOptionsParam83Routing &&
          requestedPriority == other.requestedPriority; } 
@override int get hashCode { return requestedPriority.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam83Routing(requestedPriority: $requestedPriority)'; } 
 }
