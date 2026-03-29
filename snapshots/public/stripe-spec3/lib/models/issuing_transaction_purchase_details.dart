// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'issuing_transaction_purchase_details_fleet.dart';import 'issuing_transaction_purchase_details_flight.dart';import 'issuing_transaction_purchase_details_fuel.dart';import 'issuing_transaction_purchase_details_lodging.dart';import 'issuing_transaction_receipt_data.dart';/// 
final class IssuingTransactionPurchaseDetails {const IssuingTransactionPurchaseDetails({this.fleet, this.flight, this.fuel, this.lodging, this.receipt, this.reference, });

factory IssuingTransactionPurchaseDetails.fromJson(Map<String, dynamic> json) { return IssuingTransactionPurchaseDetails(
  fleet: json['fleet'] != null ? IssuingTransactionPurchaseDetailsFleet.fromJson(json['fleet'] as Map<String, dynamic>) : null,
  flight: json['flight'] != null ? IssuingTransactionPurchaseDetailsFlight.fromJson(json['flight'] as Map<String, dynamic>) : null,
  fuel: json['fuel'] != null ? IssuingTransactionPurchaseDetailsFuel.fromJson(json['fuel'] as Map<String, dynamic>) : null,
  lodging: json['lodging'] != null ? IssuingTransactionPurchaseDetailsLodging.fromJson(json['lodging'] as Map<String, dynamic>) : null,
  receipt: (json['receipt'] as List<dynamic>?)?.map((e) => IssuingTransactionReceiptData.fromJson(e as Map<String, dynamic>)).toList(),
  reference: json['reference'] as String?,
); }

/// Fleet-specific information for transactions using Fleet cards.
final IssuingTransactionPurchaseDetailsFleet? fleet;

/// Information about the flight that was purchased with this transaction.
final IssuingTransactionPurchaseDetailsFlight? flight;

/// Information about fuel that was purchased with this transaction.
final IssuingTransactionPurchaseDetailsFuel? fuel;

/// Information about lodging that was purchased with this transaction.
final IssuingTransactionPurchaseDetailsLodging? lodging;

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
static bool canParse(Map<String, dynamic> json) { return true; } 
IssuingTransactionPurchaseDetails copyWith({IssuingTransactionPurchaseDetailsFleet? Function()? fleet, IssuingTransactionPurchaseDetailsFlight? Function()? flight, IssuingTransactionPurchaseDetailsFuel? Function()? fuel, IssuingTransactionPurchaseDetailsLodging? Function()? lodging, List<IssuingTransactionReceiptData>? Function()? receipt, String? Function()? reference, }) { return IssuingTransactionPurchaseDetails(
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
