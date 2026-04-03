// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class GetSubscriptionsCollectionMethod {const GetSubscriptionsCollectionMethod._(this.value);

factory GetSubscriptionsCollectionMethod.fromJson(String json) { return switch (json) {
  'charge_automatically' => chargeAutomatically,
  'send_invoice' => sendInvoice,
  _ => GetSubscriptionsCollectionMethod._(json),
}; }

static const GetSubscriptionsCollectionMethod chargeAutomatically = GetSubscriptionsCollectionMethod._('charge_automatically');

static const GetSubscriptionsCollectionMethod sendInvoice = GetSubscriptionsCollectionMethod._('send_invoice');

static const List<GetSubscriptionsCollectionMethod> values = [chargeAutomatically, sendInvoice];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is GetSubscriptionsCollectionMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'GetSubscriptionsCollectionMethod($value)'; } 
 }
