// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_test_helpers_issuing_authorizations_authorization_capture_request_purchase_details_fleet_cardholder_prompt_data.dart';import 'post_test_helpers_issuing_authorizations_authorization_capture_request_purchase_details_fleet_reported_breakdown.dart';final class PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFleetPurchaseType {const PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFleetPurchaseType._(this.value);

factory PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFleetPurchaseType.fromJson(String json) { return switch (json) {
  'fuel_and_non_fuel_purchase' => fuelAndNonFuelPurchase,
  'fuel_purchase' => fuelPurchase,
  'non_fuel_purchase' => nonFuelPurchase,
  _ => PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFleetPurchaseType._(json),
}; }

static const PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFleetPurchaseType fuelAndNonFuelPurchase = PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFleetPurchaseType._('fuel_and_non_fuel_purchase');

static const PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFleetPurchaseType fuelPurchase = PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFleetPurchaseType._('fuel_purchase');

static const PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFleetPurchaseType nonFuelPurchase = PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFleetPurchaseType._('non_fuel_purchase');

static const List<PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFleetPurchaseType> values = [fuelAndNonFuelPurchase, fuelPurchase, nonFuelPurchase];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFleetPurchaseType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFleetPurchaseType($value)'; } 
 }
final class PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFleetServiceType {const PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFleetServiceType._(this.value);

factory PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFleetServiceType.fromJson(String json) { return switch (json) {
  'full_service' => fullService,
  'non_fuel_transaction' => nonFuelTransaction,
  'self_service' => selfService,
  _ => PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFleetServiceType._(json),
}; }

static const PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFleetServiceType fullService = PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFleetServiceType._('full_service');

static const PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFleetServiceType nonFuelTransaction = PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFleetServiceType._('non_fuel_transaction');

static const PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFleetServiceType selfService = PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFleetServiceType._('self_service');

static const List<PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFleetServiceType> values = [fullService, nonFuelTransaction, selfService];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFleetServiceType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFleetServiceType($value)'; } 
 }
final class PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFleet {const PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFleet({this.cardholderPromptData, this.purchaseType, this.reportedBreakdown, this.serviceType, });

factory PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFleet.fromJson(Map<String, dynamic> json) { return PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFleet(
  cardholderPromptData: json['cardholder_prompt_data'] != null ? PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFleetCardholderPromptData.fromJson(json['cardholder_prompt_data'] as Map<String, dynamic>) : null,
  purchaseType: json['purchase_type'] != null ? PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFleetPurchaseType.fromJson(json['purchase_type'] as String) : null,
  reportedBreakdown: json['reported_breakdown'] != null ? PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFleetReportedBreakdown.fromJson(json['reported_breakdown'] as Map<String, dynamic>) : null,
  serviceType: json['service_type'] != null ? PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFleetServiceType.fromJson(json['service_type'] as String) : null,
); }

final PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFleetCardholderPromptData? cardholderPromptData;

final PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFleetPurchaseType? purchaseType;

final PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFleetReportedBreakdown? reportedBreakdown;

final PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFleetServiceType? serviceType;

Map<String, dynamic> toJson() { return {
  if (cardholderPromptData != null) 'cardholder_prompt_data': cardholderPromptData?.toJson(),
  if (purchaseType != null) 'purchase_type': purchaseType?.toJson(),
  if (reportedBreakdown != null) 'reported_breakdown': reportedBreakdown?.toJson(),
  if (serviceType != null) 'service_type': serviceType?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFleet copyWith({PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFleetCardholderPromptData Function()? cardholderPromptData, PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFleetPurchaseType Function()? purchaseType, PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFleetReportedBreakdown Function()? reportedBreakdown, PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFleetServiceType Function()? serviceType, }) { return PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFleet(
  cardholderPromptData: cardholderPromptData != null ? cardholderPromptData() : this.cardholderPromptData,
  purchaseType: purchaseType != null ? purchaseType() : this.purchaseType,
  reportedBreakdown: reportedBreakdown != null ? reportedBreakdown() : this.reportedBreakdown,
  serviceType: serviceType != null ? serviceType() : this.serviceType,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFleet &&
          cardholderPromptData == other.cardholderPromptData &&
          purchaseType == other.purchaseType &&
          reportedBreakdown == other.reportedBreakdown &&
          serviceType == other.serviceType; } 
@override int get hashCode { return Object.hash(cardholderPromptData, purchaseType, reportedBreakdown, serviceType); } 
@override String toString() { return 'PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFleet(cardholderPromptData: $cardholderPromptData, purchaseType: $purchaseType, reportedBreakdown: $reportedBreakdown, serviceType: $serviceType)'; } 
 }
