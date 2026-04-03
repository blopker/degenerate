// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_method_options_param46_routing.dart';@immutable final class PaymentMethodOptionsParam46CaptureMethod {const PaymentMethodOptionsParam46CaptureMethod._(this.value);

factory PaymentMethodOptionsParam46CaptureMethod.fromJson(String json) { return switch (json) {
  'manual' => manual,
  'manual_preferred' => manualPreferred,
  _ => PaymentMethodOptionsParam46CaptureMethod._(json),
}; }

static const PaymentMethodOptionsParam46CaptureMethod manual = PaymentMethodOptionsParam46CaptureMethod._('manual');

static const PaymentMethodOptionsParam46CaptureMethod manualPreferred = PaymentMethodOptionsParam46CaptureMethod._('manual_preferred');

static const List<PaymentMethodOptionsParam46CaptureMethod> values = [manual, manualPreferred];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PaymentMethodOptionsParam46CaptureMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PaymentMethodOptionsParam46CaptureMethod($value)'; } 
 }
@immutable final class PaymentMethodOptionsParam46 {const PaymentMethodOptionsParam46({this.captureMethod, this.requestExtendedAuthorization, this.requestIncrementalAuthorizationSupport, this.routing, });

factory PaymentMethodOptionsParam46.fromJson(Map<String, dynamic> json) { return PaymentMethodOptionsParam46(
  captureMethod: json['capture_method'] != null ? PaymentMethodOptionsParam46CaptureMethod.fromJson(json['capture_method'] as String) : null,
  requestExtendedAuthorization: json['request_extended_authorization'] as bool?,
  requestIncrementalAuthorizationSupport: json['request_incremental_authorization_support'] as bool?,
  routing: json['routing'] != null ? PaymentMethodOptionsParam46Routing.fromJson(json['routing'] as Map<String, dynamic>) : null,
); }

final PaymentMethodOptionsParam46CaptureMethod? captureMethod;

final bool? requestExtendedAuthorization;

final bool? requestIncrementalAuthorizationSupport;

final PaymentMethodOptionsParam46Routing? routing;

Map<String, dynamic> toJson() { return {
  if (captureMethod != null) 'capture_method': captureMethod?.toJson(),
  'request_extended_authorization': ?requestExtendedAuthorization,
  'request_incremental_authorization_support': ?requestIncrementalAuthorizationSupport,
  if (routing != null) 'routing': routing?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'capture_method', 'request_extended_authorization', 'request_incremental_authorization_support', 'routing'}.contains(key)); } 
PaymentMethodOptionsParam46 copyWith({PaymentMethodOptionsParam46CaptureMethod Function()? captureMethod, bool Function()? requestExtendedAuthorization, bool Function()? requestIncrementalAuthorizationSupport, PaymentMethodOptionsParam46Routing Function()? routing, }) { return PaymentMethodOptionsParam46(
  captureMethod: captureMethod != null ? captureMethod() : this.captureMethod,
  requestExtendedAuthorization: requestExtendedAuthorization != null ? requestExtendedAuthorization() : this.requestExtendedAuthorization,
  requestIncrementalAuthorizationSupport: requestIncrementalAuthorizationSupport != null ? requestIncrementalAuthorizationSupport() : this.requestIncrementalAuthorizationSupport,
  routing: routing != null ? routing() : this.routing,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentMethodOptionsParam46 &&
          captureMethod == other.captureMethod &&
          requestExtendedAuthorization == other.requestExtendedAuthorization &&
          requestIncrementalAuthorizationSupport == other.requestIncrementalAuthorizationSupport &&
          routing == other.routing; } 
@override int get hashCode { return Object.hash(captureMethod, requestExtendedAuthorization, requestIncrementalAuthorizationSupport, routing); } 
@override String toString() { return 'PaymentMethodOptionsParam46(captureMethod: $captureMethod, requestExtendedAuthorization: $requestExtendedAuthorization, requestIncrementalAuthorizationSupport: $requestIncrementalAuthorizationSupport, routing: $routing)'; } 
 }
