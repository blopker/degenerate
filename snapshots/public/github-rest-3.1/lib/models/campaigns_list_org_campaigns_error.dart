// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'basic_error.dart';import 'campaigns_list_org_campaigns_response503.dart';/// Error responses of `GET /orgs/{org}/campaigns`.
sealed class CampaignsListOrgCampaignsError {const CampaignsListOrgCampaignsError();

/// Parse the variant matching the response status code.
factory CampaignsListOrgCampaignsError.parse(ApiResponse response) { return switch (response.statusCode) {
  404 => CampaignsListOrgCampaignsError404.parse(response),
  503 => CampaignsListOrgCampaignsError503.parse(response),
  _ => CampaignsListOrgCampaignsError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `404` response.
@immutable final class CampaignsListOrgCampaignsError404 extends CampaignsListOrgCampaignsError {const CampaignsListOrgCampaignsError404(this.data);

factory CampaignsListOrgCampaignsError404.parse(ApiResponse response) { return CampaignsListOrgCampaignsError404(BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final BasicError data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CampaignsListOrgCampaignsError404 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CampaignsListOrgCampaignsError404($data)'; } 
 }
/// The `503` response.
@immutable final class CampaignsListOrgCampaignsError503 extends CampaignsListOrgCampaignsError {const CampaignsListOrgCampaignsError503(this.data);

factory CampaignsListOrgCampaignsError503.parse(ApiResponse response) { return CampaignsListOrgCampaignsError503(CampaignsListOrgCampaignsResponse503.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final CampaignsListOrgCampaignsResponse503 data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CampaignsListOrgCampaignsError503 && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'CampaignsListOrgCampaignsError503($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class CampaignsListOrgCampaignsError$Unknown extends CampaignsListOrgCampaignsError {const CampaignsListOrgCampaignsError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is CampaignsListOrgCampaignsError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'CampaignsListOrgCampaignsError.unknown($statusCode)'; } 
 }
