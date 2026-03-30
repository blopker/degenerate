// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/radar_get_reports_dataset_download_response400.dart';import '../models/radar_get_reports_datasets_dataset_type.dart';import '../models/radar_get_reports_datasets_format.dart';import '../models/radar_get_reports_datasets_response400.dart';import '../models/radar_get_reports_datasets_response_result.dart';import '../models/radar_post_reports_dataset_download_url_format.dart';import '../models/radar_post_reports_dataset_download_url_request.dart';import '../models/radar_post_reports_dataset_download_url_response400.dart';import '../models/radar_post_reports_dataset_download_url_response_result.dart';/// RadarDatasetsApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class RadarDatasetsApi with ApiExecutor {const RadarDatasetsApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List datasets
///
/// Retrieves a list of datasets.
///
/// `GET /radar/datasets`
Future<ApiResult<RadarGetReportsDatasetsResponseResult, RadarGetReportsDatasetsResponse400>> radarGetReportsDatasets({int? limit, int? offset, RadarGetReportsDatasetsDatasetType? datasetType, String? date, RadarGetReportsDatasetsFormat? format, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (limit != null) {
  queryParameters['limit'] = limit.toString();
}
if (offset != null) {
  queryParameters['offset'] = offset.toString();
}
if (datasetType != null) {
  queryParameters['datasetType'] = datasetType.toJson();
}
if (date != null) {
  queryParameters['date'] = date;
}
if (format != null) {
  queryParameters['format'] = format.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/radar/datasets',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return RadarGetReportsDatasetsResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
    return RadarGetReportsDatasetsResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get dataset CSV stream
///
/// Retrieves the CSV content of a given dataset by alias or ID. When getting the content by alias the latest dataset is returned, optionally filtered by the latest available at a given date.
///
/// `GET /radar/datasets/{alias}`
Future<ApiResult<String, RadarGetReportsDatasetDownloadResponse400>> radarGetReportsDatasetDownload({required String alias, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/radar/datasets/${Uri.encodeComponent(alias)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return response.body;
  },
  onError: (response) {
    return RadarGetReportsDatasetDownloadResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get dataset download URL
///
/// Retrieves an URL to download a single dataset.
///
/// `POST /radar/datasets/download`
Future<ApiResult<RadarPostReportsDatasetDownloadUrlResponseResult, RadarPostReportsDatasetDownloadUrlResponse400>> radarPostReportsDatasetDownloadUrl({RadarPostReportsDatasetDownloadUrlFormat? format, RadarPostReportsDatasetDownloadUrlRequest? body, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (format != null) {
  queryParameters['format'] = format.toJson();
}

final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/radar/datasets/download',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return RadarPostReportsDatasetDownloadUrlResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
    return RadarPostReportsDatasetDownloadUrlResponse400.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
