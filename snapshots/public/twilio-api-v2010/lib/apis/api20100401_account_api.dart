// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/account.dart';import '../models/account_enum_status.dart';import '../models/create_account_request.dart';import '../models/list_account_response.dart';import '../models/update_account_request.dart';/// Api20100401AccountApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class Api20100401AccountApi with ApiExecutor {const Api20100401AccountApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Retrieves a collection of Accounts belonging to the account used to make the request
///
/// `GET /2010-04-01/Accounts.json`
Future<ApiResult<ListAccountResponse, Never>> listAccount({String? friendlyName, AccountEnumStatus? status, int? pageSize, int? page, String? pageToken, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (friendlyName != null) {
  queryParameters['FriendlyName'] = friendlyName;
}
if (status != null) {
  queryParameters['Status'] = status.toJson();
}
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
  path: '/2010-04-01/Accounts.json',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ListAccountResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create a new Twilio Subaccount from the account making the request
///
/// `POST /2010-04-01/Accounts.json`
Future<ApiResult<Account, Never>> createAccount({CreateAccountRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/x-www-form-urlencoded';

final request = ApiRequest(
  method: 'POST',
  path: '/2010-04-01/Accounts.json',
  headers: headers,
  body: body == null ? null : [
    if (body.friendlyName case final friendlyName$?)
      'FriendlyName=${Uri.encodeQueryComponent(friendlyName$)}',
  ].join('&'),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return Account.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Fetch the account specified by the provided Account Sid
///
/// `GET /2010-04-01/Accounts/{Sid}.json`
Future<ApiResult<Account, Never>> fetchAccount({required String sid, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/2010-04-01/Accounts/${Uri.encodeComponent(sid)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return Account.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Modify the properties of a given Account
///
/// `POST /2010-04-01/Accounts/{Sid}.json`
Future<ApiResult<Account, Never>> updateAccount({required String sid, UpdateAccountRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/x-www-form-urlencoded';

final request = ApiRequest(
  method: 'POST',
  path: '/2010-04-01/Accounts/${Uri.encodeComponent(sid)}.json',
  headers: headers,
  body: body == null ? null : [
    if (body.friendlyName case final friendlyName$?)
      'FriendlyName=${Uri.encodeQueryComponent(friendlyName$)}',
    if (body.status case final status$?)
      'Status=${Uri.encodeQueryComponent(status$.toJson())}',
  ].join('&'),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return Account.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
