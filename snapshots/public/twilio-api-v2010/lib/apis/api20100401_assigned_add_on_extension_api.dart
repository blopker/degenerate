// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/account_incoming_phone_number_incoming_phone_number_assigned_add_on_incoming_phone_number_assigned_add_on_extension.dart';import '../models/list_incoming_phone_number_assigned_add_on_extension_response.dart';/// Api20100401AssignedAddOnExtensionApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class Api20100401AssignedAddOnExtensionApi with ApiExecutor {const Api20100401AssignedAddOnExtensionApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Fetch an instance of an Extension for the Assigned Add-on.
///
/// `GET /2010-04-01/Accounts/{AccountSid}/IncomingPhoneNumbers/{ResourceSid}/AssignedAddOns/{AssignedAddOnSid}/Extensions/{Sid}.json`
Future<ApiResult<AccountIncomingPhoneNumberIncomingPhoneNumberAssignedAddOnIncomingPhoneNumberAssignedAddOnExtension, Never>> fetchIncomingPhoneNumberAssignedAddOnExtension({required String accountSid, required String resourceSid, required String assignedAddOnSid, required String sid, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/2010-04-01/Accounts/${Uri.encodeComponent(accountSid)}/IncomingPhoneNumbers/${Uri.encodeComponent(resourceSid)}/AssignedAddOns/${Uri.encodeComponent(assignedAddOnSid)}/Extensions/${Uri.encodeComponent(sid)}.json',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccountIncomingPhoneNumberIncomingPhoneNumberAssignedAddOnIncomingPhoneNumberAssignedAddOnExtension.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Retrieve a list of Extensions for the Assigned Add-on.
///
/// `GET /2010-04-01/Accounts/{AccountSid}/IncomingPhoneNumbers/{ResourceSid}/AssignedAddOns/{AssignedAddOnSid}/Extensions.json`
Future<ApiResult<ListIncomingPhoneNumberAssignedAddOnExtensionResponse, Never>> listIncomingPhoneNumberAssignedAddOnExtension({required String accountSid, required String resourceSid, required String assignedAddOnSid, int? pageSize, int? page, String? pageToken, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (pageSize != null) queryParameters['PageSize'] = pageSize.toString();
if (page != null) queryParameters['Page'] = page.toString();
if (pageToken != null) queryParameters['PageToken'] = pageToken;

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/2010-04-01/Accounts/${Uri.encodeComponent(accountSid)}/IncomingPhoneNumbers/${Uri.encodeComponent(resourceSid)}/AssignedAddOns/${Uri.encodeComponent(assignedAddOnSid)}/Extensions.json',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ListIncomingPhoneNumberAssignedAddOnExtensionResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
