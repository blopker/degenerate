// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The rails the ReceivedCredit was sent over. A FinancialAccount can only send funds over `stripe`.
@immutable final class ReceivedPaymentMethodDetailsFinancialAccountNetwork {const ReceivedPaymentMethodDetailsFinancialAccountNetwork._(this.value);

factory ReceivedPaymentMethodDetailsFinancialAccountNetwork.fromJson(String json) { return switch (json) {
  'stripe' => stripe,
  _ => ReceivedPaymentMethodDetailsFinancialAccountNetwork._(json),
}; }

static const ReceivedPaymentMethodDetailsFinancialAccountNetwork stripe = ReceivedPaymentMethodDetailsFinancialAccountNetwork._('stripe');

static const List<ReceivedPaymentMethodDetailsFinancialAccountNetwork> values = [stripe];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is ReceivedPaymentMethodDetailsFinancialAccountNetwork && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'ReceivedPaymentMethodDetailsFinancialAccountNetwork($value)'; } 
 }
/// 
@immutable final class ReceivedPaymentMethodDetailsFinancialAccount {const ReceivedPaymentMethodDetailsFinancialAccount({required this.id, required this.network, });

factory ReceivedPaymentMethodDetailsFinancialAccount.fromJson(Map<String, dynamic> json) { return ReceivedPaymentMethodDetailsFinancialAccount(
  id: json['id'] as String,
  network: ReceivedPaymentMethodDetailsFinancialAccountNetwork.fromJson(json['network'] as String),
); }

/// The FinancialAccount ID.
final String id;

/// The rails the ReceivedCredit was sent over. A FinancialAccount can only send funds over `stripe`.
final ReceivedPaymentMethodDetailsFinancialAccountNetwork network;

Map<String, dynamic> toJson() { return {
  'id': id,
  'network': network.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('id') && json['id'] is String &&
      json.containsKey('network'); } 
ReceivedPaymentMethodDetailsFinancialAccount copyWith({String? id, ReceivedPaymentMethodDetailsFinancialAccountNetwork? network, }) { return ReceivedPaymentMethodDetailsFinancialAccount(
  id: id ?? this.id,
  network: network ?? this.network,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ReceivedPaymentMethodDetailsFinancialAccount &&
          id == other.id &&
          network == other.network; } 
@override int get hashCode { return Object.hash(id, network); } 
@override String toString() { return 'ReceivedPaymentMethodDetailsFinancialAccount(id: $id, network: $network)'; } 
 }
