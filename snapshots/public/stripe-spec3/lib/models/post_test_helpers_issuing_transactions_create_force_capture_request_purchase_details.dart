// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_test_helpers_issuing_transactions_create_force_capture_request_purchase_details_fleet.dart';import 'post_test_helpers_issuing_transactions_create_force_capture_request_purchase_details_flight.dart';import 'post_test_helpers_issuing_transactions_create_force_capture_request_purchase_details_fuel.dart';import 'post_test_helpers_issuing_transactions_create_force_capture_request_purchase_details_lodging.dart';import 'post_test_helpers_issuing_transactions_create_force_capture_request_purchase_details_receipt.dart';/// Additional purchase information that is optionally provided by the merchant.
@immutable final class PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetails {const PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetails({this.fleet, this.flight, this.fuel, this.lodging, this.receipt, this.reference, });

factory PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetails.fromJson(Map<String, dynamic> json) { return PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetails(
  fleet: json['fleet'] != null ? PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFleet.fromJson(json['fleet'] as Map<String, dynamic>) : null,
  flight: json['flight'] != null ? PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFlight.fromJson(json['flight'] as Map<String, dynamic>) : null,
  fuel: json['fuel'] != null ? PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFuel.fromJson(json['fuel'] as Map<String, dynamic>) : null,
  lodging: json['lodging'] != null ? PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsLodging.fromJson(json['lodging'] as Map<String, dynamic>) : null,
  receipt: (json['receipt'] as List<dynamic>?)?.map((e) => PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsReceipt.fromJson(e as Map<String, dynamic>)).toList(),
  reference: json['reference'] as String?,
); }

final PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFleet? fleet;

final PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFlight? flight;

final PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFuel? fuel;

final PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsLodging? lodging;

final List<PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsReceipt>? receipt;

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
PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetails copyWith({PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFleet Function()? fleet, PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFlight Function()? flight, PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsFuel Function()? fuel, PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsLodging Function()? lodging, List<PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetailsReceipt> Function()? receipt, String Function()? reference, }) { return PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetails(
  fleet: fleet != null ? fleet() : this.fleet,
  flight: flight != null ? flight() : this.flight,
  fuel: fuel != null ? fuel() : this.fuel,
  lodging: lodging != null ? lodging() : this.lodging,
  receipt: receipt != null ? receipt() : this.receipt,
  reference: reference != null ? reference() : this.reference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetails &&
          fleet == other.fleet &&
          flight == other.flight &&
          fuel == other.fuel &&
          lodging == other.lodging &&
          listEquals(receipt, other.receipt) &&
          reference == other.reference; } 
@override int get hashCode { return Object.hash(fleet, flight, fuel, lodging, Object.hashAll(receipt ?? const []), reference); } 
@override String toString() { return 'PostTestHelpersIssuingTransactionsCreateForceCaptureRequestPurchaseDetails(fleet: $fleet, flight: $flight, fuel: $fuel, lodging: $lodging, receipt: $receipt, reference: $reference)'; } 
 }
