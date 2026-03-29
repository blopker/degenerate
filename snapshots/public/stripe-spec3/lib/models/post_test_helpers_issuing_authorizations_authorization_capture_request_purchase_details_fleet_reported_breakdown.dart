// GENERATED CODE - DO NOT MODIFY BY HAND

import 'post_test_helpers_issuing_authorizations_authorization_capture_request_purchase_details_fleet_reported_breakdown_fuel.dart';import 'post_test_helpers_issuing_authorizations_authorization_capture_request_purchase_details_fleet_reported_breakdown_non_fuel.dart';import 'post_test_helpers_issuing_authorizations_authorization_capture_request_purchase_details_fleet_reported_breakdown_tax.dart';final class PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFleetReportedBreakdown {const PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFleetReportedBreakdown({this.fuel, this.nonFuel, this.tax, });

factory PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFleetReportedBreakdown.fromJson(Map<String, dynamic> json) { return PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFleetReportedBreakdown(
  fuel: json['fuel'] != null ? PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFleetReportedBreakdownFuel.fromJson(json['fuel'] as Map<String, dynamic>) : null,
  nonFuel: json['non_fuel'] != null ? PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFleetReportedBreakdownNonFuel.fromJson(json['non_fuel'] as Map<String, dynamic>) : null,
  tax: json['tax'] != null ? PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFleetReportedBreakdownTax.fromJson(json['tax'] as Map<String, dynamic>) : null,
); }

final PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFleetReportedBreakdownFuel? fuel;

final PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFleetReportedBreakdownNonFuel? nonFuel;

final PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFleetReportedBreakdownTax? tax;

Map<String, dynamic> toJson() { return {
  if (fuel != null) 'fuel': fuel?.toJson(),
  if (nonFuel != null) 'non_fuel': nonFuel?.toJson(),
  if (tax != null) 'tax': tax?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFleetReportedBreakdown copyWith({PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFleetReportedBreakdownFuel Function()? fuel, PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFleetReportedBreakdownNonFuel Function()? nonFuel, PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFleetReportedBreakdownTax Function()? tax, }) { return PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFleetReportedBreakdown(
  fuel: fuel != null ? fuel() : this.fuel,
  nonFuel: nonFuel != null ? nonFuel() : this.nonFuel,
  tax: tax != null ? tax() : this.tax,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFleetReportedBreakdown &&
          fuel == other.fuel &&
          nonFuel == other.nonFuel &&
          tax == other.tax; } 
@override int get hashCode { return Object.hash(fuel, nonFuel, tax); } 
@override String toString() { return 'PostTestHelpersIssuingAuthorizationsAuthorizationCaptureRequestPurchaseDetailsFleetReportedBreakdown(fuel: $fuel, nonFuel: $nonFuel, tax: $tax)'; } 
 }
