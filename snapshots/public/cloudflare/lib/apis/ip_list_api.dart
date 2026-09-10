// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/intel_identifier.dart';import '../models/intel_ip_list.dart';import '../models/ip_list_get_ip_lists_response4xx.dart';/// IpListApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class IpListApi with ApiExecutor {const IpListApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get Available IP Lists
///
/// Returns a list of available IP list categories (e.g., anonymizer, botnetcc, malware, tor, vpn, open_proxies). This endpoint provides metadata about which IP lists are available in the system.
///
/// `GET /accounts/{account_id}/intel/ip-lists`
Future<ApiResult<List<IntelIpList>, IpListGetIpListsResponse4xx>> ipListGetIpLists({required IntelIdentifier accountId, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/intel/ip-lists',
  headers: headers,
  options: options,
);

return await execute(
  request,
  onSuccess: (response) {
final json = jsonDecode(response.body) as Map<String, dynamic>;
return (json['result'] as List<dynamic>).map((e) => IntelIpList.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return IpListGetIpListsResponse4xx.fromJson(json as Map<String, dynamic>);
default:
return null;
}

  },
);
}
}
