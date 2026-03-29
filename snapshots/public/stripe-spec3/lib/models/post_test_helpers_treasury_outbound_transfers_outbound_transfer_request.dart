// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_test_helpers_treasury_outbound_transfers_outbound_transfer_request_tracking_details.dart';final class PostTestHelpersTreasuryOutboundTransfersOutboundTransferRequest {const PostTestHelpersTreasuryOutboundTransfersOutboundTransferRequest({this.expand, required this.trackingDetails, });

factory PostTestHelpersTreasuryOutboundTransfersOutboundTransferRequest.fromJson(Map<String, dynamic> json) { return PostTestHelpersTreasuryOutboundTransfersOutboundTransferRequest(
  expand: (json['expand'] as List<dynamic>?)?.map((e) => e as String).toList(),
  trackingDetails: PostTestHelpersTreasuryOutboundTransfersOutboundTransferRequestTrackingDetails.fromJson(json['tracking_details'] as Map<String, dynamic>),
); }

/// Specifies which fields in the response should be expanded.
final List<String>? expand;

/// Details about network-specific tracking information.
final PostTestHelpersTreasuryOutboundTransfersOutboundTransferRequestTrackingDetails trackingDetails;

Map<String, dynamic> toJson() { return {
  'expand': ?expand,
  'tracking_details': trackingDetails.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('tracking_details'); } 
PostTestHelpersTreasuryOutboundTransfersOutboundTransferRequest copyWith({List<String> Function()? expand, PostTestHelpersTreasuryOutboundTransfersOutboundTransferRequestTrackingDetails? trackingDetails, }) { return PostTestHelpersTreasuryOutboundTransfersOutboundTransferRequest(
  expand: expand != null ? expand() : this.expand,
  trackingDetails: trackingDetails ?? this.trackingDetails,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTestHelpersTreasuryOutboundTransfersOutboundTransferRequest &&
          listEquals(expand, other.expand) &&
          trackingDetails == other.trackingDetails; } 
@override int get hashCode { return Object.hash(Object.hashAll(expand ?? const []), trackingDetails); } 
@override String toString() { return 'PostTestHelpersTreasuryOutboundTransfersOutboundTransferRequest(expand: $expand, trackingDetails: $trackingDetails)'; } 
 }
