// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'campaigns_delete_campaign_response503.dart';/// Error responses of `DELETE /orgs/{org}/campaigns/{campaign_number}`.
sealed class CampaignsDeleteCampaignError {const CampaignsDeleteCampaignError();

/// Parse the variant matching the response status code.
factory CampaignsDeleteCampaignError.parse(ApiResponse response) { return switch (response.statusCode) {
  404 => CampaignsDeleteCampaignError404.parse(response),
  503 => CampaignsDeleteCampaignError503.parse(response),
  _ => CampaignsDeleteCampaignError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `404` response.
@immutable final class CampaignsDeleteCampaignError404 extends CampaignsDeleteCampaignError {const CampaignsDeleteCampaignError404(this.data);

factory CampaignsDeleteCampaignError404.parse(ApiResponse response) { return CampaignsDeleteCampaignError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CampaignsDeleteCampaignError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CampaignsDeleteCampaignError404($data)'; } 
 }
/// The `503` response.
@immutable final class CampaignsDeleteCampaignError503 extends CampaignsDeleteCampaignError {const CampaignsDeleteCampaignError503(this.data);

factory CampaignsDeleteCampaignError503.parse(ApiResponse response) { return CampaignsDeleteCampaignError503(CampaignsDeleteCampaignResponse503.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final CampaignsDeleteCampaignResponse503 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CampaignsDeleteCampaignError503 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CampaignsDeleteCampaignError503($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class CampaignsDeleteCampaignError$Unknown extends CampaignsDeleteCampaignError {const CampaignsDeleteCampaignError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CampaignsDeleteCampaignError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'CampaignsDeleteCampaignError.unknown($statusCode)'; } 
 }
