// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'campaigns_list_org_campaigns_response503.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class CampaignsListOrgCampaignsError {const CampaignsListOrgCampaignsError();

/// Decodes the payload for its declared status and content type.
static CampaignsListOrgCampaignsError parse(ApiResponse response) {switch (response.statusCode) {
case 404:
final json = jsonDecode(response.body);
return CampaignsListOrgCampaignsError404(BasicError.fromJson(json as Map<String, dynamic>));
case 503:
final json = jsonDecode(response.body);
return CampaignsListOrgCampaignsError503(CampaignsListOrgCampaignsResponse503.fromJson(json as Map<String, dynamic>));
default:
return CampaignsListOrgCampaignsErrorUnknown(response);
}
}
}
/// Response for 404 (application/json).
final class CampaignsListOrgCampaignsError404 extends CampaignsListOrgCampaignsError {const CampaignsListOrgCampaignsError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 503 (application/json).
final class CampaignsListOrgCampaignsError503 extends CampaignsListOrgCampaignsError {const CampaignsListOrgCampaignsError503(this.data);

/// The decoded response payload.
final CampaignsListOrgCampaignsResponse503 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class CampaignsListOrgCampaignsErrorUnknown extends CampaignsListOrgCampaignsError {const CampaignsListOrgCampaignsErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
