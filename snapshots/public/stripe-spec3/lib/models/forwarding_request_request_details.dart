// GENERATED CODE - DO NOT MODIFY BY HAND

import 'forwarded_request_details.dart';/// The request that was sent to the destination endpoint. We redact any sensitive fields.
final class ForwardingRequestRequestDetails {const ForwardingRequestRequestDetails({this.forwardedRequestDetails});

factory ForwardingRequestRequestDetails.fromJson(Map<String, dynamic> json) { return ForwardingRequestRequestDetails(
  forwardedRequestDetails: ForwardedRequestDetails.canParse(json) ? ForwardedRequestDetails.fromJson(json) : null,
); }

final ForwardedRequestDetails? forwardedRequestDetails;

/// At least one variant must be present.
bool get isValid { return forwardedRequestDetails != null; } 
Map<String, dynamic> toJson() { return {
  ...?forwardedRequestDetails?.toJson(),
}; } 
 }
