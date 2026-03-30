// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/account_sip_sip_credential_list_sip_credential.dart';import '../models/create_sip_credential_request.dart';import '../models/list_sip_credential_response.dart';import '../models/update_sip_credential_request.dart';/// Api20100401CredentialApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class Api20100401CredentialApi with ApiExecutor {const Api20100401CredentialApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Retrieve a list of credentials.
///
/// `GET /2010-04-01/Accounts/{AccountSid}/SIP/CredentialLists/{CredentialListSid}/Credentials.json`
Future<ApiResult<ListSipCredentialResponse, Never>> listSipCredential({required String accountSid, required String credentialListSid, int? pageSize, int? page, String? pageToken, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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
  path: '/2010-04-01/Accounts/${Uri.encodeComponent(accountSid)}/SIP/CredentialLists/${Uri.encodeComponent(credentialListSid)}/Credentials.json',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ListSipCredentialResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create a new credential resource.
///
/// `POST /2010-04-01/Accounts/{AccountSid}/SIP/CredentialLists/{CredentialListSid}/Credentials.json`
Future<ApiResult<AccountSipSipCredentialListSipCredential, Never>> createSipCredential({required String accountSid, required String credentialListSid, CreateSipCredentialRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/x-www-form-urlencoded';

final request = ApiRequest(
  method: 'POST',
  path: '/2010-04-01/Accounts/${Uri.encodeComponent(accountSid)}/SIP/CredentialLists/${Uri.encodeComponent(credentialListSid)}/Credentials.json',
  headers: headers,
  body: body == null ? null : [
    'Username=${Uri.encodeQueryComponent(body.username)}',
    'Password=${Uri.encodeQueryComponent(body.password)}',
  ].join('&'),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccountSipSipCredentialListSipCredential.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Fetch a single credential.
///
/// `GET /2010-04-01/Accounts/{AccountSid}/SIP/CredentialLists/{CredentialListSid}/Credentials/{Sid}.json`
Future<ApiResult<AccountSipSipCredentialListSipCredential, Never>> fetchSipCredential({required String accountSid, required String credentialListSid, required String sid, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/2010-04-01/Accounts/${Uri.encodeComponent(accountSid)}/SIP/CredentialLists/${Uri.encodeComponent(credentialListSid)}/Credentials/${Uri.encodeComponent(sid)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccountSipSipCredentialListSipCredential.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update a credential resource.
///
/// `POST /2010-04-01/Accounts/{AccountSid}/SIP/CredentialLists/{CredentialListSid}/Credentials/{Sid}.json`
Future<ApiResult<AccountSipSipCredentialListSipCredential, Never>> updateSipCredential({required String accountSid, required String credentialListSid, required String sid, UpdateSipCredentialRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/x-www-form-urlencoded';

final request = ApiRequest(
  method: 'POST',
  path: '/2010-04-01/Accounts/${Uri.encodeComponent(accountSid)}/SIP/CredentialLists/${Uri.encodeComponent(credentialListSid)}/Credentials/${Uri.encodeComponent(sid)}.json',
  headers: headers,
  body: body == null ? null : [
    if (body.password case final password$?)
      'Password=${Uri.encodeQueryComponent(password$)}',
  ].join('&'),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccountSipSipCredentialListSipCredential.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete a credential resource.
///
/// `DELETE /2010-04-01/Accounts/{AccountSid}/SIP/CredentialLists/{CredentialListSid}/Credentials/{Sid}.json`
Future<ApiResult<void, Never>> deleteSipCredential({required String accountSid, required String credentialListSid, required String sid, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/2010-04-01/Accounts/${Uri.encodeComponent(accountSid)}/SIP/CredentialLists/${Uri.encodeComponent(credentialListSid)}/Credentials/${Uri.encodeComponent(sid)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
 }
