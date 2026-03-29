// GENERATED CODE - DO NOT MODIFY BY HAND

import 'client_key_param_customer_acceptance.dart';/// This hash contains details about the Mandate to create
final class ClientKeyParam {const ClientKeyParam({required this.customerAcceptance});

factory ClientKeyParam.fromJson(Map<String, dynamic> json) { return ClientKeyParam(
  customerAcceptance: ClientKeyParamCustomerAcceptance.fromJson(json['customer_acceptance'] as Map<String, dynamic>),
); }

final ClientKeyParamCustomerAcceptance customerAcceptance;

Map<String, dynamic> toJson() { return {
  'customer_acceptance': customerAcceptance.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('customer_acceptance'); } 
ClientKeyParam copyWith({ClientKeyParamCustomerAcceptance? customerAcceptance}) { return ClientKeyParam(
  customerAcceptance: customerAcceptance ?? this.customerAcceptance,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ClientKeyParam &&
          customerAcceptance == other.customerAcceptance; } 
@override int get hashCode { return customerAcceptance.hashCode; } 
@override String toString() { return 'ClientKeyParam(customerAcceptance: $customerAcceptance)'; } 
 }
