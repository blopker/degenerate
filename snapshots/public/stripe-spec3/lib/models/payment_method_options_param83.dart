// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param83_routing.dart';@immutable final class PaymentMethodOptionsParam83CaptureMethod {const PaymentMethodOptionsParam83CaptureMethod._(this.value);

factory PaymentMethodOptionsParam83CaptureMethod.fromJson(String json) { return switch (json) {
  'manual' => manual,
  'manual_preferred' => manualPreferred,
  _ => PaymentMethodOptionsParam83CaptureMethod._(json),
}; }

static const PaymentMethodOptionsParam83CaptureMethod manual = PaymentMethodOptionsParam83CaptureMethod._('manual');

static const PaymentMethodOptionsParam83CaptureMethod manualPreferred = PaymentMethodOptionsParam83CaptureMethod._('manual_preferred');

static const List<PaymentMethodOptionsParam83CaptureMethod> values = [manual, manualPreferred];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam83CaptureMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam83CaptureMethod($value)'; } 
 }
@immutable final class PaymentMethodOptionsParam83 {const PaymentMethodOptionsParam83({this.captureMethod, this.requestExtendedAuthorization, this.requestIncrementalAuthorizationSupport, this.routing, });

factory PaymentMethodOptionsParam83.fromJson(Map<String, dynamic> json) { return PaymentMethodOptionsParam83(
  captureMethod: json['capture_method'] != null ? PaymentMethodOptionsParam83CaptureMethod.fromJson(json['capture_method'] as String) : null,
  requestExtendedAuthorization: json['request_extended_authorization'] as bool?,
  requestIncrementalAuthorizationSupport: json['request_incremental_authorization_support'] as bool?,
  routing: json['routing'] != null ? PaymentMethodOptionsParam83Routing.fromJson(json['routing'] as Map<String, dynamic>) : null,
); }

final PaymentMethodOptionsParam83CaptureMethod? captureMethod;

final bool? requestExtendedAuthorization;

final bool? requestIncrementalAuthorizationSupport;

final PaymentMethodOptionsParam83Routing? routing;

Map<String, dynamic> toJson() { return {
  if (captureMethod != null) 'capture_method': captureMethod?.toJson(),
  'request_extended_authorization': ?requestExtendedAuthorization,
  'request_incremental_authorization_support': ?requestIncrementalAuthorizationSupport,
  if (routing != null) 'routing': routing?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'capture_method', 'request_extended_authorization', 'request_incremental_authorization_support', 'routing'}.contains(key)); } 
PaymentMethodOptionsParam83 copyWith({PaymentMethodOptionsParam83CaptureMethod Function()? captureMethod, bool Function()? requestExtendedAuthorization, bool Function()? requestIncrementalAuthorizationSupport, PaymentMethodOptionsParam83Routing Function()? routing, }) { return PaymentMethodOptionsParam83(
  captureMethod: captureMethod != null ? captureMethod() : this.captureMethod,
  requestExtendedAuthorization: requestExtendedAuthorization != null ? requestExtendedAuthorization() : this.requestExtendedAuthorization,
  requestIncrementalAuthorizationSupport: requestIncrementalAuthorizationSupport != null ? requestIncrementalAuthorizationSupport() : this.requestIncrementalAuthorizationSupport,
  routing: routing != null ? routing() : this.routing,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodOptionsParam83 &&
          captureMethod == other.captureMethod &&
          requestExtendedAuthorization == other.requestExtendedAuthorization &&
          requestIncrementalAuthorizationSupport == other.requestIncrementalAuthorizationSupport &&
          routing == other.routing; } 
@override int get hashCode { return Object.hash(captureMethod, requestExtendedAuthorization, requestIncrementalAuthorizationSupport, routing); } 
@override String toString() { return 'PaymentMethodOptionsParam83(captureMethod: $captureMethod, requestExtendedAuthorization: $requestExtendedAuthorization, requestIncrementalAuthorizationSupport: $requestIncrementalAuthorizationSupport, routing: $routing)'; } 
 }
