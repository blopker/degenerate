// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/account_sip_sip_credential_list.dart';import '../models/create_sip_credential_list_request.dart';import '../models/list_sip_credential_list_response.dart';import '../models/update_sip_credential_list_request.dart';/// Api20100401CredentialListApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class Api20100401CredentialListApi with ApiExecutor {const Api20100401CredentialListApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get All Credential Lists
///
/// `GET /2010-04-01/Accounts/{AccountSid}/SIP/CredentialLists.json`
Future<ApiResult<ListSipCredentialListResponse, Never>> listSipCredentialList({required String accountSid, int? pageSize, int? page, String? pageToken, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (pageSize != null) {
  queryParameters['PageSize'] = pageSize.toString();
}
if (page != null) {
  queryParameters['Page'] = page.toString();
}
if (pageToken != null) {
  queryParameters['PageToken'] = pageToken;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/2010-04-01/Accounts/${Uri.encodeComponent(accountSid)}/SIP/CredentialLists.json',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ListSipCredentialListResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create a Credential List
///
/// `POST /2010-04-01/Accounts/{AccountSid}/SIP/CredentialLists.json`
Future<ApiResult<AccountSipSipCredentialList, Never>> createSipCredentialList({required String accountSid, CreateSipCredentialListRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/x-www-form-urlencoded';

final request = ApiRequest(
  method: 'POST',
  path: '/2010-04-01/Accounts/${Uri.encodeComponent(accountSid)}/SIP/CredentialLists.json',
  headers: headers,
  body: body == null ? null : <String>[
    'FriendlyName=${Uri.encodeQueryComponent(body.friendlyName)}',
  ].join('&'),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccountSipSipCredentialList.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get a Credential List
///
/// `GET /2010-04-01/Accounts/{AccountSid}/SIP/CredentialLists/{Sid}.json`
Future<ApiResult<AccountSipSipCredentialList, Never>> fetchSipCredentialList({required String accountSid, required String sid, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/2010-04-01/Accounts/${Uri.encodeComponent(accountSid)}/SIP/CredentialLists/${Uri.encodeComponent(sid)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccountSipSipCredentialList.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update a Credential List
///
/// `POST /2010-04-01/Accounts/{AccountSid}/SIP/CredentialLists/{Sid}.json`
Future<ApiResult<AccountSipSipCredentialList, Never>> updateSipCredentialList({required String accountSid, required String sid, UpdateSipCredentialListRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/x-www-form-urlencoded';

final request = ApiRequest(
  method: 'POST',
  path: '/2010-04-01/Accounts/${Uri.encodeComponent(accountSid)}/SIP/CredentialLists/${Uri.encodeComponent(sid)}.json',
  headers: headers,
  body: body == null ? null : <String>[
    'FriendlyName=${Uri.encodeQueryComponent(body.friendlyName)}',
  ].join('&'),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccountSipSipCredentialList.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete a Credential List
///
/// `DELETE /2010-04-01/Accounts/{AccountSid}/SIP/CredentialLists/{Sid}.json`
Future<ApiResult<void, Never>> deleteSipCredentialList({required String accountSid, required String sid, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/2010-04-01/Accounts/${Uri.encodeComponent(accountSid)}/SIP/CredentialLists/${Uri.encodeComponent(sid)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
 }
