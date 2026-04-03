// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'issuing_transaction_fleet_data.dart';import 'issuing_transaction_flight_data.dart';import 'issuing_transaction_fuel_data.dart';import 'issuing_transaction_lodging_data.dart';import 'issuing_transaction_receipt_data.dart';/// 
@immutable final class IssuingTransactionPurchaseDetails {const IssuingTransactionPurchaseDetails({this.fleet, this.flight, this.fuel, this.lodging, this.receipt, this.reference, });

factory IssuingTransactionPurchaseDetails.fromJson(Map<String, dynamic> json) { return IssuingTransactionPurchaseDetails(
  fleet: json['fleet'] != null ? IssuingTransactionFleetData.fromJson(json['fleet'] as Map<String, dynamic>) : null,
  flight: json['flight'] != null ? IssuingTransactionFlightData.fromJson(json['flight'] as Map<String, dynamic>) : null,
  fuel: json['fuel'] != null ? IssuingTransactionFuelData.fromJson(json['fuel'] as Map<String, dynamic>) : null,
  lodging: json['lodging'] != null ? IssuingTransactionLodgingData.fromJson(json['lodging'] as Map<String, dynamic>) : null,
  receipt: (json['receipt'] as List<dynamic>?)?.map((e) => IssuingTransactionReceiptData.fromJson(e as Map<String, dynamic>)).toList(),
  reference: json['reference'] as String?,
); }

/// Fleet-specific information for transactions using Fleet cards.
final IssuingTransactionFleetData? fleet;

/// Information about the flight that was purchased with this transaction.
final IssuingTransactionFlightData? flight;

/// Information about fuel that was purchased with this transaction.
final IssuingTransactionFuelData? fuel;

/// Information about lodging that was purchased with this transaction.
final IssuingTransactionLodgingData? lodging;

/// The line items in the purchase.
final List<IssuingTransactionReceiptData>? receipt;

/// A merchant-specific order number.
final String? reference;

Map<String, dynamic> toJson() { return {
  if (fleet != null) 'fleet': fleet?.toJson(),
  if (flight != null) 'flight': flight?.toJson(),
  if (fuel != null) 'fuel': fuel?.toJson(),
  if (lodging != null) 'lodging': lodging?.toJson(),
  if (receipt != null) 'receipt': receipt?.map((e) => e.toJson()).toList(),
  'reference': ?reference,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'fleet', 'flight', 'fuel', 'lodging', 'receipt', 'reference'}.contains(key)); } 
IssuingTransactionPurchaseDetails copyWith({IssuingTransactionFleetData? Function()? fleet, IssuingTransactionFlightData? Function()? flight, IssuingTransactionFuelData? Function()? fuel, IssuingTransactionLodgingData? Function()? lodging, List<IssuingTransactionReceiptData>? Function()? receipt, String? Function()? reference, }) { return IssuingTransactionPurchaseDetails(
  fleet: fleet != null ? fleet() : this.fleet,
  flight: flight != null ? flight() : this.flight,
  fuel: fuel != null ? fuel() : this.fuel,
  lodging: lodging != null ? lodging() : this.lodging,
  receipt: receipt != null ? receipt() : this.receipt,
  reference: reference != null ? reference() : this.reference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuingTransactionPurchaseDetails &&
          fleet == other.fleet &&
          flight == other.flight &&
          fuel == other.fuel &&
          lodging == other.lodging &&
          listEquals(receipt, other.receipt) &&
          reference == other.reference; } 
@override int get hashCode { return Object.hash(fleet, flight, fuel, lodging, Object.hashAll(receipt ?? const []), reference); } 
@override String toString() { return 'IssuingTransactionPurchaseDetails(fleet: $fleet, flight: $flight, fuel: $fuel, lodging: $lodging, receipt: $receipt, reference: $reference)'; } 
 }
