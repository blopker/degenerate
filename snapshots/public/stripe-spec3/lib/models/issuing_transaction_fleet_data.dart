// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'issuing_transaction_fleet_cardholder_prompt_data.dart';import 'issuing_transaction_fleet_reported_breakdown.dart';/// 
@immutable final class IssuingTransactionFleetData {const IssuingTransactionFleetData({this.cardholderPromptData, this.purchaseType, this.reportedBreakdown, this.serviceType, });

factory IssuingTransactionFleetData.fromJson(Map<String, dynamic> json) { return IssuingTransactionFleetData(
  cardholderPromptData: json['cardholder_prompt_data'] != null ? IssuingTransactionFleetCardholderPromptData.fromJson(json['cardholder_prompt_data'] as Map<String, dynamic>) : null,
  purchaseType: json['purchase_type'] as String?,
  reportedBreakdown: json['reported_breakdown'] != null ? IssuingTransactionFleetReportedBreakdown.fromJson(json['reported_breakdown'] as Map<String, dynamic>) : null,
  serviceType: json['service_type'] as String?,
); }

/// Answers to prompts presented to cardholder at point of sale.
final IssuingTransactionFleetCardholderPromptData? cardholderPromptData;

/// The type of purchase. One of `fuel_purchase`, `non_fuel_purchase`, or `fuel_and_non_fuel_purchase`.
final String? purchaseType;

/// More information about the total amount. This information is not guaranteed to be accurate as some merchants may provide unreliable data.
final IssuingTransactionFleetReportedBreakdown? reportedBreakdown;

/// The type of fuel service. One of `non_fuel_transaction`, `full_service`, or `self_service`.
final String? serviceType;

Map<String, dynamic> toJson() { return {
  if (cardholderPromptData != null) 'cardholder_prompt_data': cardholderPromptData?.toJson(),
  'purchase_type': ?purchaseType,
  if (reportedBreakdown != null) 'reported_breakdown': reportedBreakdown?.toJson(),
  'service_type': ?serviceType,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'cardholder_prompt_data', 'purchase_type', 'reported_breakdown', 'service_type'}.contains(key)); } 
IssuingTransactionFleetData copyWith({IssuingTransactionFleetCardholderPromptData? Function()? cardholderPromptData, String? Function()? purchaseType, IssuingTransactionFleetReportedBreakdown? Function()? reportedBreakdown, String? Function()? serviceType, }) { return IssuingTransactionFleetData(
  cardholderPromptData: cardholderPromptData != null ? cardholderPromptData() : this.cardholderPromptData,
  purchaseType: purchaseType != null ? purchaseType() : this.purchaseType,
  reportedBreakdown: reportedBreakdown != null ? reportedBreakdown() : this.reportedBreakdown,
  serviceType: serviceType != null ? serviceType() : this.serviceType,
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
