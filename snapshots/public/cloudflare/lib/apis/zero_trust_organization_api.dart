// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/access_identifier.dart';import '../models/access_organizations.dart';import '../models/zero_trust_organization_create_your_zero_trust_organization_request.dart';import '../models/zero_trust_organization_get_your_zero_trust_organization_doh_settings_response_result.dart';import '../models/zero_trust_organization_revoke_all_access_tokens_for_a_user_request.dart';import '../models/zero_trust_organization_update_your_zero_trust_organization_doh_settings_request.dart';import '../models/zero_trust_organization_update_your_zero_trust_organization_doh_settings_response_result.dart';import '../models/zero_trust_organization_update_your_zero_trust_organization_request.dart';/// ZeroTrustOrganizationApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class ZeroTrustOrganizationApi with ApiExecutor {const ZeroTrustOrganizationApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get your Zero Trust organization
///
/// Returns the configuration for your Zero Trust organization.
///
/// `GET /accounts/{account_id}/access/organizations`
Future<ApiResult<AccessOrganizations?, Never>> zeroTrustOrganizationGetYourZeroTrustOrganization({required AccessIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/organizations',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? AccessOrganizations.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Create your Zero Trust organization
///
/// Sets up a Zero Trust organization for your account.
///
/// `POST /accounts/{account_id}/access/organizations`
Future<ApiResult<AccessOrganizations?, Never>> zeroTrustOrganizationCreateYourZeroTrustOrganization({required AccessIdentifier accountId, required ZeroTrustOrganizationCreateYourZeroTrustOrganizationRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/organizations',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? AccessOrganizations.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Update your Zero Trust organization
///
/// Updates the configuration for your Zero Trust organization.
///
/// `PUT /accounts/{account_id}/access/organizations`
Future<ApiResult<AccessOrganizations?, Never>> zeroTrustOrganizationUpdateYourZeroTrustOrganization({required AccessIdentifier accountId, required ZeroTrustOrganizationUpdateYourZeroTrustOrganizationRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/organizations',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? AccessOrganizations.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Get your Zero Trust organization DoH settings
///
/// Returns the DoH settings for your Zero Trust organization.
///
/// `GET /accounts/{account_id}/access/organizations/doh`
Future<ApiResult<ZeroTrustOrganizationGetYourZeroTrustOrganizationDohSettingsResponseResult?, Never>> zeroTrustOrganizationGetYourZeroTrustOrganizationDohSettings({required AccessIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/organizations/doh',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? ZeroTrustOrganizationGetYourZeroTrustOrganizationDohSettingsResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Update your Zero Trust organization DoH settings
///
/// Updates the DoH settings for your Zero Trust organization.
///
/// `PUT /accounts/{account_id}/access/organizations/doh`
Future<ApiResult<ZeroTrustOrganizationUpdateYourZeroTrustOrganizationDohSettingsResponseResult?, Never>> zeroTrustOrganizationUpdateYourZeroTrustOrganizationDohSettings({required AccessIdentifier accountId, ZeroTrustOrganizationUpdateYourZeroTrustOrganizationDohSettingsRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/organizations/doh',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? ZeroTrustOrganizationUpdateYourZeroTrustOrganizationDohSettingsResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Revoke all Access tokens for a user
///
/// Revokes a user's access across all applications.
///
/// `POST /accounts/{account_id}/access/organizations/revoke_user`
Future<ApiResult<bool?, Never>> zeroTrustOrganizationRevokeAllAccessTokensForAUser({required AccessIdentifier accountId, bool? devices, required ZeroTrustOrganizationRevokeAllAccessTokensForAUserRequest body, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (devices != null) {
  queryParameters['devices'] = devices.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/organizations/revoke_user',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] as bool?;
  },
);
 } 
 }
