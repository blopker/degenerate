// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/mcn_account_id.dart';import '../models/mcn_bad_response.dart';import '../models/mcn_create_provider_request.dart';import '../models/mcn_create_provider_response.dart';import '../models/mcn_delete_provider_response.dart';import '../models/mcn_good_response.dart';import '../models/mcn_provider_id.dart';import '../models/mcn_provider_initial_setup_response.dart';import '../models/mcn_read_account_provider_response.dart';import '../models/mcn_read_account_providers_response.dart';import '../models/mcn_update_provider_request.dart';import '../models/mcn_update_provider_response.dart';/// CloudIntegrationsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class CloudIntegrationsApi with ApiExecutor {const CloudIntegrationsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Cloud Integrations
///
/// List Cloud Integrations (Closed Beta).
///
/// `GET /accounts/{account_id}/magic/cloud/providers`
Future<ApiResult<McnReadAccountProvidersResponse, McnBadResponse>> providersList({required McnAccountId accountId, bool? status, String? orderBy, bool? desc, bool? cloudflare, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (status != null) {
  queryParameters['status'] = status.toString();
}
if (orderBy != null) {
  queryParameters['order_by'] = orderBy;
}
if (desc != null) {
  queryParameters['desc'] = desc.toString();
}
if (cloudflare != null) {
  queryParameters['cloudflare'] = cloudflare.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/cloud/providers',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return McnReadAccountProvidersResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return McnBadResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create Cloud Integration
///
/// Create a new Cloud Integration (Closed Beta).
///
/// `POST /accounts/{account_id}/magic/cloud/providers`
Future<ApiResult<McnCreateProviderResponse, McnBadResponse>> providersCreate({required McnAccountId accountId, String? forwarded, required McnCreateProviderRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';
if (forwarded != null) {
  headers['forwarded'] = forwarded;
}

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/cloud/providers',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return McnCreateProviderResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return McnBadResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Read Cloud Integration
///
/// Read a Cloud Integration (Closed Beta).
///
/// `GET /accounts/{account_id}/magic/cloud/providers/{provider_id}`
Future<ApiResult<McnReadAccountProviderResponse, McnBadResponse>> providersRead({required McnAccountId accountId, required McnProviderId providerId, bool? status, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (status != null) {
  queryParameters['status'] = status.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/cloud/providers/${Uri.encodeComponent(providerId.toString())}',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return McnReadAccountProviderResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return McnBadResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update Cloud Integration
///
/// Update a Cloud Integration (Closed Beta).
///
/// `PUT /accounts/{account_id}/magic/cloud/providers/{provider_id}`
Future<ApiResult<McnUpdateProviderResponse, McnBadResponse>> providersUpdate({required McnAccountId accountId, required McnProviderId providerId, required McnUpdateProviderRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/cloud/providers/${Uri.encodeComponent(providerId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return McnUpdateProviderResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return McnBadResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Patch Cloud Integration
///
/// Update a Cloud Integration (Closed Beta).
///
/// `PATCH /accounts/{account_id}/magic/cloud/providers/{provider_id}`
Future<ApiResult<McnUpdateProviderResponse, McnBadResponse>> providersPatch({required McnAccountId accountId, required McnProviderId providerId, required McnUpdateProviderRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/cloud/providers/${Uri.encodeComponent(providerId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return McnUpdateProviderResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return McnBadResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete Cloud Integration
///
/// Delete a Cloud Integration (Closed Beta).
///
/// `DELETE /accounts/{account_id}/magic/cloud/providers/{provider_id}`
Future<ApiResult<McnDeleteProviderResponse, McnBadResponse>> providersDelete({required McnAccountId accountId, required McnProviderId providerId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/cloud/providers/${Uri.encodeComponent(providerId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return McnDeleteProviderResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return McnBadResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Run Discovery
///
/// Run discovery for a Cloud Integration (Closed Beta).
///
/// `POST /accounts/{account_id}/magic/cloud/providers/{provider_id}/discover`
Future<ApiResult<McnGoodResponse, McnBadResponse>> providersDiscover({required McnAccountId accountId, required McnProviderId providerId, bool? v2, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (v2 != null) {
  queryParameters['v2'] = v2.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/cloud/providers/${Uri.encodeComponent(providerId.toString())}/discover',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return McnGoodResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return McnBadResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get Cloud Integration Setup Config
///
/// Get initial configuration to complete Cloud Integration setup (Closed Beta).
///
/// `GET /accounts/{account_id}/magic/cloud/providers/{provider_id}/initial_setup`
Future<ApiResult<McnProviderInitialSetupResponse, McnBadResponse>> providersInitialSetup({required McnAccountId accountId, required McnProviderId providerId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/cloud/providers/${Uri.encodeComponent(providerId.toString())}/initial_setup',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return McnProviderInitialSetupResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return McnBadResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Run Discovery for All Integrations
///
/// Run discovery for all Cloud Integrations in an account (Closed Beta).
///
/// `POST /accounts/{account_id}/magic/cloud/providers/discover`
Future<ApiResult<McnGoodResponse, McnBadResponse>> providersDiscoverAll({required McnAccountId accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/cloud/providers/discover',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return McnGoodResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return McnBadResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
