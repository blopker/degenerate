// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'campaigns_update_campaign_response503.dart';/// Error responses of `PATCH /orgs/{org}/campaigns/{campaign_number}`.
sealed class CampaignsUpdateCampaignError {const CampaignsUpdateCampaignError();

/// Parse the variant matching the response status code.
factory CampaignsUpdateCampaignError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => CampaignsUpdateCampaignError400.parse(response),
  404 => CampaignsUpdateCampaignError404.parse(response),
  422 => CampaignsUpdateCampaignError422.parse(response),
  503 => CampaignsUpdateCampaignError503.parse(response),
  _ => CampaignsUpdateCampaignError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class CampaignsUpdateCampaignError400 extends CampaignsUpdateCampaignError {const CampaignsUpdateCampaignError400(this.data);

factory CampaignsUpdateCampaignError400.parse(ApiResponse response) { return CampaignsUpdateCampaignError400(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CampaignsUpdateCampaignError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CampaignsUpdateCampaignError400($data)'; } 
 }
/// The `404` response.
@immutable final class CampaignsUpdateCampaignError404 extends CampaignsUpdateCampaignError {const CampaignsUpdateCampaignError404(this.data);

factory CampaignsUpdateCampaignError404.parse(ApiResponse response) { return CampaignsUpdateCampaignError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CampaignsUpdateCampaignError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CampaignsUpdateCampaignError404($data)'; } 
 }
/// The `422` response.
@immutable final class CampaignsUpdateCampaignError422 extends CampaignsUpdateCampaignError {const CampaignsUpdateCampaignError422(this.data);

factory CampaignsUpdateCampaignError422.parse(ApiResponse response) { return CampaignsUpdateCampaignError422(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CampaignsUpdateCampaignError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CampaignsUpdateCampaignError422($data)'; } 
 }
/// The `503` response.
@immutable final class CampaignsUpdateCampaignError503 extends CampaignsUpdateCampaignError {const CampaignsUpdateCampaignError503(this.data);

factory CampaignsUpdateCampaignError503.parse(ApiResponse response) { return CampaignsUpdateCampaignError503(CampaignsUpdateCampaignResponse503.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final CampaignsUpdateCampaignResponse503 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CampaignsUpdateCampaignError503 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CampaignsUpdateCampaignError503($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class CampaignsUpdateCampaignError$Unknown extends CampaignsUpdateCampaignError {const CampaignsUpdateCampaignError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CampaignsUpdateCampaignError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'CampaignsUpdateCampaignError.unknown($statusCode)'; } 
 }
