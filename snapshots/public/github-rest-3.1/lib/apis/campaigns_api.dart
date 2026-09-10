// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/basic_error.dart';import '../models/campaign_state.dart';import '../models/campaign_summary.dart';import '../models/campaigns_create_campaign_response503.dart';import '../models/campaigns_delete_campaign_response503.dart';import '../models/campaigns_get_campaign_summary_response503.dart';import '../models/campaigns_list_org_campaigns_direction.dart';import '../models/campaigns_list_org_campaigns_response503.dart';import '../models/campaigns_list_org_campaigns_sort.dart';import '../models/campaigns_update_campaign_request.dart';import '../models/campaigns_update_campaign_response503.dart';/// CampaignsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class CampaignsApi with ApiExecutor {const CampaignsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List campaigns for an organization
///
/// Lists campaigns in an organization.
/// 
/// The authenticated user must be an owner or security manager for the organization to use this endpoint.
/// 
/// OAuth app tokens and personal access tokens (classic) need the `security_events` scope to use this endpoint.
///
/// `GET /orgs/{org}/campaigns`
Future<ApiResult<List<CampaignSummary>, OneOf2<BasicError, CampaignsListOrgCampaignsResponse503>>> campaignsListOrgCampaigns({required String org, int? page, int? perPage, CampaignsListOrgCampaignsDirection? direction, CampaignState? state, CampaignsListOrgCampaignsSort? sort, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}
if (direction != null) {
  queryParameters['direction'] = direction.toJson();
}
if (state != null) {
  queryParameters['state'] = state.toJson();
}
if (sort != null) {
  queryParameters['sort'] = sort.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/orgs/${Uri.encodeComponent(org)}/campaigns',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return (json as List<dynamic>).map((e) => CampaignSummary.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case 404:
final json = jsonDecode(response.body);
return OneOf2<BasicError, CampaignsListOrgCampaignsResponse503>.a(BasicError.fromJson(json as Map<String, dynamic>));
case 503:
final json = jsonDecode(response.body);
return OneOf2<BasicError, CampaignsListOrgCampaignsResponse503>.b(CampaignsListOrgCampaignsResponse503.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
/// Create a campaign for an organization
///
/// Create a campaign for an organization.
/// 
/// The authenticated user must be an owner or security manager for the organization to use this endpoint.
/// 
/// OAuth app tokens and personal access tokens (classic) need the `security_events` scope to use this endpoint.
/// 
/// Fine-grained tokens must have the "Code scanning alerts" repository permissions (read) on all repositories included
/// in the campaign.
///
/// `POST /orgs/{org}/campaigns`
Future<ApiResult<CampaignSummary, OneOf2<BasicError, CampaignsCreateCampaignResponse503>>> campaignsCreateCampaign({required String org, required dynamic body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/orgs/${Uri.encodeComponent(org)}/campaigns',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return CampaignSummary.fromJson(json as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case 400 || 404 || 422:
final json = jsonDecode(response.body);
return OneOf2<BasicError, CampaignsCreateCampaignResponse503>.a(BasicError.fromJson(json as Map<String, dynamic>));
case 429:
return null;
case 503:
final json = jsonDecode(response.body);
return OneOf2<BasicError, CampaignsCreateCampaignResponse503>.b(CampaignsCreateCampaignResponse503.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
/// Get a campaign for an organization
///
/// Gets a campaign for an organization.
/// 
/// The authenticated user must be an owner or security manager for the organization to use this endpoint.
/// 
/// OAuth app tokens and personal access tokens (classic) need the `security_events` scope to use this endpoint.
///
/// `GET /orgs/{org}/campaigns/{campaign_number}`
Future<ApiResult<CampaignSummary, OneOf2<BasicError, CampaignsGetCampaignSummaryResponse503>>> campaignsGetCampaignSummary({required String org, required int campaignNumber, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/orgs/${Uri.encodeComponent(org)}/campaigns/${Uri.encodeComponent(campaignNumber.toString())}',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return CampaignSummary.fromJson(json as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case 404 || 422:
final json = jsonDecode(response.body);
return OneOf2<BasicError, CampaignsGetCampaignSummaryResponse503>.a(BasicError.fromJson(json as Map<String, dynamic>));
case 503:
final json = jsonDecode(response.body);
return OneOf2<BasicError, CampaignsGetCampaignSummaryResponse503>.b(CampaignsGetCampaignSummaryResponse503.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
/// Update a campaign
///
/// Updates a campaign in an organization.
/// 
/// The authenticated user must be an owner or security manager for the organization to use this endpoint.
/// 
/// OAuth app tokens and personal access tokens (classic) need the `security_events` scope to use this endpoint.
///
/// `PATCH /orgs/{org}/campaigns/{campaign_number}`
Future<ApiResult<CampaignSummary, OneOf2<BasicError, CampaignsUpdateCampaignResponse503>>> campaignsUpdateCampaign({required String org, required int campaignNumber, required CampaignsUpdateCampaignRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/orgs/${Uri.encodeComponent(org)}/campaigns/${Uri.encodeComponent(campaignNumber.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body);
return CampaignSummary.fromJson(json as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case 400 || 404 || 422:
final json = jsonDecode(response.body);
return OneOf2<BasicError, CampaignsUpdateCampaignResponse503>.a(BasicError.fromJson(json as Map<String, dynamic>));
case 503:
final json = jsonDecode(response.body);
return OneOf2<BasicError, CampaignsUpdateCampaignResponse503>.b(CampaignsUpdateCampaignResponse503.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
/// Delete a campaign for an organization
///
/// Deletes a campaign in an organization.
/// 
/// The authenticated user must be an owner or security manager for the organization to use this endpoint.
/// 
/// OAuth app tokens and personal access tokens (classic) need the `security_events` scope to use this endpoint.
///
/// `DELETE /orgs/{org}/campaigns/{campaign_number}`
Future<ApiResult<void, OneOf2<BasicError, CampaignsDeleteCampaignResponse503>>> campaignsDeleteCampaign({required String org, required int campaignNumber, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/orgs/${Uri.encodeComponent(org)}/campaigns/${Uri.encodeComponent(campaignNumber.toString())}',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (_) {},
  onError: (response) {
switch (response.statusCode) {
case 404:
final json = jsonDecode(response.body);
return OneOf2<BasicError, CampaignsDeleteCampaignResponse503>.a(BasicError.fromJson(json as Map<String, dynamic>));
case 503:
final json = jsonDecode(response.body);
return OneOf2<BasicError, CampaignsDeleteCampaignResponse503>.b(CampaignsDeleteCampaignResponse503.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
 }
