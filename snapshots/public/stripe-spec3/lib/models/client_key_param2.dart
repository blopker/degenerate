// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'client_key_param2_customer_acceptance.dart';/// This hash contains details about the Mandate to create
@immutable final class ClientKeyParam2 {const ClientKeyParam2({required this.customerAcceptance});

factory ClientKeyParam2.fromJson(Map<String, dynamic> json) { return ClientKeyParam2(
  customerAcceptance: ClientKeyParam2CustomerAcceptance.fromJson(json['customer_acceptance'] as Map<String, dynamic>),
); }

final ClientKeyParam2CustomerAcceptance customerAcceptance;

Map<String, dynamic> toJson() { return {
  'customer_acceptance': customerAcceptance.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('customer_acceptance'); } 
ClientKeyParam2 copyWith({ClientKeyParam2CustomerAcceptance? customerAcceptance}) { return ClientKeyParam2(
  customerAcceptance: customerAcceptance ?? this.customerAcceptance,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ClientKeyParam2 &&
          customerAcceptance == other.customerAcceptance; } 
@override int get hashCode { return customerAcceptance.hashCode; } 
@override String toString() { return 'ClientKeyParam2(customerAcceptance: $customerAcceptance)'; } 
 }
