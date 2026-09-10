// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'issuing_authorization_fleet_cardholder_prompt_data.dart';import 'issuing_authorization_fleet_reported_breakdown.dart';/// The type of purchase.
@immutable final class IssuingAuthorizationFleetDataPurchaseType {const IssuingAuthorizationFleetDataPurchaseType._(this.value);

factory IssuingAuthorizationFleetDataPurchaseType.fromJson(String json) { return switch (json) {
  'fuel_and_non_fuel_purchase' => fuelAndNonFuelPurchase,
  'fuel_purchase' => fuelPurchase,
  'non_fuel_purchase' => nonFuelPurchase,
  _ => IssuingAuthorizationFleetDataPurchaseType._(json),
}; }

static const IssuingAuthorizationFleetDataPurchaseType fuelAndNonFuelPurchase = IssuingAuthorizationFleetDataPurchaseType._('fuel_and_non_fuel_purchase');

static const IssuingAuthorizationFleetDataPurchaseType fuelPurchase = IssuingAuthorizationFleetDataPurchaseType._('fuel_purchase');

static const IssuingAuthorizationFleetDataPurchaseType nonFuelPurchase = IssuingAuthorizationFleetDataPurchaseType._('non_fuel_purchase');

static const List<IssuingAuthorizationFleetDataPurchaseType> values = [fuelAndNonFuelPurchase, fuelPurchase, nonFuelPurchase];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuingAuthorizationFleetDataPurchaseType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'IssuingAuthorizationFleetDataPurchaseType($value)'; } 
 }
/// The type of fuel service.
@immutable final class IssuingAuthorizationFleetDataServiceType {const IssuingAuthorizationFleetDataServiceType._(this.value);

factory IssuingAuthorizationFleetDataServiceType.fromJson(String json) { return switch (json) {
  'full_service' => fullService,
  'non_fuel_transaction' => nonFuelTransaction,
  'self_service' => selfService,
  _ => IssuingAuthorizationFleetDataServiceType._(json),
}; }

static const IssuingAuthorizationFleetDataServiceType fullService = IssuingAuthorizationFleetDataServiceType._('full_service');

static const IssuingAuthorizationFleetDataServiceType nonFuelTransaction = IssuingAuthorizationFleetDataServiceType._('non_fuel_transaction');

static const IssuingAuthorizationFleetDataServiceType selfService = IssuingAuthorizationFleetDataServiceType._('self_service');

static const List<IssuingAuthorizationFleetDataServiceType> values = [fullService, nonFuelTransaction, selfService];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is IssuingAuthorizationFleetDataServiceType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'IssuingAuthorizationFleetDataServiceType($value)'; } 
 }
/// 
@immutable final class IssuingAuthorizationFleetData {const IssuingAuthorizationFleetData({this.cardholderPromptData = const Omittable.absent(), this.purchaseType = const Omittable.absent(), this.reportedBreakdown = const Omittable.absent(), this.serviceType = const Omittable.absent(), });

factory IssuingAuthorizationFleetData.fromJson(Map<String, dynamic> json) { return IssuingAuthorizationFleetData(
  cardholderPromptData: json.containsKey('cardholder_prompt_data') ? Omittable(json['cardholder_prompt_data'] != null ? IssuingAuthorizationFleetCardholderPromptData.fromJson(json['cardholder_prompt_data'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  purchaseType: json.containsKey('purchase_type') ? Omittable(json['purchase_type'] != null ? IssuingAuthorizationFleetDataPurchaseType.fromJson(json['purchase_type'] as String) : null) : const Omittable.absent(),
  reportedBreakdown: json.containsKey('reported_breakdown') ? Omittable(json['reported_breakdown'] != null ? IssuingAuthorizationFleetReportedBreakdown.fromJson(json['reported_breakdown'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  serviceType: json.containsKey('service_type') ? Omittable(json['service_type'] != null ? IssuingAuthorizationFleetDataServiceType.fromJson(json['service_type'] as String) : null) : const Omittable.absent(),
); }

/// Answers to prompts presented to the cardholder at the point of sale. Prompted fields vary depending on the configuration of your physical fleet cards. Typical points of sale support only numeric entry.
final Omittable<IssuingAuthorizationFleetCardholderPromptData?> cardholderPromptData;

/// The type of purchase.
final Omittable<IssuingAuthorizationFleetDataPurchaseType?> purchaseType;

/// More information about the total amount. Typically this information is received from the merchant after the authorization has been approved and the fuel dispensed. This information is not guaranteed to be accurate as some merchants may provide unreliable data.
final Omittable<IssuingAuthorizationFleetReportedBreakdown?> reportedBreakdown;

/// The type of fuel service.
final Omittable<IssuingAuthorizationFleetDataServiceType?> serviceType;

Map<String, dynamic> toJson() { return {
  if (cardholderPromptData.isPresent) 'cardholder_prompt_data': cardholderPromptData.value?.toJson(),
  if (purchaseType.isPresent) 'purchase_type': purchaseType.value?.toJson(),
  if (reportedBreakdown.isPresent) 'reported_breakdown': reportedBreakdown.value?.toJson(),
  if (serviceType.isPresent) 'service_type': serviceType.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'cardholder_prompt_data', 'purchase_type', 'reported_breakdown', 'service_type'}.contains(key)); } 
IssuingAuthorizationFleetData copyWith({Omittable<IssuingAuthorizationFleetCardholderPromptData?>? cardholderPromptData, Omittable<IssuingAuthorizationFleetDataPurchaseType?>? purchaseType, Omittable<IssuingAuthorizationFleetReportedBreakdown?>? reportedBreakdown, Omittable<IssuingAuthorizationFleetDataServiceType?>? serviceType, }) { return IssuingAuthorizationFleetData(
  cardholderPromptData: cardholderPromptData ?? this.cardholderPromptData,
  purchaseType: purchaseType ?? this.purchaseType,
  reportedBreakdown: reportedBreakdown ?? this.reportedBreakdown,
  serviceType: serviceType ?? this.serviceType,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuingAuthorizationFleetData &&
          cardholderPromptData == other.cardholderPromptData &&
          purchaseType == other.purchaseType &&
          reportedBreakdown == other.reportedBreakdown &&
          serviceType == other.serviceType; } 
@override int get hashCode { return Object.hash(cardholderPromptData, purchaseType, reportedBreakdown, serviceType); } 
@override String toString() { return 'IssuingAuthorizationFleetData(cardholderPromptData: $cardholderPromptData, purchaseType: $purchaseType, reportedBreakdown: $reportedBreakdown, serviceType: $serviceType)'; } 
 }
