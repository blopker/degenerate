// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/account_connect_app.dart';import '../models/list_connect_app_response.dart';import '../models/update_connect_app_request.dart';/// Api20100401ConnectAppApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class Api20100401ConnectAppApi with ApiExecutor {const Api20100401ConnectAppApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Fetch an instance of a connect-app
///
/// `GET /2010-04-01/Accounts/{AccountSid}/ConnectApps/{Sid}.json`
Future<ApiResult<AccountConnectApp, Never>> fetchConnectApp({required String accountSid, required String sid, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/2010-04-01/Accounts/${Uri.encodeComponent(accountSid)}/ConnectApps/${Uri.encodeComponent(sid)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccountConnectApp.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update a connect-app with the specified parameters
///
/// `POST /2010-04-01/Accounts/{AccountSid}/ConnectApps/{Sid}.json`
Future<ApiResult<AccountConnectApp, Never>> updateConnectApp({required String accountSid, required String sid, UpdateConnectAppRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/x-www-form-urlencoded';

final request = ApiRequest(
  method: 'POST',
  path: '/2010-04-01/Accounts/${Uri.encodeComponent(accountSid)}/ConnectApps/${Uri.encodeComponent(sid)}.json',
  headers: headers,
  body: body == null ? null : [
    if (body.authorizeRedirectUrl case final authorizeRedirectUrl$?)
      'AuthorizeRedirectUrl=${Uri.encodeQueryComponent(authorizeRedirectUrl$.toString())}',
    if (body.companyName case final companyName$?)
      'CompanyName=${Uri.encodeQueryComponent(companyName$)}',
    if (body.deauthorizeCallbackMethod case final deauthorizeCallbackMethod$?)
      'DeauthorizeCallbackMethod=${Uri.encodeQueryComponent(deauthorizeCallbackMethod$.toJson())}',
    if (body.deauthorizeCallbackUrl case final deauthorizeCallbackUrl$?)
      'DeauthorizeCallbackUrl=${Uri.encodeQueryComponent(deauthorizeCallbackUrl$.toString())}',
    if (body.description case final description$?)
      'Description=${Uri.encodeQueryComponent(description$)}',
    if (body.friendlyName case final friendlyName$?)
      'FriendlyName=${Uri.encodeQueryComponent(friendlyName$)}',
    if (body.homepageUrl case final homepageUrl$?)
      'HomepageUrl=${Uri.encodeQueryComponent(homepageUrl$.toString())}',
    if (body.permissions case final permissions$?)
      'Permissions=${Uri.encodeQueryComponent(permissions$.toString())}',
  ].join('&'),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccountConnectApp.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete an instance of a connect-app
///
/// `DELETE /2010-04-01/Accounts/{AccountSid}/ConnectApps/{Sid}.json`
Future<ApiResult<void, Never>> deleteConnectApp({required String accountSid, required String sid, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/2010-04-01/Accounts/${Uri.encodeComponent(accountSid)}/ConnectApps/${Uri.encodeComponent(sid)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
/// Retrieve a list of connect-apps belonging to the account used to make the request
///
/// `GET /2010-04-01/Accounts/{AccountSid}/ConnectApps.json`
Future<ApiResult<ListConnectAppResponse, Never>> listConnectApp({required String accountSid, int? pageSize, int? page, String? pageToken, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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
  path: '/2010-04-01/Accounts/${Uri.encodeComponent(accountSid)}/ConnectApps.json',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ListConnectAppResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
