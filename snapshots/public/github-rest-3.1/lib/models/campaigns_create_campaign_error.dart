// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'campaigns_create_campaign_response503.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class CampaignsCreateCampaignError {const CampaignsCreateCampaignError();

/// Decodes the payload for its declared status and content type.
static CampaignsCreateCampaignError parse(ApiResponse response) { switch (response.statusCode) {
case 400:
final json = jsonDecode(response.body);
return CampaignsCreateCampaignError400(BasicError.fromJson(json as Map<String, dynamic>));
case 404:
final json = jsonDecode(response.body);
return CampaignsCreateCampaignError404(BasicError.fromJson(json as Map<String, dynamic>));
case 422:
final json = jsonDecode(response.body);
return CampaignsCreateCampaignError422(BasicError.fromJson(json as Map<String, dynamic>));
case 429:
return const CampaignsCreateCampaignError429();
case 503:
final json = jsonDecode(response.body);
return CampaignsCreateCampaignError503(CampaignsCreateCampaignResponse503.fromJson(json as Map<String, dynamic>));
default:
return CampaignsCreateCampaignErrorUnknown(response);
}
 } 
 }
/// Response for 400 (application/json).
final class CampaignsCreateCampaignError400 extends CampaignsCreateCampaignError {const CampaignsCreateCampaignError400(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 404 (application/json).
final class CampaignsCreateCampaignError404 extends CampaignsCreateCampaignError {const CampaignsCreateCampaignError404(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 422 (application/json).
final class CampaignsCreateCampaignError422 extends CampaignsCreateCampaignError {const CampaignsCreateCampaignError422(this.data);

/// The decoded response payload.
final BasicError data;

 }
/// Response for 429.
final class CampaignsCreateCampaignError429 extends CampaignsCreateCampaignError {const CampaignsCreateCampaignError429();

 }
/// Response for 503 (application/json).
final class CampaignsCreateCampaignError503 extends CampaignsCreateCampaignError {const CampaignsCreateCampaignError503(this.data);

/// The decoded response payload.
final CampaignsCreateCampaignResponse503 data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class CampaignsCreateCampaignErrorUnknown extends CampaignsCreateCampaignError {const CampaignsCreateCampaignErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
