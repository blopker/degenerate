// GENERATED CODE - DO NOT MODIFY BY HAND

import 'confirmation_tokens_resource_mandate_data_resource_customer_acceptance_resource_online.dart';/// This hash contains details about the customer acceptance of the Mandate.
final class ConfirmationTokensResourceMandateDataResourceCustomerAcceptance {const ConfirmationTokensResourceMandateDataResourceCustomerAcceptance({this.online, required this.type, });

factory ConfirmationTokensResourceMandateDataResourceCustomerAcceptance.fromJson(Map<String, dynamic> json) { return ConfirmationTokensResourceMandateDataResourceCustomerAcceptance(
  online: json['online'] != null ? ConfirmationTokensResourceMandateDataResourceCustomerAcceptanceResourceOnline.fromJson(json['online'] as Map<String, dynamic>) : null,
  type: json['type'] as String,
); }

/// If this is a Mandate accepted online, this hash contains details about the online acceptance.
final ConfirmationTokensResourceMandateDataResourceCustomerAcceptanceResourceOnline? online;

/// The type of customer acceptance information included with the Mandate.
final String type;

Map<String, dynamic> toJson() { return {
  if (online != null) 'online': online?.toJson(),
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String; } 
ConfirmationTokensResourceMandateDataResourceCustomerAcceptance copyWith({ConfirmationTokensResourceMandateDataResourceCustomerAcceptanceResourceOnline? Function()? online, String? type, }) { return ConfirmationTokensResourceMandateDataResourceCustomerAcceptance(
  online: online != null ? online() : this.online,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ConfirmationTokensResourceMandateDataResourceCustomerAcceptance &&
          online == other.online &&
          type == other.type; } 
@override int get hashCode { return Object.hash(online, type); } 
@override String toString() { return 'ConfirmationTokensResourceMandateDataResourceCustomerAcceptance(online: $online, type: $type)'; } 
 }
