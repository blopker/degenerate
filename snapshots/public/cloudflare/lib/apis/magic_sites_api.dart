// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/magic_identifier.dart';import '../models/magic_site.dart';import '../models/magic_site_update_request.dart';import '../models/magic_sites_add_single_request.dart';/// MagicSitesApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class MagicSitesApi with ApiExecutor {const MagicSitesApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Sites
///
/// Lists Sites associated with an account. Use connectorid query param to return sites where connectorid matches either site.ConnectorID or site.SecondaryConnectorID.
///
/// `GET /accounts/{account_id}/magic/sites`
Future<ApiResult<List<MagicSite>?, Never>> magicSitesListSites({required MagicIdentifier accountId, MagicIdentifier? connectorid, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (connectorid != null) {
  queryParameters['connectorid'] = connectorid.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/sites',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => MagicSite.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Create a new Site
///
/// Creates a new Site
///
/// `POST /accounts/{account_id}/magic/sites`
Future<ApiResult<MagicSite?, Never>> magicSitesCreateSite({required MagicIdentifier accountId, required MagicSitesAddSingleRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/sites',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? MagicSite.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Site Details
///
/// Get a specific Site.
///
/// `GET /accounts/{account_id}/magic/sites/{site_id}`
Future<ApiResult<MagicSite?, Never>> magicSitesSiteDetails({required MagicIdentifier siteId, required MagicIdentifier accountId, bool? xMagicNewHcTarget, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
if (xMagicNewHcTarget != null) {
  headers['x-magic-new-hc-target'] = xMagicNewHcTarget.toString();
}

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/sites/${Uri.encodeComponent(siteId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? MagicSite.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Update Site
///
/// Update a specific Site.
///
/// `PUT /accounts/{account_id}/magic/sites/{site_id}`
Future<ApiResult<MagicSite?, Never>> magicSitesUpdateSite({required MagicIdentifier siteId, required MagicIdentifier accountId, required MagicSiteUpdateRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/sites/${Uri.encodeComponent(siteId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? MagicSite.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Patch Site
///
/// Patch a specific Site.
///
/// `PATCH /accounts/{account_id}/magic/sites/{site_id}`
Future<ApiResult<MagicSite?, Never>> magicSitesPatchSite({required MagicIdentifier siteId, required MagicIdentifier accountId, required MagicSiteUpdateRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/sites/${Uri.encodeComponent(siteId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? MagicSite.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Delete Site
///
/// Remove a specific Site.
///
/// `DELETE /accounts/{account_id}/magic/sites/{site_id}`
Future<ApiResult<MagicSite?, Never>> magicSitesDeleteSite({required MagicIdentifier siteId, required MagicIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/magic/sites/${Uri.encodeComponent(siteId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? MagicSite.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
 }
