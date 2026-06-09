// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'campaigns_create_campaign_response503.dart';/// Error responses of `POST /orgs/{org}/campaigns`.
sealed class CampaignsCreateCampaignError {const CampaignsCreateCampaignError();

/// Parse the variant matching the response status code.
factory CampaignsCreateCampaignError.parse(ApiResponse response) { return switch (response.statusCode) {
  400 => CampaignsCreateCampaignError400.parse(response),
  404 => CampaignsCreateCampaignError404.parse(response),
  422 => CampaignsCreateCampaignError422.parse(response),
  429 => CampaignsCreateCampaignError429.parse(response),
  503 => CampaignsCreateCampaignError503.parse(response),
  _ => CampaignsCreateCampaignError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `400` response.
@immutable final class CampaignsCreateCampaignError400 extends CampaignsCreateCampaignError {const CampaignsCreateCampaignError400(this.data);

factory CampaignsCreateCampaignError400.parse(ApiResponse response) { return CampaignsCreateCampaignError400(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CampaignsCreateCampaignError400 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CampaignsCreateCampaignError400($data)'; } 
 }
/// The `404` response.
@immutable final class CampaignsCreateCampaignError404 extends CampaignsCreateCampaignError {const CampaignsCreateCampaignError404(this.data);

factory CampaignsCreateCampaignError404.parse(ApiResponse response) { return CampaignsCreateCampaignError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CampaignsCreateCampaignError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CampaignsCreateCampaignError404($data)'; } 
 }
/// The `422` response.
@immutable final class CampaignsCreateCampaignError422 extends CampaignsCreateCampaignError {const CampaignsCreateCampaignError422(this.data);

factory CampaignsCreateCampaignError422.parse(ApiResponse response) { return CampaignsCreateCampaignError422(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CampaignsCreateCampaignError422 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CampaignsCreateCampaignError422($data)'; } 
 }
/// The `429` response.
@immutable final class CampaignsCreateCampaignError429 extends CampaignsCreateCampaignError {const CampaignsCreateCampaignError429();

factory CampaignsCreateCampaignError429.parse(ApiResponse _) { return const CampaignsCreateCampaignError429(); }

@override bool operator ==(Object other) { return identical(this, other) || other is CampaignsCreateCampaignError429; } 
@override int get hashCode { return (CampaignsCreateCampaignError429).hashCode; } 
@override String toString() { return 'CampaignsCreateCampaignError429()'; } 
 }
/// The `503` response.
@immutable final class CampaignsCreateCampaignError503 extends CampaignsCreateCampaignError {const CampaignsCreateCampaignError503(this.data);

factory CampaignsCreateCampaignError503.parse(ApiResponse response) { return CampaignsCreateCampaignError503(CampaignsCreateCampaignResponse503.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final CampaignsCreateCampaignResponse503 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CampaignsCreateCampaignError503 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CampaignsCreateCampaignError503($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class CampaignsCreateCampaignError$Unknown extends CampaignsCreateCampaignError {const CampaignsCreateCampaignError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CampaignsCreateCampaignError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'CampaignsCreateCampaignError.unknown($statusCode)'; } 
 }
