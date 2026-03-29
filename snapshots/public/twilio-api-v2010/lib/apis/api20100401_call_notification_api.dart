// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/account_call_call_notification_instance.dart';import '../models/list_call_notification_response.dart';/// Api20100401CallNotificationApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class Api20100401CallNotificationApi with ApiExecutor {const Api20100401CallNotificationApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// 
///
/// `GET /2010-04-01/Accounts/{AccountSid}/Calls/{CallSid}/Notifications/{Sid}.json`
Future<ApiResult<AccountCallCallNotificationInstance, Never>> fetchCallNotification({required String accountSid, required String callSid, required String sid, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/2010-04-01/Accounts/${Uri.encodeComponent(accountSid)}/Calls/${Uri.encodeComponent(callSid)}/Notifications/${Uri.encodeComponent(sid)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccountCallCallNotificationInstance.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// 
///
/// `GET /2010-04-01/Accounts/{AccountSid}/Calls/{CallSid}/Notifications.json`
Future<ApiResult<ListCallNotificationResponse, Never>> listCallNotification({required String accountSid, required String callSid, int? log, String? messageDate, String? messageDateBefore, String? messageDateAfter, int? pageSize, int? page, String? pageToken, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (log != null) queryParameters['Log'] = log.toString();
if (messageDate != null) queryParameters['MessageDate'] = messageDate;
if (messageDateBefore != null) queryParameters['MessageDate<'] = messageDateBefore;
if (messageDateAfter != null) queryParameters['MessageDate>'] = messageDateAfter;
if (pageSize != null) queryParameters['PageSize'] = pageSize.toString();
if (page != null) queryParameters['Page'] = page.toString();
if (pageToken != null) queryParameters['PageToken'] = pageToken;

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/2010-04-01/Accounts/${Uri.encodeComponent(accountSid)}/Calls/${Uri.encodeComponent(callSid)}/Notifications.json',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ListCallNotificationResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
