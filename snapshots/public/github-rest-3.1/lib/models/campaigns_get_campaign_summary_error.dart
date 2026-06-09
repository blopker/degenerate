// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'campaigns_get_campaign_summary_response503.dart';/// Error responses of `GET /orgs/{org}/campaigns/{campaign_number}`.
sealed class CampaignsGetCampaignSummaryError {const CampaignsGetCampaignSummaryError();

/// Parse the variant matching the response status code.
factory CampaignsGetCampaignSummaryError.parse(ApiResponse response) { return switch (response.statusCode) {
  404 => CampaignsGetCampaignSummaryError404.parse(response),
  422 => CampaignsGetCampaignSummaryError422.parse(response),
  503 => CampaignsGetCampaignSummaryError503.parse(response),
  _ => CampaignsGetCampaignSummaryError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `404` response.
@immutable final class CampaignsGetCampaignSummaryError404 extends CampaignsGetCampaignSummaryError {const CampaignsGetCampaignSummaryError404(this.data);

factory CampaignsGetCampaignSummaryError404.parse(ApiResponse response) { return CampaignsGetCampaignSummaryError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CampaignsGetCampaignSummaryError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CampaignsGetCampaignSummaryError404($data)'; } 
 }
/// The `422` response.
@immutable final class CampaignsGetCampaignSummaryError422 extends CampaignsGetCampaignSummaryError {const CampaignsGetCampaignSummaryError422(this.data);

factory CampaignsGetCampaignSummaryError422.parse(ApiResponse response) { return CampaignsGetCampaignSummaryError422(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CampaignsGetCampaignSummaryError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CampaignsGetCampaignSummaryError422($data)'; } 
 }
/// The `503` response.
@immutable final class CampaignsGetCampaignSummaryError503 extends CampaignsGetCampaignSummaryError {const CampaignsGetCampaignSummaryError503(this.data);

factory CampaignsGetCampaignSummaryError503.parse(ApiResponse response) { return CampaignsGetCampaignSummaryError503(CampaignsGetCampaignSummaryResponse503.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final CampaignsGetCampaignSummaryResponse503 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CampaignsGetCampaignSummaryError503 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CampaignsGetCampaignSummaryError503($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class CampaignsGetCampaignSummaryError$Unknown extends CampaignsGetCampaignSummaryError {const CampaignsGetCampaignSummaryError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CampaignsGetCampaignSummaryError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'CampaignsGetCampaignSummaryError.unknown($statusCode)'; } 
 }
