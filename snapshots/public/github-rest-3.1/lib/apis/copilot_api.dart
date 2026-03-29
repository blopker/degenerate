// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/basic_error.dart';import '../models/copilot_add_copilot_seats_for_teams_request.dart';import '../models/copilot_add_copilot_seats_for_teams_response.dart';import '../models/copilot_add_copilot_seats_for_users_request.dart';import '../models/copilot_add_copilot_seats_for_users_response.dart';import '../models/copilot_cancel_copilot_seat_assignment_for_teams_request.dart';import '../models/copilot_cancel_copilot_seat_assignment_for_teams_response.dart';import '../models/copilot_cancel_copilot_seat_assignment_for_users_request.dart';import '../models/copilot_cancel_copilot_seat_assignment_for_users_response.dart';import '../models/copilot_list_copilot_seats_response.dart';import '../models/copilot_organization_details.dart';import '../models/copilot_seat_details.dart';import '../models/copilot_set_copilot_content_exclusion_for_organization_request_value.dart';import '../models/copilot_set_copilot_content_exclusion_for_organization_response.dart';import '../models/copilot_usage_metrics_day.dart';/// CopilotApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class CopilotApi with ApiExecutor {const CopilotApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get Copilot seat information and settings for an organization
///
/// > [!NOTE]
/// > This endpoint is in public preview and is subject to change.
/// 
/// Gets information about an organization's Copilot subscription, including seat breakdown
/// and feature policies. To configure these settings, go to your organization's settings on GitHub.com.
/// For more information, see "[Managing policies for Copilot in your organization](https://docs.github.com/copilot/managing-copilot/managing-policies-for-copilot-business-in-your-organization)."
/// 
/// Only organization owners can view details about the organization's Copilot Business or Copilot Enterprise subscription.
/// 
/// OAuth app tokens and personal access tokens (classic) need either the `manage_billing:copilot` or `read:org` scopes to use this endpoint.
///
/// `GET /orgs/{org}/copilot/billing`
Future<ApiResult<CopilotOrganizationDetails, BasicError>> copilotGetCopilotOrganizationDetails({required String org, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/orgs/${Uri.encodeComponent(org)}/copilot/billing',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return CopilotOrganizationDetails.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// List all Copilot seat assignments for an organization
///
/// > [!NOTE]
/// > This endpoint is in public preview and is subject to change.
/// 
/// Lists all Copilot seats for which an organization with a Copilot Business or Copilot Enterprise subscription is currently being billed.
/// Only organization owners can view assigned seats.
/// 
/// Each seat object contains information about the assigned user's most recent Copilot activity. Users must have telemetry enabled in their IDE for Copilot in the IDE activity to be reflected in `last_activity_at`.
/// For more information about activity data, see [Metrics data properties for GitHub Copilot](https://docs.github.com/copilot/reference/metrics-data).
/// 
/// OAuth app tokens and personal access tokens (classic) need either the `manage_billing:copilot` or `read:org` scopes to use this endpoint.
///
/// `GET /orgs/{org}/copilot/billing/seats`
Future<ApiResult<CopilotListCopilotSeatsResponse, BasicError>> copilotListCopilotSeats({required String org, int? page, int? perPage, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (page != null) queryParameters['page'] = page.toString();
if (perPage != null) queryParameters['per_page'] = perPage.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/orgs/${Uri.encodeComponent(org)}/copilot/billing/seats',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return CopilotListCopilotSeatsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Add teams to the Copilot subscription for an organization
///
/// > [!NOTE]
/// > This endpoint is in public preview and is subject to change.
/// 
/// Purchases a GitHub Copilot seat for all users within each specified team.
/// The organization will be billed for each seat based on the organization's Copilot plan. For more information about Copilot pricing, see "[About billing for GitHub Copilot in your organization](https://docs.github.com/copilot/managing-copilot/managing-github-copilot-in-your-organization/managing-the-copilot-subscription-for-your-organization/about-billing-for-github-copilot-in-your-organization)."
/// 
/// Only organization owners can purchase Copilot seats for their organization members. The organization must have a Copilot Business or Copilot Enterprise subscription and a configured suggestion matching policy.
/// For more information about setting up a Copilot subscription, see "[Subscribing to Copilot for your organization](https://docs.github.com/copilot/managing-copilot/managing-github-copilot-in-your-organization/managing-the-copilot-subscription-for-your-organization/subscribing-to-copilot-for-your-organization)."
/// For more information about setting a suggestion matching policy, see "[Managing policies for Copilot in your organization](https://docs.github.com/copilot/managing-copilot/managing-github-copilot-in-your-organization/setting-policies-for-copilot-in-your-organization/managing-policies-for-copilot-in-your-organization#policies-for-suggestion-matching)."
/// 
/// The response contains the total number of new seats that were created and existing seats that were refreshed.
/// 
/// OAuth app tokens and personal access tokens (classic) need either the `manage_billing:copilot` or `admin:org` scopes to use this endpoint.
///
/// `POST /orgs/{org}/copilot/billing/selected_teams`
Future<ApiResult<CopilotAddCopilotSeatsForTeamsResponse, BasicError>> copilotAddCopilotSeatsForTeams({required String org, required CopilotAddCopilotSeatsForTeamsRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/orgs/${Uri.encodeComponent(org)}/copilot/billing/selected_teams',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return CopilotAddCopilotSeatsForTeamsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Remove teams from the Copilot subscription for an organization
///
/// > [!NOTE]
/// > This endpoint is in public preview and is subject to change.
/// 
/// Sets seats for all members of each team specified to "pending cancellation".
/// This will cause the members of the specified team(s) to lose access to GitHub Copilot at the end of the current billing cycle unless they retain access through another team.
/// For more information about disabling access to Copilot, see "[Revoking access to Copilot for members of your organization](https://docs.github.com/copilot/managing-copilot/managing-github-copilot-in-your-organization/managing-access-to-github-copilot-in-your-organization/revoking-access-to-copilot-for-members-of-your-organization)."
/// 
/// Only organization owners can cancel Copilot seats for their organization members.
/// 
/// The response contains the total number of seats set to "pending cancellation".
/// 
/// OAuth app tokens and personal access tokens (classic) need either the `manage_billing:copilot` or `admin:org` scopes to use this endpoint.
///
/// `DELETE /orgs/{org}/copilot/billing/selected_teams`
Future<ApiResult<CopilotCancelCopilotSeatAssignmentForTeamsResponse, BasicError>> copilotCancelCopilotSeatAssignmentForTeams({required String org, required CopilotCancelCopilotSeatAssignmentForTeamsRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'DELETE',
  path: '/orgs/${Uri.encodeComponent(org)}/copilot/billing/selected_teams',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return CopilotCancelCopilotSeatAssignmentForTeamsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Add users to the Copilot subscription for an organization
///
/// > [!NOTE]
/// > This endpoint is in public preview and is subject to change.
/// 
/// Purchases a GitHub Copilot seat for each user specified.
/// The organization will be billed for each seat based on the organization's Copilot plan. For more information about Copilot pricing, see "[About billing for GitHub Copilot in your organization](https://docs.github.com/copilot/managing-copilot/managing-github-copilot-in-your-organization/managing-the-copilot-subscription-for-your-organization/about-billing-for-github-copilot-in-your-organization)."
/// 
/// Only organization owners can purchase Copilot seats for their organization members. The organization must have a Copilot Business or Copilot Enterprise subscription and a configured suggestion matching policy.
/// For more information about setting up a Copilot subscription, see "[Subscribing to Copilot for your organization](https://docs.github.com/copilot/managing-copilot/managing-github-copilot-in-your-organization/managing-the-copilot-subscription-for-your-organization/subscribing-to-copilot-for-your-organization)."
/// For more information about setting a suggestion matching policy, see "[Managing policies for Copilot in your organization](https://docs.github.com/copilot/managing-copilot/managing-github-copilot-in-your-organization/setting-policies-for-copilot-in-your-organization/managing-policies-for-copilot-in-your-organization#policies-for-suggestion-matching)."
/// 
/// The response contains the total number of new seats that were created and existing seats that were refreshed.
/// 
/// OAuth app tokens and personal access tokens (classic) need either the `manage_billing:copilot` or `admin:org` scopes to use this endpoint.
///
/// `POST /orgs/{org}/copilot/billing/selected_users`
Future<ApiResult<CopilotAddCopilotSeatsForUsersResponse, BasicError>> copilotAddCopilotSeatsForUsers({required String org, required CopilotAddCopilotSeatsForUsersRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/orgs/${Uri.encodeComponent(org)}/copilot/billing/selected_users',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return CopilotAddCopilotSeatsForUsersResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Remove users from the Copilot subscription for an organization
///
/// > [!NOTE]
/// > This endpoint is in public preview and is subject to change.
/// 
/// Sets seats for all users specified to "pending cancellation".
/// This will cause the specified users to lose access to GitHub Copilot at the end of the current billing cycle unless they retain access through team membership.
/// For more information about disabling access to Copilot, see "[Revoking access to Copilot for members of your organization](https://docs.github.com/copilot/managing-copilot/managing-github-copilot-in-your-organization/managing-access-to-github-copilot-in-your-organization/revoking-access-to-copilot-for-members-of-your-organization)."
/// 
/// Only organization owners can cancel Copilot seats for their organization members.
/// 
/// The response contains the total number of seats set to "pending cancellation".
/// 
/// OAuth app tokens and personal access tokens (classic) need either the `manage_billing:copilot` or `admin:org` scopes to use this endpoint.
///
/// `DELETE /orgs/{org}/copilot/billing/selected_users`
Future<ApiResult<CopilotCancelCopilotSeatAssignmentForUsersResponse, BasicError>> copilotCancelCopilotSeatAssignmentForUsers({required String org, required CopilotCancelCopilotSeatAssignmentForUsersRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'DELETE',
  path: '/orgs/${Uri.encodeComponent(org)}/copilot/billing/selected_users',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return CopilotCancelCopilotSeatAssignmentForUsersResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get Copilot content exclusion rules for an organization
///
/// > [!NOTE]
/// > This endpoint is in public preview and is subject to change.
/// 
/// Gets information about an organization's Copilot content exclusion path rules.
/// To configure these settings, go to the organization's settings on GitHub.
/// For more information, see "[Excluding content from GitHub Copilot](https://docs.github.com/copilot/managing-copilot/configuring-and-auditing-content-exclusion/excluding-content-from-github-copilot#configuring-content-exclusions-for-your-organization)."
/// 
/// Organization owners can view details about Copilot content exclusion rules for the organization.
/// 
/// OAuth app tokens and personal access tokens (classic) need either the `copilot` or `read:org` scopes to use this endpoint.
/// 
/// > [!CAUTION]
/// > * At this time, the API does not support comments. This endpoint will not return any comments in the existing rules.
/// > * At this time, the API does not support duplicate keys. If your content exclusion configuration contains duplicate keys, the API will return only the last occurrence of that key. For example, if duplicate entries are present, only the final value will be included in the response.
///
/// `GET /orgs/{org}/copilot/content_exclusion`
Future<ApiResult<Map<String, List<String>>, BasicError>> copilotContentExclusionForOrganization({required String org, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/orgs/${Uri.encodeComponent(org)}/copilot/content_exclusion',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return (jsonDecode(response.body) as Map<String, dynamic>).map((k, v) => MapEntry(k, (v as List<dynamic>).map((e) => e as String).toList()));
  },
  onError: (response) {
    return BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Set Copilot content exclusion rules for an organization
///
/// > [!NOTE]
/// > This endpoint is in public preview and is subject to change.
/// 
/// Sets Copilot content exclusion path rules for an organization.
/// To configure these settings, go to the organization's settings on GitHub.
/// For more information, see "[Excluding content from GitHub Copilot](https://docs.github.com/copilot/managing-copilot/configuring-and-auditing-content-exclusion/excluding-content-from-github-copilot#configuring-content-exclusions-for-your-organization)."
/// 
/// Organization owners can set Copilot content exclusion rules for the organization.
/// 
/// OAuth app tokens and personal access tokens (classic) need the `copilot` scope to use this endpoint.
/// 
/// > [!CAUTION]
/// > * At this time, the API does not support comments. When using this endpoint, any existing comments in your rules will be deleted.
/// > * At this time, the API does not support duplicate keys. If you submit content exclusions through the API with duplicate keys, only the last occurrence will be saved. Earlier entries with the same key will be overwritten.
///
/// `PUT /orgs/{org}/copilot/content_exclusion`
Future<ApiResult<CopilotSetCopilotContentExclusionForOrganizationResponse, BasicError>> copilotSetCopilotContentExclusionForOrganization({required String org, required Map<String,List<CopilotSetCopilotContentExclusionForOrganizationRequestValue>> body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/orgs/${Uri.encodeComponent(org)}/copilot/content_exclusion',
  headers: headers,
  body: jsonEncode(body),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return CopilotSetCopilotContentExclusionForOrganizationResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get Copilot metrics for an organization
///
/// Use this endpoint to see a breakdown of aggregated metrics for various GitHub Copilot features. See the response schema tab for detailed metrics definitions.
/// 
/// > [!NOTE]
/// > This endpoint will only return results for a given day if the organization contained **five or more members with active Copilot licenses** on that day, as evaluated at the end of that day.
/// 
/// The response contains metrics for up to 100 days prior. Metrics are processed once per day for the previous day,
/// and the response will only include data up until yesterday. In order for an end user to be counted towards these metrics,
/// they must have telemetry enabled in their IDE.
/// 
/// To access this endpoint, the Copilot Metrics API access policy must be enabled for the organization.
/// Only organization owners and owners and billing managers of the parent enterprise can view Copilot metrics.
/// 
/// OAuth app tokens and personal access tokens (classic) need either the `manage_billing:copilot`, `read:org`, or `read:enterprise` scopes to use this endpoint.
///
/// `GET /orgs/{org}/copilot/metrics`
Future<ApiResult<List<CopilotUsageMetricsDay>, BasicError>> copilotMetricsForOrganization({required String org, String? since, String? until, int? page, int? perPage, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (since != null) queryParameters['since'] = since;
if (until != null) queryParameters['until'] = until;
if (page != null) queryParameters['page'] = page.toString();
if (perPage != null) queryParameters['per_page'] = perPage.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/orgs/${Uri.encodeComponent(org)}/copilot/metrics',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as List<dynamic>;
    return json.map((e) => CopilotUsageMetricsDay.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
    return BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get Copilot seat assignment details for a user
///
/// > [!NOTE]
/// > This endpoint is in public preview and is subject to change.
/// 
/// Gets the GitHub Copilot seat details for a member of an organization who currently has access to GitHub Copilot.
/// 
/// The seat object contains information about the user's most recent Copilot activity. Users must have telemetry enabled in their IDE for Copilot in the IDE activity to be reflected in `last_activity_at`.
/// For more information about activity data, see [Metrics data properties for GitHub Copilot](https://docs.github.com/copilot/reference/metrics-data).
/// 
/// Only organization owners can view Copilot seat assignment details for members of their organization.
/// 
/// OAuth app tokens and personal access tokens (classic) need either the `manage_billing:copilot` or `read:org` scopes to use this endpoint.
///
/// `GET /orgs/{org}/members/{username}/copilot`
Future<ApiResult<CopilotSeatDetails, BasicError>> copilotGetCopilotSeatDetailsForUser({required String org, required String username, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/orgs/${Uri.encodeComponent(org)}/members/${Uri.encodeComponent(username)}/copilot',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return CopilotSeatDetails.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get Copilot metrics for a team
///
/// Use this endpoint to see a breakdown of aggregated metrics for various GitHub Copilot features. See the response schema tab for detailed metrics definitions.
/// 
/// > [!NOTE]
/// > This endpoint will only return results for a given day if the team had **five or more members with active Copilot licenses** on that day, as evaluated at the end of that day.
/// 
/// The response contains metrics for up to 100 days prior. Metrics are processed once per day for the previous day,
/// and the response will only include data up until yesterday. In order for an end user to be counted towards these metrics,
/// they must have telemetry enabled in their IDE.
/// 
/// To access this endpoint, the Copilot Metrics API access policy must be enabled for the organization containing the team within GitHub settings.
/// Only organization owners for the organization that contains this team and owners and billing managers of the parent enterprise can view Copilot metrics for a team.
/// 
/// OAuth app tokens and personal access tokens (classic) need either the `manage_billing:copilot`, `read:org`, or `read:enterprise` scopes to use this endpoint.
///
/// `GET /orgs/{org}/team/{team_slug}/copilot/metrics`
Future<ApiResult<List<CopilotUsageMetricsDay>, BasicError>> copilotMetricsForTeam({required String org, required String teamSlug, String? since, String? until, int? page, int? perPage, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (since != null) queryParameters['since'] = since;
if (until != null) queryParameters['until'] = until;
if (page != null) queryParameters['page'] = page.toString();
if (perPage != null) queryParameters['per_page'] = perPage.toString();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/orgs/${Uri.encodeComponent(org)}/team/${Uri.encodeComponent(teamSlug)}/copilot/metrics',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as List<dynamic>;
    return json.map((e) => CopilotUsageMetricsDay.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
    return BasicError.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
