// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'campaigns_update_campaign_response503.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class CampaignsUpdateCampaignError {const CampaignsUpdateCampaignError();

/// Decodes the payload for its declared status and content type.
static CampaignsUpdateCampaignError parse(ApiResponse response) {switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return CampaignsUpdateCampaignError400(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return CampaignsUpdateCampaignError404(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return CampaignsUpdateCampaignError422(BasicError.fromJson(json as Map<String, dynamic>));
case 503:
final json = jsonDecode(response.body);
return CampaignsUpdateCampaignError503(CampaignsUpdateCampaignResponse503.fromJson(json as Map<String, dynamic>));
default:
return CampaignsUpdateCampaignErrorUnknown(response);
}
}
}
/// Response for 400 (application/json).
final class CampaignsUpdateCampaignError400 extends CampaignsUpdateCampaignError {const CampaignsUpdateCampaignError400(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 404 (application/json).
final class CampaignsUpdateCampaignError404 extends CampaignsUpdateCampaignError {const CampaignsUpdateCampaignError404(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 422 (application/json).
final class CampaignsUpdateCampaignError422 extends CampaignsUpdateCampaignError {const CampaignsUpdateCampaignError422(this.data);

/// The decoded response payload.
final BasicError data;

}
/// Response for 503 (application/json).
final class CampaignsUpdateCampaignError503 extends CampaignsUpdateCampaignError {const CampaignsUpdateCampaignError503(this.data);

/// The decoded response payload.
final CampaignsUpdateCampaignResponse503 data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class CampaignsUpdateCampaignErrorUnknown extends CampaignsUpdateCampaignError {const CampaignsUpdateCampaignErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
