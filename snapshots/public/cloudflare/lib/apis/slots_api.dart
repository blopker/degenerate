// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/nsc_account_tag.dart';import '../models/nsc_slot_info.dart';import '../models/nsc_slot_list.dart';/// SlotsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class SlotsApi with ApiExecutor {const SlotsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Retrieve a list of all slots matching the specified parameters
///
/// `GET /accounts/{account_id}/cni/slots`
Future<ApiResult<NscSlotList, Never>> listSlots({required NscAccountTag accountId, String? addressContains, String? site, String? speed, bool? occupied, int? cursor, int? limit, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (addressContains != null) {
  queryParameters['address_contains'] = addressContains;
}
if (site != null) {
  queryParameters['site'] = site;
}
if (speed != null) {
  queryParameters['speed'] = speed;
}
if (occupied != null) {
  queryParameters['occupied'] = occupied.toString();
}
if (cursor != null) {
  queryParameters['cursor'] = cursor.toString();
}
if (limit != null) {
  queryParameters['limit'] = limit.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/cni/slots',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return NscSlotList.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get information about the specified slot
///
/// `GET /accounts/{account_id}/cni/slots/{slot}`
Future<ApiResult<NscSlotInfo, Never>> getSlot({required String slot, required NscAccountTag accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/cni/slots/${Uri.encodeComponent(slot)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return NscSlotInfo.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
