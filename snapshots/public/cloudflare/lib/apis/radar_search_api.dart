// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/radar_get_search_global_exclude.dart';import '../models/radar_get_search_global_format.dart';import '../models/radar_get_search_global_include.dart';import '../models/radar_get_search_global_response400.dart';import '../models/radar_get_search_global_response_result.dart';/// RadarSearchApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class RadarSearchApi with ApiExecutor {const RadarSearchApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Search for locations, ASes, reports, and more
///
/// Searches for locations, autonomous systems, reports, bots, certificate logs, certificate authorities, industries and verticals
///
/// `GET /radar/search/global`
Future<ApiResult<RadarGetSearchGlobalResponseResult, RadarGetSearchGlobalResponse400>> radarGetSearchGlobal({int? limit, double? limitPerGroup, required String query, List<RadarGetSearchGlobalInclude>? include, List<RadarGetSearchGlobalExclude>? exclude, RadarGetSearchGlobalFormat? format, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (limit != null) {
  queryParameters['limit'] = limit.toString();
}
if (limitPerGroup != null) {
  queryParameters['limitPerGroup'] = limitPerGroup.toString();
}
queryParameters['query'] = query;
if (include != null) {
for (final item in include) {
  queryParametersList.add(ApiQueryParameter(name: 'include', value: item.toJson()));
}
}
if (exclude != null) {
for (final item in exclude) {
  queryParametersList.add(ApiQueryParameter(name: 'exclude', value: item.toJson()));
}
}
if (format != null) {
  queryParameters['format'] = format.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/radar/search/global',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return RadarGetSearchGlobalResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
    return RadarGetSearchGlobalResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
