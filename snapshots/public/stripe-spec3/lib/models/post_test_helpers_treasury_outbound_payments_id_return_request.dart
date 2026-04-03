// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_test_helpers_treasury_outbound_payments_id_return_request_returned_details.dart';@immutable final class PostTestHelpersTreasuryOutboundPaymentsIdReturnRequest {const PostTestHelpersTreasuryOutboundPaymentsIdReturnRequest({this.expand, this.returnedDetails, });

factory PostTestHelpersTreasuryOutboundPaymentsIdReturnRequest.fromJson(Map<String, dynamic> json) { return PostTestHelpersTreasuryOutboundPaymentsIdReturnRequest(
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
  returnedDetails: json['returned_details'] != null ? PostTestHelpersTreasuryOutboundPaymentsIdReturnRequestReturnedDetails.fromJson(json['returned_details'] as Map<String, dynamic>) : null,
); }

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

/// Optional hash to set the return code.
final PostTestHelpersTreasuryOutboundPaymentsIdReturnRequestReturnedDetails? returnedDetails;

Map<String, dynamic> toJson() { return {
  'expand': ?expand,
  if (returnedDetails != null) 'returned_details': returnedDetails?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'expand', 'returned_details'}.contains(key)); } 
PostTestHelpersTreasuryOutboundPaymentsIdReturnRequest copyWith({List<String> Function()? expand, PostTestHelpersTreasuryOutboundPaymentsIdReturnRequestReturnedDetails Function()? returnedDetails, }) { return PostTestHelpersTreasuryOutboundPaymentsIdReturnRequest(
  expand: expand != null ? expand() : this.expand,
  returnedDetails: returnedDetails != null ? returnedDetails() : this.returnedDetails,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTestHelpersTreasuryOutboundPaymentsIdReturnRequest &&
          listEquals(expand, other.expand) &&
          returnedDetails == other.returnedDetails; } 
@override int get hashCode { return Object.hash(Object.hashAll(expand ?? const []), returnedDetails); } 
@override String toString() { return 'PostTestHelpersTreasuryOutboundPaymentsIdReturnRequest(expand: $expand, returnedDetails: $returnedDetails)'; } 
 }
