// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/account_sip_sip_ip_access_control_list.dart';import '../models/create_sip_ip_access_control_list_request.dart';import '../models/list_sip_ip_access_control_list_response.dart';import '../models/update_sip_ip_access_control_list_request.dart';/// Api20100401IpAccessControlListApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class Api20100401IpAccessControlListApi with ApiExecutor {const Api20100401IpAccessControlListApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Retrieve a list of IpAccessControlLists that belong to the account used to make the request
///
/// `GET /2010-04-01/Accounts/{AccountSid}/SIP/IpAccessControlLists.json`
Future<ApiResult<ListSipIpAccessControlListResponse, Never>> listSipIpAccessControlList({required String accountSid, int? pageSize, int? page, String? pageToken, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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
  path: '/2010-04-01/Accounts/${Uri.encodeComponent(accountSid)}/SIP/IpAccessControlLists.json',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ListSipIpAccessControlListResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create a new IpAccessControlList resource
///
/// `POST /2010-04-01/Accounts/{AccountSid}/SIP/IpAccessControlLists.json`
Future<ApiResult<AccountSipSipIpAccessControlList, Never>> createSipIpAccessControlList({required String accountSid, CreateSipIpAccessControlListRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/x-www-form-urlencoded';

final request = ApiRequest(
  method: 'POST',
  path: '/2010-04-01/Accounts/${Uri.encodeComponent(accountSid)}/SIP/IpAccessControlLists.json',
  headers: headers,
  body: body == null ? null : [
    'FriendlyName=${Uri.encodeQueryComponent(body.friendlyName)}',
  ].join('&'),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccountSipSipIpAccessControlList.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Fetch a specific instance of an IpAccessControlList
///
/// `GET /2010-04-01/Accounts/{AccountSid}/SIP/IpAccessControlLists/{Sid}.json`
Future<ApiResult<AccountSipSipIpAccessControlList, Never>> fetchSipIpAccessControlList({required String accountSid, required String sid, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/2010-04-01/Accounts/${Uri.encodeComponent(accountSid)}/SIP/IpAccessControlLists/${Uri.encodeComponent(sid)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccountSipSipIpAccessControlList.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Rename an IpAccessControlList
///
/// `POST /2010-04-01/Accounts/{AccountSid}/SIP/IpAccessControlLists/{Sid}.json`
Future<ApiResult<AccountSipSipIpAccessControlList, Never>> updateSipIpAccessControlList({required String accountSid, required String sid, UpdateSipIpAccessControlListRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/x-www-form-urlencoded';

final request = ApiRequest(
  method: 'POST',
  path: '/2010-04-01/Accounts/${Uri.encodeComponent(accountSid)}/SIP/IpAccessControlLists/${Uri.encodeComponent(sid)}.json',
  headers: headers,
  body: body == null ? null : [
    'FriendlyName=${Uri.encodeQueryComponent(body.friendlyName)}',
  ].join('&'),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccountSipSipIpAccessControlList.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete an IpAccessControlList from the requested account
///
/// `DELETE /2010-04-01/Accounts/{AccountSid}/SIP/IpAccessControlLists/{Sid}.json`
Future<ApiResult<void, Never>> deleteSipIpAccessControlList({required String accountSid, required String sid, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/2010-04-01/Accounts/${Uri.encodeComponent(accountSid)}/SIP/IpAccessControlLists/${Uri.encodeComponent(sid)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
 }
