// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/usage_audio_speeches_bucket_width.dart';import '../models/usage_audio_speeches_group_by.dart';import '../models/usage_audio_transcriptions_bucket_width.dart';import '../models/usage_audio_transcriptions_group_by.dart';import '../models/usage_code_interpreter_sessions_bucket_width.dart';import '../models/usage_code_interpreter_sessions_group_by.dart';import '../models/usage_completions_bucket_width.dart';import '../models/usage_completions_group_by.dart';import '../models/usage_costs_bucket_width.dart';import '../models/usage_costs_group_by.dart';import '../models/usage_embeddings_bucket_width.dart';import '../models/usage_embeddings_group_by.dart';import '../models/usage_images_bucket_width.dart';import '../models/usage_images_group_by.dart';import '../models/usage_images_sizes.dart';import '../models/usage_images_sources.dart';import '../models/usage_moderations_bucket_width.dart';import '../models/usage_moderations_group_by.dart';import '../models/usage_response.dart';import '../models/usage_vector_stores_bucket_width.dart';import '../models/usage_vector_stores_group_by.dart';/// UsageApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class UsageApi with ApiExecutor {const UsageApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Get costs details for the organization.
///
/// `GET /organization/costs`
Future<ApiResult<UsageResponse, Never>> usageCosts({required int startTime, int? endTime, UsageCostsBucketWidth? bucketWidth, List<String>? projectIds, List<UsageCostsGroupBy>? groupBy, int? limit, String? page, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
queryParameters['start_time'] = startTime.toString();
if (endTime != null) {
  queryParameters['end_time'] = endTime.toString();
}
if (bucketWidth != null) {
  queryParameters['bucket_width'] = bucketWidth.toJson();
}
if (projectIds != null) {
for (final item in projectIds) {
  queryParametersList.add(ApiQueryParameter(name: 'project_ids', value: item));
}
}
if (groupBy != null) {
for (final item in groupBy) {
  queryParametersList.add(ApiQueryParameter(name: 'group_by', value: item.toJson()));
}
}
if (limit != null) {
  queryParameters['limit'] = limit.toString();
}
if (page != null) {
  queryParameters['page'] = page;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/organization/costs',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return UsageResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get audio speeches usage details for the organization.
///
/// `GET /organization/usage/audio_speeches`
Future<ApiResult<UsageResponse, Never>> usageAudioSpeeches({required int startTime, int? endTime, UsageAudioSpeechesBucketWidth? bucketWidth, List<String>? projectIds, List<String>? userIds, List<String>? apiKeyIds, List<String>? models, List<UsageAudioSpeechesGroupBy>? groupBy, int? limit, String? page, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
queryParameters['start_time'] = startTime.toString();
if (endTime != null) {
  queryParameters['end_time'] = endTime.toString();
}
if (bucketWidth != null) {
  queryParameters['bucket_width'] = bucketWidth.toJson();
}
if (projectIds != null) {
for (final item in projectIds) {
  queryParametersList.add(ApiQueryParameter(name: 'project_ids', value: item));
}
}
if (userIds != null) {
for (final item in userIds) {
  queryParametersList.add(ApiQueryParameter(name: 'user_ids', value: item));
}
}
if (apiKeyIds != null) {
for (final item in apiKeyIds) {
  queryParametersList.add(ApiQueryParameter(name: 'api_key_ids', value: item));
}
}
if (models != null) {
for (final item in models) {
  queryParametersList.add(ApiQueryParameter(name: 'models', value: item));
}
}
if (groupBy != null) {
for (final item in groupBy) {
  queryParametersList.add(ApiQueryParameter(name: 'group_by', value: item.toJson()));
}
}
if (limit != null) {
  queryParameters['limit'] = limit.toString();
}
if (page != null) {
  queryParameters['page'] = page;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/organization/usage/audio_speeches',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return UsageResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get audio transcriptions usage details for the organization.
///
/// `GET /organization/usage/audio_transcriptions`
Future<ApiResult<UsageResponse, Never>> usageAudioTranscriptions({required int startTime, int? endTime, UsageAudioTranscriptionsBucketWidth? bucketWidth, List<String>? projectIds, List<String>? userIds, List<String>? apiKeyIds, List<String>? models, List<UsageAudioTranscriptionsGroupBy>? groupBy, int? limit, String? page, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
queryParameters['start_time'] = startTime.toString();
if (endTime != null) {
  queryParameters['end_time'] = endTime.toString();
}
if (bucketWidth != null) {
  queryParameters['bucket_width'] = bucketWidth.toJson();
}
if (projectIds != null) {
for (final item in projectIds) {
  queryParametersList.add(ApiQueryParameter(name: 'project_ids', value: item));
}
}
if (userIds != null) {
for (final item in userIds) {
  queryParametersList.add(ApiQueryParameter(name: 'user_ids', value: item));
}
}
if (apiKeyIds != null) {
for (final item in apiKeyIds) {
  queryParametersList.add(ApiQueryParameter(name: 'api_key_ids', value: item));
}
}
if (models != null) {
for (final item in models) {
  queryParametersList.add(ApiQueryParameter(name: 'models', value: item));
}
}
if (groupBy != null) {
for (final item in groupBy) {
  queryParametersList.add(ApiQueryParameter(name: 'group_by', value: item.toJson()));
}
}
if (limit != null) {
  queryParameters['limit'] = limit.toString();
}
if (page != null) {
  queryParameters['page'] = page;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/organization/usage/audio_transcriptions',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return UsageResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get code interpreter sessions usage details for the organization.
///
/// `GET /organization/usage/code_interpreter_sessions`
Future<ApiResult<UsageResponse, Never>> usageCodeInterpreterSessions({required int startTime, int? endTime, UsageCodeInterpreterSessionsBucketWidth? bucketWidth, List<String>? projectIds, List<UsageCodeInterpreterSessionsGroupBy>? groupBy, int? limit, String? page, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
queryParameters['start_time'] = startTime.toString();
if (endTime != null) {
  queryParameters['end_time'] = endTime.toString();
}
if (bucketWidth != null) {
  queryParameters['bucket_width'] = bucketWidth.toJson();
}
if (projectIds != null) {
for (final item in projectIds) {
  queryParametersList.add(ApiQueryParameter(name: 'project_ids', value: item));
}
}
if (groupBy != null) {
for (final item in groupBy) {
  queryParametersList.add(ApiQueryParameter(name: 'group_by', value: item.toJson()));
}
}
if (limit != null) {
  queryParameters['limit'] = limit.toString();
}
if (page != null) {
  queryParameters['page'] = page;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/organization/usage/code_interpreter_sessions',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return UsageResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get completions usage details for the organization.
///
/// `GET /organization/usage/completions`
Future<ApiResult<UsageResponse, Never>> usageCompletions({required int startTime, int? endTime, UsageCompletionsBucketWidth? bucketWidth, List<String>? projectIds, List<String>? userIds, List<String>? apiKeyIds, List<String>? models, bool? batch, List<UsageCompletionsGroupBy>? groupBy, int? limit, String? page, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
queryParameters['start_time'] = startTime.toString();
if (endTime != null) {
  queryParameters['end_time'] = endTime.toString();
}
if (bucketWidth != null) {
  queryParameters['bucket_width'] = bucketWidth.toJson();
}
if (projectIds != null) {
for (final item in projectIds) {
  queryParametersList.add(ApiQueryParameter(name: 'project_ids', value: item));
}
}
if (userIds != null) {
for (final item in userIds) {
  queryParametersList.add(ApiQueryParameter(name: 'user_ids', value: item));
}
}
if (apiKeyIds != null) {
for (final item in apiKeyIds) {
  queryParametersList.add(ApiQueryParameter(name: 'api_key_ids', value: item));
}
}
if (models != null) {
for (final item in models) {
  queryParametersList.add(ApiQueryParameter(name: 'models', value: item));
}
}
if (batch != null) {
  queryParameters['batch'] = batch.toString();
}
if (groupBy != null) {
for (final item in groupBy) {
  queryParametersList.add(ApiQueryParameter(name: 'group_by', value: item.toJson()));
}
}
if (limit != null) {
  queryParameters['limit'] = limit.toString();
}
if (page != null) {
  queryParameters['page'] = page;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/organization/usage/completions',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return UsageResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get embeddings usage details for the organization.
///
/// `GET /organization/usage/embeddings`
Future<ApiResult<UsageResponse, Never>> usageEmbeddings({required int startTime, int? endTime, UsageEmbeddingsBucketWidth? bucketWidth, List<String>? projectIds, List<String>? userIds, List<String>? apiKeyIds, List<String>? models, List<UsageEmbeddingsGroupBy>? groupBy, int? limit, String? page, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
queryParameters['start_time'] = startTime.toString();
if (endTime != null) {
  queryParameters['end_time'] = endTime.toString();
}
if (bucketWidth != null) {
  queryParameters['bucket_width'] = bucketWidth.toJson();
}
if (projectIds != null) {
for (final item in projectIds) {
  queryParametersList.add(ApiQueryParameter(name: 'project_ids', value: item));
}
}
if (userIds != null) {
for (final item in userIds) {
  queryParametersList.add(ApiQueryParameter(name: 'user_ids', value: item));
}
}
if (apiKeyIds != null) {
for (final item in apiKeyIds) {
  queryParametersList.add(ApiQueryParameter(name: 'api_key_ids', value: item));
}
}
if (models != null) {
for (final item in models) {
  queryParametersList.add(ApiQueryParameter(name: 'models', value: item));
}
}
if (groupBy != null) {
for (final item in groupBy) {
  queryParametersList.add(ApiQueryParameter(name: 'group_by', value: item.toJson()));
}
}
if (limit != null) {
  queryParameters['limit'] = limit.toString();
}
if (page != null) {
  queryParameters['page'] = page;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/organization/usage/embeddings',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return UsageResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get images usage details for the organization.
///
/// `GET /organization/usage/images`
Future<ApiResult<UsageResponse, Never>> usageImages({required int startTime, int? endTime, UsageImagesBucketWidth? bucketWidth, List<UsageImagesSources>? sources, List<UsageImagesSizes>? sizes, List<String>? projectIds, List<String>? userIds, List<String>? apiKeyIds, List<String>? models, List<UsageImagesGroupBy>? groupBy, int? limit, String? page, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
queryParameters['start_time'] = startTime.toString();
if (endTime != null) {
  queryParameters['end_time'] = endTime.toString();
}
if (bucketWidth != null) {
  queryParameters['bucket_width'] = bucketWidth.toJson();
}
if (sources != null) {
for (final item in sources) {
  queryParametersList.add(ApiQueryParameter(name: 'sources', value: item.toJson()));
}
}
if (sizes != null) {
for (final item in sizes) {
  queryParametersList.add(ApiQueryParameter(name: 'sizes', value: item.toJson()));
}
}
if (projectIds != null) {
for (final item in projectIds) {
  queryParametersList.add(ApiQueryParameter(name: 'project_ids', value: item));
}
}
if (userIds != null) {
for (final item in userIds) {
  queryParametersList.add(ApiQueryParameter(name: 'user_ids', value: item));
}
}
if (apiKeyIds != null) {
for (final item in apiKeyIds) {
  queryParametersList.add(ApiQueryParameter(name: 'api_key_ids', value: item));
}
}
if (models != null) {
for (final item in models) {
  queryParametersList.add(ApiQueryParameter(name: 'models', value: item));
}
}
if (groupBy != null) {
for (final item in groupBy) {
  queryParametersList.add(ApiQueryParameter(name: 'group_by', value: item.toJson()));
}
}
if (limit != null) {
  queryParameters['limit'] = limit.toString();
}
if (page != null) {
  queryParameters['page'] = page;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/organization/usage/images',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return UsageResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get moderations usage details for the organization.
///
/// `GET /organization/usage/moderations`
Future<ApiResult<UsageResponse, Never>> usageModerations({required int startTime, int? endTime, UsageModerationsBucketWidth? bucketWidth, List<String>? projectIds, List<String>? userIds, List<String>? apiKeyIds, List<String>? models, List<UsageModerationsGroupBy>? groupBy, int? limit, String? page, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
queryParameters['start_time'] = startTime.toString();
if (endTime != null) {
  queryParameters['end_time'] = endTime.toString();
}
if (bucketWidth != null) {
  queryParameters['bucket_width'] = bucketWidth.toJson();
}
if (projectIds != null) {
for (final item in projectIds) {
  queryParametersList.add(ApiQueryParameter(name: 'project_ids', value: item));
}
}
if (userIds != null) {
for (final item in userIds) {
  queryParametersList.add(ApiQueryParameter(name: 'user_ids', value: item));
}
}
if (apiKeyIds != null) {
for (final item in apiKeyIds) {
  queryParametersList.add(ApiQueryParameter(name: 'api_key_ids', value: item));
}
}
if (models != null) {
for (final item in models) {
  queryParametersList.add(ApiQueryParameter(name: 'models', value: item));
}
}
if (groupBy != null) {
for (final item in groupBy) {
  queryParametersList.add(ApiQueryParameter(name: 'group_by', value: item.toJson()));
}
}
if (limit != null) {
  queryParameters['limit'] = limit.toString();
}
if (page != null) {
  queryParameters['page'] = page;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/organization/usage/moderations',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return UsageResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get vector stores usage details for the organization.
///
/// `GET /organization/usage/vector_stores`
Future<ApiResult<UsageResponse, Never>> usageVectorStores({required int startTime, int? endTime, UsageVectorStoresBucketWidth? bucketWidth, List<String>? projectIds, List<UsageVectorStoresGroupBy>? groupBy, int? limit, String? page, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
queryParameters['start_time'] = startTime.toString();
if (endTime != null) {
  queryParameters['end_time'] = endTime.toString();
}
if (bucketWidth != null) {
  queryParameters['bucket_width'] = bucketWidth.toJson();
}
if (projectIds != null) {
for (final item in projectIds) {
  queryParametersList.add(ApiQueryParameter(name: 'project_ids', value: item));
}
}
if (groupBy != null) {
for (final item in groupBy) {
  queryParametersList.add(ApiQueryParameter(name: 'group_by', value: item.toJson()));
}
}
if (limit != null) {
  queryParameters['limit'] = limit.toString();
}
if (page != null) {
  queryParameters['page'] = page;
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/organization/usage/vector_stores',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return UsageResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
