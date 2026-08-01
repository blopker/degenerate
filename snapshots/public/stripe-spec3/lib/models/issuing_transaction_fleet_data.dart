// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'issuing_transaction_fleet_cardholder_prompt_data.dart';import 'issuing_transaction_fleet_reported_breakdown.dart';/// 
@immutable final class IssuingTransactionFleetData {const IssuingTransactionFleetData({this.cardholderPromptData = const Omittable.absent(), this.purchaseType = const Omittable.absent(), this.reportedBreakdown = const Omittable.absent(), this.serviceType = const Omittable.absent(), });

factory IssuingTransactionFleetData.fromJson(Map<String, dynamic> json) { return IssuingTransactionFleetData(
  cardholderPromptData: json.containsKey('cardholder_prompt_data') ? Omittable(json['cardholder_prompt_data'] != null ? IssuingTransactionFleetCardholderPromptData.fromJson(json['cardholder_prompt_data'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  purchaseType: json.containsKey('purchase_type') ? Omittable(json['purchase_type'] as String?) : const Omittable.absent(),
  reportedBreakdown: json.containsKey('reported_breakdown') ? Omittable(json['reported_breakdown'] != null ? IssuingTransactionFleetReportedBreakdown.fromJson(json['reported_breakdown'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  serviceType: json.containsKey('service_type') ? Omittable(json['service_type'] as String?) : const Omittable.absent(),
); }

/// Answers to prompts presented to cardholder at point of sale.
final Omittable<IssuingTransactionFleetCardholderPromptData?> cardholderPromptData;

/// The type of purchase. One of `fuel_purchase`, `non_fuel_purchase`, or `fuel_and_non_fuel_purchase`.
final Omittable<String?> purchaseType;

/// More information about the total amount. This information is not guaranteed to be accurate as some merchants may provide unreliable data.
final Omittable<IssuingTransactionFleetReportedBreakdown?> reportedBreakdown;

/// The type of fuel service. One of `non_fuel_transaction`, `full_service`, or `self_service`.
final Omittable<String?> serviceType;

Map<String, dynamic> toJson() { return {
  if (cardholderPromptData.isPresent) 'cardholder_prompt_data': cardholderPromptData.value?.toJson(),
  if (purchaseType.isPresent) 'purchase_type': purchaseType.value,
  if (reportedBreakdown.isPresent) 'reported_breakdown': reportedBreakdown.value?.toJson(),
  if (serviceType.isPresent) 'service_type': serviceType.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'cardholder_prompt_data', 'purchase_type', 'reported_breakdown', 'service_type'}.contains(key)); } 
IssuingTransactionFleetData copyWith({Omittable<IssuingTransactionFleetCardholderPromptData?>? cardholderPromptData, Omittable<String?>? purchaseType, Omittable<IssuingTransactionFleetReportedBreakdown?>? reportedBreakdown, Omittable<String?>? serviceType, }) { return IssuingTransactionFleetData(
  cardholderPromptData: cardholderPromptData ?? this.cardholderPromptData,
  purchaseType: purchaseType ?? this.purchaseType,
  reportedBreakdown: reportedBreakdown ?? this.reportedBreakdown,
  serviceType: serviceType ?? this.serviceType,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuingTransactionFleetData &&
          cardholderPromptData == other.cardholderPromptData &&
          purchaseType == other.purchaseType &&
          reportedBreakdown == other.reportedBreakdown &&
          serviceType == other.serviceType; } 
@override int get hashCode { return Object.hash(cardholderPromptData, purchaseType, reportedBreakdown, serviceType); } 
@override String toString() { return 'IssuingTransactionFleetData(cardholderPromptData: $cardholderPromptData, purchaseType: $purchaseType, reportedBreakdown: $reportedBreakdown, serviceType: $serviceType)'; } 
 }
