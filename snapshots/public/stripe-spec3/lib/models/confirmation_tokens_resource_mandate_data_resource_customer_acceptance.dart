// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'confirmation_tokens_resource_mandate_data_resource_customer_acceptance_resource_online.dart';/// This hash contains details about the customer acceptance of the Mandate.
@immutable final class ConfirmationTokensResourceMandateDataResourceCustomerAcceptance {const ConfirmationTokensResourceMandateDataResourceCustomerAcceptance({required this.type, this.online = const Omittable.absent(), });

factory ConfirmationTokensResourceMandateDataResourceCustomerAcceptance.fromJson(Map<String, dynamic> json) { return ConfirmationTokensResourceMandateDataResourceCustomerAcceptance(
  online: json.containsKey('online') ? Omittable(json['online'] != null ? ConfirmationTokensResourceMandateDataResourceCustomerAcceptanceResourceOnline.fromJson(json['online'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  type: json['type'] as String,
); }

/// If this is a Mandate accepted online, this hash contains details about the online acceptance.
final Omittable<ConfirmationTokensResourceMandateDataResourceCustomerAcceptanceResourceOnline?> online;

/// The type of customer acceptance information included with the Mandate.
final String type;

Map<String, dynamic> toJson() { return {
  if (online.isPresent) 'online': online.value?.toJson(),
  'type': type,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('type') && json['type'] is String; } 
ConfirmationTokensResourceMandateDataResourceCustomerAcceptance copyWith({Omittable<ConfirmationTokensResourceMandateDataResourceCustomerAcceptanceResourceOnline?>? online, String? type, }) { return ConfirmationTokensResourceMandateDataResourceCustomerAcceptance(
  online: online ?? this.online,
  type: type ?? this.type,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ConfirmationTokensResourceMandateDataResourceCustomerAcceptance &&
          online == other.online &&
          type == other.type; } 
@override int get hashCode { return Object.hash(online, type); } 
@override String toString() { return 'ConfirmationTokensResourceMandateDataResourceCustomerAcceptance(online: $online, type: $type)'; } 
 }
