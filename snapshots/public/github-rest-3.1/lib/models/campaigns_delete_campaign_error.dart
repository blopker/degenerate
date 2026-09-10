// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'campaigns_delete_campaign_response503.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class CampaignsDeleteCampaignError {const CampaignsDeleteCampaignError();

/// Decodes the payload for its declared status and content type.
static CampaignsDeleteCampaignError parse(ApiResponse response) {switch (response.statusCode) {
case 404:
final json = jsonDecode(response.body);
return CampaignsDeleteCampaignError404(BasicError.fromJson(json as Map<String, dynamic>));
case 503:
final json = jsonDecode(response.body);
return CampaignsDeleteCampaignError503(CampaignsDeleteCampaignResponse503.fromJson(json as Map<String, dynamic>));
default:
return CampaignsDeleteCampaignErrorUnknown(response);
}
}
}
/// Response for 404 (application/json).
final class CampaignsDeleteCampaignError404 extends CampaignsDeleteCampaignError {const CampaignsDeleteCampaignError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 503 (application/json).
final class CampaignsDeleteCampaignError503 extends CampaignsDeleteCampaignError {const CampaignsDeleteCampaignError503(this.data);

/// The decoded response payload.
final CampaignsDeleteCampaignResponse503 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class CampaignsDeleteCampaignErrorUnknown extends CampaignsDeleteCampaignError {const CampaignsDeleteCampaignErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
