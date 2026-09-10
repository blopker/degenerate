// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'campaigns_get_campaign_summary_response503.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class CampaignsGetCampaignSummaryError {const CampaignsGetCampaignSummaryError();

/// Decodes the payload for its declared status and content type.
static CampaignsGetCampaignSummaryError parse(ApiResponse response) {switch (response.statusCode) {
case 404:
final json = jsonDecode(response.body);
return CampaignsGetCampaignSummaryError404(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return CampaignsGetCampaignSummaryError422(BasicError.fromJson(json as Map<String, dynamic>));
case 503:
final json = jsonDecode(response.body);
return CampaignsGetCampaignSummaryError503(CampaignsGetCampaignSummaryResponse503.fromJson(json as Map<String, dynamic>));
default:
return CampaignsGetCampaignSummaryErrorUnknown(response);
}
}
}
/// Response for 404 (application/json).
final class CampaignsGetCampaignSummaryError404 extends CampaignsGetCampaignSummaryError {const CampaignsGetCampaignSummaryError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class CampaignsGetCampaignSummaryError422 extends CampaignsGetCampaignSummaryError {const CampaignsGetCampaignSummaryError422(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 503 (application/json).
final class CampaignsGetCampaignSummaryError503 extends CampaignsGetCampaignSummaryError {const CampaignsGetCampaignSummaryError503(this.data);

/// The decoded response payload.
final CampaignsGetCampaignSummaryResponse503 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class CampaignsGetCampaignSummaryErrorUnknown extends CampaignsGetCampaignSummaryError {const CampaignsGetCampaignSummaryErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
