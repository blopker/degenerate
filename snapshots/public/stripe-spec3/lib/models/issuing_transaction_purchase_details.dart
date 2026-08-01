// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'issuing_transaction_fleet_data.dart';import 'issuing_transaction_flight_data.dart';import 'issuing_transaction_fuel_data.dart';import 'issuing_transaction_lodging_data.dart';import 'issuing_transaction_receipt_data.dart';/// 
@immutable final class IssuingTransactionPurchaseDetails {const IssuingTransactionPurchaseDetails({this.fleet = const Omittable.absent(), this.flight = const Omittable.absent(), this.fuel = const Omittable.absent(), this.lodging = const Omittable.absent(), this.receipt = const Omittable.absent(), this.reference = const Omittable.absent(), });

factory IssuingTransactionPurchaseDetails.fromJson(Map<String, dynamic> json) { return IssuingTransactionPurchaseDetails(
  fleet: json.containsKey('fleet') ? Omittable(json['fleet'] != null ? IssuingTransactionFleetData.fromJson(json['fleet'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  flight: json.containsKey('flight') ? Omittable(json['flight'] != null ? IssuingTransactionFlightData.fromJson(json['flight'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  fuel: json.containsKey('fuel') ? Omittable(json['fuel'] != null ? IssuingTransactionFuelData.fromJson(json['fuel'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  lodging: json.containsKey('lodging') ? Omittable(json['lodging'] != null ? IssuingTransactionLodgingData.fromJson(json['lodging'] as Map<String, dynamic>) : null) : const Omittable.absent(),
  receipt: json.containsKey('receipt') ? Omittable((json['receipt'] as List<dynamic>?)?.map((e) => IssuingTransactionReceiptData.fromJson(e as Map<String, dynamic>)).toList()) : const Omittable.absent(),
  reference: json.containsKey('reference') ? Omittable(json['reference'] as String?) : const Omittable.absent(),
); }

/// Fleet-specific information for transactions using Fleet cards.
final Omittable<IssuingTransactionFleetData?> fleet;

/// Information about the flight that was purchased with this transaction.
final Omittable<IssuingTransactionFlightData?> flight;

/// Information about fuel that was purchased with this transaction.
final Omittable<IssuingTransactionFuelData?> fuel;

/// Information about lodging that was purchased with this transaction.
final Omittable<IssuingTransactionLodgingData?> lodging;

/// The line items in the purchase.
final Omittable<List<IssuingTransactionReceiptData>?> receipt;

/// A merchant-specific order number.
final Omittable<String?> reference;

Map<String, dynamic> toJson() { return {
  if (fleet.isPresent) 'fleet': fleet.value?.toJson(),
  if (flight.isPresent) 'flight': flight.value?.toJson(),
  if (fuel.isPresent) 'fuel': fuel.value?.toJson(),
  if (lodging.isPresent) 'lodging': lodging.value?.toJson(),
  if (receipt.isPresent) 'receipt': receipt.value?.map((e) => e.toJson()).toList(),
  if (reference.isPresent) 'reference': reference.value,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'fleet', 'flight', 'fuel', 'lodging', 'receipt', 'reference'}.contains(key)); } 
IssuingTransactionPurchaseDetails copyWith({Omittable<IssuingTransactionFleetData?>? fleet, Omittable<IssuingTransactionFlightData?>? flight, Omittable<IssuingTransactionFuelData?>? fuel, Omittable<IssuingTransactionLodgingData?>? lodging, Omittable<List<IssuingTransactionReceiptData>?>? receipt, Omittable<String?>? reference, }) { return IssuingTransactionPurchaseDetails(
  fleet: fleet ?? this.fleet,
  flight: flight ?? this.flight,
  fuel: fuel ?? this.fuel,
  lodging: lodging ?? this.lodging,
  receipt: receipt ?? this.receipt,
  reference: reference ?? this.reference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is IssuingTransactionPurchaseDetails &&
          fleet == other.fleet &&
          flight == other.flight &&
          fuel == other.fuel &&
          lodging == other.lodging &&
          receipt.isPresent == other.receipt.isPresent &&
          listEquals(receipt.value, other.receipt.value) &&
          reference == other.reference; } 
@override int get hashCode { return Object.hash(fleet, flight, fuel, lodging, Object.hashAll(receipt.value ?? const []), reference); } 
@override String toString() { return 'IssuingTransactionPurchaseDetails(fleet: $fleet, flight: $flight, fuel: $fuel, lodging: $lodging, receipt: $receipt, reference: $reference)'; } 
 }
