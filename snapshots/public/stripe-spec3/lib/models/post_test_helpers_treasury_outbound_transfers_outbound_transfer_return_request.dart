// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_test_helpers_treasury_outbound_transfers_outbound_transfer_return_request_returned_details.dart';final class PostTestHelpersTreasuryOutboundTransfersOutboundTransferReturnRequest {const PostTestHelpersTreasuryOutboundTransfersOutboundTransferReturnRequest({this.expand, this.returnedDetails, });

factory PostTestHelpersTreasuryOutboundTransfersOutboundTransferReturnRequest.fromJson(Map<String, dynamic> json) { return PostTestHelpersTreasuryOutboundTransfersOutboundTransferReturnRequest(
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
  returnedDetails: json['returned_details'] != null ? PostTestHelpersTreasuryOutboundTransfersOutboundTransferReturnRequestReturnedDetails.fromJson(json['returned_details'] as Map<String, dynamic>) : null,
); }

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

/// Details about a returned OutboundTransfer.
final PostTestHelpersTreasuryOutboundTransfersOutboundTransferReturnRequestReturnedDetails? returnedDetails;

Map<String, dynamic> toJson() { return {
  'expand': ?expand,
  if (returnedDetails != null) 'returned_details': returnedDetails?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'expand', 'returned_details'}.contains(key)); } 
PostTestHelpersTreasuryOutboundTransfersOutboundTransferReturnRequest copyWith({List<String> Function()? expand, PostTestHelpersTreasuryOutboundTransfersOutboundTransferReturnRequestReturnedDetails Function()? returnedDetails, }) { return PostTestHelpersTreasuryOutboundTransfersOutboundTransferReturnRequest(
  expand: expand != null ? expand() : this.expand,
  returnedDetails: returnedDetails != null ? returnedDetails() : this.returnedDetails,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTestHelpersTreasuryOutboundTransfersOutboundTransferReturnRequest &&
          listEquals(expand, other.expand) &&
          returnedDetails == other.returnedDetails; } 
@override int get hashCode { return Object.hash(Object.hashAll(expand ?? const []), returnedDetails); } 
@override String toString() { return 'PostTestHelpersTreasuryOutboundTransfersOutboundTransferReturnRequest(expand: $expand, returnedDetails: $returnedDetails)'; } 
 }
