// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/error_model.dart';import '../models/query.dart';import '../models/query_bulk.dart';import '../models/query_match.dart';/// DomainSearchApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class DomainSearchApi with ApiExecutor {const DomainSearchApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Read matches for string queries by ID
///
/// Return matches for string queries based on ID
///
/// `GET /accounts/{account_id}/brand-protection/matches`
Future<ApiResult<QueryMatch, ErrorModel>> getAccountsBrandProtectionMatches({required String accountId, String? id, int? offset, int? limit, bool? includeDomainId, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (id != null) {
  queryParameters['id'] = id;
}
if (offset != null) {
  queryParameters['offset'] = offset.toString();
}
if (limit != null) {
  queryParameters['limit'] = limit.toString();
}
if (includeDomainId != null) {
  queryParameters['include_domain_id'] = includeDomainId.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/brand-protection/matches',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return QueryMatch.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return ErrorModel.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Download matches for string queries by ID
///
/// Return matches as CSV for string queries based on ID
///
/// `GET /accounts/{account_id}/brand-protection/matches/download`
Future<ApiResult<QueryMatch, ErrorModel>> getAccountsBrandProtectionMatchesDownload({required String accountId, String? id, int? offset, int? limit, bool? includeDomainId, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (id != null) {
  queryParameters['id'] = id;
}
if (offset != null) {
  queryParameters['offset'] = offset.toString();
}
if (limit != null) {
  queryParameters['limit'] = limit.toString();
}
if (includeDomainId != null) {
  queryParameters['include_domain_id'] = includeDomainId.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/brand-protection/matches/download',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return QueryMatch.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return ErrorModel.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Read string queries by ID
///
/// Return string queries based on ID
///
/// `GET /accounts/{account_id}/brand-protection/queries`
Future<ApiResult<void, ErrorModel>> getAccountsBrandProtectionQueries({required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/brand-protection/queries',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
  onError: (response) {
    return ErrorModel.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create new saved string queries
///
/// Return a success message after creating new saved string queries
///
/// `POST /accounts/{account_id}/brand-protection/queries`
Future<ApiResult<void, ErrorModel>> postAccountsBrandProtectionQueries({required String accountId, String? id, String? tag, bool? scan, required Query body, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (id != null) {
  queryParameters['id'] = id;
}
if (tag != null) {
  queryParameters['tag'] = tag;
}
if (scan != null) {
  queryParameters['scan'] = scan.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/brand-protection/queries',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
  onError: (response) {
    return ErrorModel.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update saved string queries by ID
///
/// Return a success message after updating saved string queries by ID
///
/// `PATCH /accounts/{account_id}/brand-protection/queries`
Future<ApiResult<void, ErrorModel>> patchAccountsBrandProtectionQueries({required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId)}/brand-protection/queries',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
  onError: (response) {
    return ErrorModel.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete saved string queries by ID
///
/// Return a success message after deleting saved string queries by ID
///
/// `DELETE /accounts/{account_id}/brand-protection/queries`
Future<ApiResult<void, ErrorModel>> deleteAccountsBrandProtectionQueries({required String accountId, String? id, String? tag, bool? scan, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (id != null) {
  queryParameters['id'] = id;
}
if (tag != null) {
  queryParameters['tag'] = tag;
}
if (scan != null) {
  queryParameters['scan'] = scan.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId)}/brand-protection/queries',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
  onError: (response) {
    return ErrorModel.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create new saved string queries in bulk
///
/// Return a success message after creating new saved string queries in bulk
///
/// `POST /accounts/{account_id}/brand-protection/queries/bulk`
Future<ApiResult<void, ErrorModel>> postAccountsBrandProtectionQueriesBulk({required String accountId, required QueryBulk body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/brand-protection/queries/bulk',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
  onError: (response) {
    return ErrorModel.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create new string queries
///
/// Return new string queries
///
/// `POST /accounts/{account_id}/brand-protection/search`
Future<ApiResult<void, ErrorModel>> postAccountsBrandProtectionSearch({required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId)}/brand-protection/search',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
  onError: (response) {
    return ErrorModel.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Read the total number of saved string queries
///
/// Return the total number of saved string queries
///
/// `GET /accounts/{account_id}/brand-protection/total-queries`
Future<ApiResult<void, ErrorModel>> getAccountsBrandProtectionTotalQueries({required String accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId)}/brand-protection/total-queries',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (_) {},
  onError: (response) {
    return ErrorModel.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
