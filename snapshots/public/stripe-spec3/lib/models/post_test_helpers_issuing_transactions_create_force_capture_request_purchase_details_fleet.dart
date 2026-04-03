// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_test_helpers_issuing_transactions_create_force_capture_request_purchase_details_fleet_cardholder_prompt_data.dart';import 'post_test_helpers_issuing_transactions_create_force_capture_request_purchase_details_fleet_reported_breakdown.dart';@immutable final class PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFleetPurchaseType {const PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFleetPurchaseType._(this.value);

factory PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFleetPurchaseType.fromJson(String json) { return switch (json) {
  'fuel_and_non_fuel_purchase' => fuelAndNonFuelPurchase,
  'fuel_purchase' => fuelPurchase,
  'non_fuel_purchase' => nonFuelPurchase,
  _ => PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFleetPurchaseType._(json),
}; }

static const PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFleetPurchaseType fuelAndNonFuelPurchase = PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFleetPurchaseType._('fuel_and_non_fuel_purchase');

static const PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFleetPurchaseType fuelPurchase = PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFleetPurchaseType._('fuel_purchase');

static const PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFleetPurchaseType nonFuelPurchase = PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFleetPurchaseType._('non_fuel_purchase');

static const List<PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFleetPurchaseType> values = [fuelAndNonFuelPurchase, fuelPurchase, nonFuelPurchase];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFleetPurchaseType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFleetPurchaseType($value)'; } 
 }
@immutable final class PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFleetServiceType {const PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFleetServiceType._(this.value);

factory PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFleetServiceType.fromJson(String json) { return switch (json) {
  'full_service' => fullService,
  'non_fuel_transaction' => nonFuelTransaction,
  'self_service' => selfService,
  _ => PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFleetServiceType._(json),
}; }

static const PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFleetServiceType fullService = PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFleetServiceType._('full_service');

static const PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFleetServiceType nonFuelTransaction = PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFleetServiceType._('non_fuel_transaction');

static const PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFleetServiceType selfService = PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFleetServiceType._('self_service');

static const List<PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFleetServiceType> values = [fullService, nonFuelTransaction, selfService];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFleetServiceType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFleetServiceType($value)'; } 
 }
@immutable final class PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFleet {const PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFleet({this.cardholderPromptData, this.purchaseType, this.reportedBreakdown, this.serviceType, });

factory PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFleet.fromJson(Map<String, dynamic> json) { return PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFleet(
  cardholderPromptData: json['cardholder_prompt_data'] != null ? PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFleetCardholderPromptData.fromJson(json['cardholder_prompt_data'] as Map<String, dynamic>) : null,
  purchaseType: json['purchase_type'] != null ? PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFleetPurchaseType.fromJson(json['purchase_type'] as String) : null,
  reportedBreakdown: json['reported_breakdown'] != null ? PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFleetReportedBreakdown.fromJson(json['reported_breakdown'] as Map<String, dynamic>) : null,
  serviceType: json['service_type'] != null ? PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFleetServiceType.fromJson(json['service_type'] as String) : null,
); }

final PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFleetCardholderPromptData? cardholderPromptData;

final PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFleetPurchaseType? purchaseType;

final PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFleetReportedBreakdown? reportedBreakdown;

final PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFleetServiceType? serviceType;

Map<String, dynamic> toJson() { return {
  if (cardholderPromptData != null) 'cardholder_prompt_data': cardholderPromptData?.toJson(),
  if (purchaseType != null) 'purchase_type': purchaseType?.toJson(),
  if (reportedBreakdown != null) 'reported_breakdown': reportedBreakdown?.toJson(),
  if (serviceType != null) 'service_type': serviceType?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'cardholder_prompt_data', 'purchase_type', 'reported_breakdown', 'service_type'}.contains(key)); } 
PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFleet copyWith({PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFleetCardholderPromptData Function()? cardholderPromptData, PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFleetPurchaseType Function()? purchaseType, PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFleetReportedBreakdown Function()? reportedBreakdown, PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFleetServiceType Function()? serviceType, }) { return PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFleet(
  cardholderPromptData: cardholderPromptData != null ? cardholderPromptData() : this.cardholderPromptData,
  purchaseType: purchaseType != null ? purchaseType() : this.purchaseType,
  reportedBreakdown: reportedBreakdown != null ? reportedBreakdown() : this.reportedBreakdown,
  serviceType: serviceType != null ? serviceType() : this.serviceType,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFleet &&
          cardholderPromptData == other.cardholderPromptData &&
          purchaseType == other.purchaseType &&
          reportedBreakdown == other.reportedBreakdown &&
          serviceType == other.serviceType; } 
@override int get hashCode { return Object.hash(cardholderPromptData, purchaseType, reportedBreakdown, serviceType); } 
@override String toString() { return 'PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFleet(cardholderPromptData: $cardholderPromptData, purchaseType: $purchaseType, reportedBreakdown: $reportedBreakdown, serviceType: $serviceType)'; } 
 }
