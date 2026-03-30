// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/digital_experience_monitoring_account_identifier.dart';import '../models/list_warp_change_events_response.dart';import '../models/list_warp_change_events_sort_order.dart';import '../models/list_warp_change_events_toggle.dart';import '../models/list_warp_change_events_type.dart';/// WarpChangeEventsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class WarpChangeEventsApi with ApiExecutor {const WarpChangeEventsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List WARP change events.
///
/// List WARP configuration and enablement toggle change events by device.
///
/// `GET /accounts/{account_id}/dex/warp-change-events`
Future<ApiResult<ListWarpChangeEventsResponse, Never>> listWarpChangeEvents({required DigitalExperienceMonitoringAccountIdentifier accountId, required double page, required double perPage, required String from, required String to, ListWarpChangeEventsType? type, ListWarpChangeEventsToggle? toggle, String? configName, String? accountName, ListWarpChangeEventsSortOrder? sortOrder, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
queryParameters['page'] = page.toString();
queryParameters['per_page'] = perPage.toString();
queryParameters['from'] = from;
queryParameters['to'] = to;
if (type != null) {
  queryParameters['type'] = type.toJson();
}
if (toggle != null) {
  queryParameters['toggle'] = toggle.toJson();
}
if (configName != null) {
  queryParameters['config_name'] = configName;
}
if (accountName != null) {
  queryParameters['account_name'] = accountName;
}
if (sortOrder != null) {
  queryParameters['sort_order'] = sortOrder.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/dex/warp-change-events',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ListWarpChangeEventsResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
