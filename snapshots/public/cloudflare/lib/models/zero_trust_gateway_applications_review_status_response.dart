// GENERATED CODE - DO NOT MODIFY BY HAND

import 'zero_trust_gateway_applications_review_status_response_content.dart';final class ZeroTrustGatewayApplicationsReviewStatusResponse {const ZeroTrustGatewayApplicationsReviewStatusResponse({this.result});

factory ZeroTrustGatewayApplicationsReviewStatusResponse.fromJson(Map<String, dynamic> json) { return ZeroTrustGatewayApplicationsReviewStatusResponse(
  result: json['result'] != null ? ZeroTrustGatewayApplicationsReviewStatusResponseContent.fromJson(json['result'] as Map<String, dynamic>) : null,
); }

final ZeroTrustGatewayApplicationsReviewStatusResponseContent? result;

Map<String, dynamic> toJson() { return {
  if (result != null) 'result': result?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'result'}.contains(key)); } 
ZeroTrustGatewayApplicationsReviewStatusResponse copyWith({ZeroTrustGatewayApplicationsReviewStatusResponseContent Function()? result}) { return ZeroTrustGatewayApplicationsReviewStatusResponse(
  result: result != null ? result() : this.result,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is ZeroTrustGatewayApplicationsReviewStatusResponse &&
          result == other.result; } 
@override int get hashCode { return result.hashCode; } 
@override String toString() { return 'ZeroTrustGatewayApplicationsReviewStatusResponse(result: $result)'; } 
 }
