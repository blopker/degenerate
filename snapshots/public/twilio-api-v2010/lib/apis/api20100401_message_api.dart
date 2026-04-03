// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/account_message.dart';import '../models/create_message_request.dart';import '../models/list_message_response.dart';import '../models/update_message_request.dart';/// Api20100401MessageApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class Api20100401MessageApi with ApiExecutor {const Api20100401MessageApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Retrieve a list of Message resources associated with a Twilio Account
///
/// `GET /2010-04-01/Accounts/{AccountSid}/Messages.json`
Future<ApiResult<ListMessageResponse, Never>> listMessage({required String accountSid, String? to, String? from, DateTime? dateSent, DateTime? dateSentBefore, DateTime? dateSentAfter, int? pageSize, int? page, String? pageToken, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (to != null) {
  queryParameters['To'] = to;
}
if (from != null) {
  queryParameters['From'] = from;
}
if (dateSent != null) {
  queryParameters['DateSent'] = dateSent.toString();
}
if (dateSentBefore != null) {
  queryParameters['DateSent<'] = dateSentBefore.toString();
}
if (dateSentAfter != null) {
  queryParameters['DateSent>'] = dateSentAfter.toString();
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
  path: '/2010-04-01/Accounts/${Uri.encodeComponent(accountSid)}/Messages.json',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ListMessageResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Send a message
///
/// `POST /2010-04-01/Accounts/{AccountSid}/Messages.json`
Future<ApiResult<AccountMessage, Never>> createMessage({required String accountSid, CreateMessageRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/x-www-form-urlencoded';

final request = ApiRequest(
  method: 'POST',
  path: '/2010-04-01/Accounts/${Uri.encodeComponent(accountSid)}/Messages.json',
  headers: headers,
  body: body == null ? null : <String>[
    'To=${Uri.encodeQueryComponent(body.to)}',
    if (body.statusCallback case final statusCallback$?)
      'StatusCallback=${Uri.encodeQueryComponent(statusCallback$.toString())}',
    if (body.applicationSid case final applicationSid$?)
      'ApplicationSid=${Uri.encodeQueryComponent(applicationSid$)}',
    if (body.maxPrice case final maxPrice$?)
      'MaxPrice=${Uri.encodeQueryComponent(maxPrice$.toString())}',
    if (body.provideFeedback case final provideFeedback$?)
      'ProvideFeedback=${Uri.encodeQueryComponent(provideFeedback$.toString())}',
    if (body.attempt case final attempt$?)
      'Attempt=${Uri.encodeQueryComponent(attempt$.toString())}',
    if (body.validityPeriod case final validityPeriod$?)
      'ValidityPeriod=${Uri.encodeQueryComponent(validityPeriod$.toString())}',
    if (body.forceDelivery case final forceDelivery$?)
      'ForceDelivery=${Uri.encodeQueryComponent(forceDelivery$.toString())}',
    if (body.contentRetention case final contentRetention$?)
      'ContentRetention=${Uri.encodeQueryComponent(contentRetention$.toJson())}',
    if (body.addressRetention case final addressRetention$?)
      'AddressRetention=${Uri.encodeQueryComponent(addressRetention$.toJson())}',
    if (body.smartEncoded case final smartEncoded$?)
      'SmartEncoded=${Uri.encodeQueryComponent(smartEncoded$.toString())}',
    if (body.persistentAction case final persistentAction$?)
      'PersistentAction=${Uri.encodeQueryComponent(persistentAction$.toString())}',
    if (body.trafficType case final trafficType$?)
      'TrafficType=${Uri.encodeQueryComponent(trafficType$.toJson())}',
    if (body.shortenUrls case final shortenUrls$?)
      'ShortenUrls=${Uri.encodeQueryComponent(shortenUrls$.toString())}',
    if (body.scheduleType case final scheduleType$?)
      'ScheduleType=${Uri.encodeQueryComponent(scheduleType$.toJson())}',
    if (body.sendAt case final sendAt$?)
      'SendAt=${Uri.encodeQueryComponent(sendAt$.toIso8601String())}',
    if (body.sendAsMms case final sendAsMms$?)
      'SendAsMms=${Uri.encodeQueryComponent(sendAsMms$.toString())}',
    if (body.contentVariables case final contentVariables$?)
      'ContentVariables=${Uri.encodeQueryComponent(contentVariables$)}',
    if (body.riskCheck case final riskCheck$?)
      'RiskCheck=${Uri.encodeQueryComponent(riskCheck$.toJson())}',
    if (body.from case final from$?)
      'From=${Uri.encodeQueryComponent(from$)}',
    if (body.messagingServiceSid case final messagingServiceSid$?)
      'MessagingServiceSid=${Uri.encodeQueryComponent(messagingServiceSid$)}',
    if (body.body case final body$?)
      'Body=${Uri.encodeQueryComponent(body$)}',
    if (body.mediaUrl case final mediaUrl$?)
      'MediaUrl=${Uri.encodeQueryComponent(mediaUrl$.toString())}',
    if (body.contentSid case final contentSid$?)
      'ContentSid=${Uri.encodeQueryComponent(contentSid$)}',
  ].join('&'),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccountMessage.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Fetch a specific Message
///
/// `GET /2010-04-01/Accounts/{AccountSid}/Messages/{Sid}.json`
Future<ApiResult<AccountMessage, Never>> fetchMessage({required String accountSid, required String sid, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/2010-04-01/Accounts/${Uri.encodeComponent(accountSid)}/Messages/${Uri.encodeComponent(sid)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccountMessage.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update a Message resource (used to redact Message `body` text and to cancel not-yet-sent messages)
///
/// `POST /2010-04-01/Accounts/{AccountSid}/Messages/{Sid}.json`
Future<ApiResult<AccountMessage, Never>> updateMessage({required String accountSid, required String sid, UpdateMessageRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/x-www-form-urlencoded';

final request = ApiRequest(
  method: 'POST',
  path: '/2010-04-01/Accounts/${Uri.encodeComponent(accountSid)}/Messages/${Uri.encodeComponent(sid)}.json',
  headers: headers,
  body: body == null ? null : <String>[
    if (body.body case final body$?)
      'Body=${Uri.encodeQueryComponent(body$)}',
    if (body.status case final status$?)
      'Status=${Uri.encodeQueryComponent(status$.toJson())}',
  ].join('&'),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccountMessage.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Deletes a Message resource from your account
///
/// `DELETE /2010-04-01/Accounts/{AccountSid}/Messages/{Sid}.json`
Future<ApiResult<void, Never>> deleteMessage({required String accountSid, required String sid, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/2010-04-01/Accounts/${Uri.encodeComponent(accountSid)}/Messages/${Uri.encodeComponent(sid)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
);
 } 
 }
