// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/custom_origin_trust_store_create_request.dart';import '../models/tls_certificates_and_hostnames_custom_trust_store.dart';import '../models/tls_certificates_and_hostnames_custom_trust_store_response_id_only_result.dart';import '../models/tls_certificates_and_hostnames_identifier.dart';/// CustomOriginTrustStoreApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class CustomOriginTrustStoreApi with ApiExecutor {const CustomOriginTrustStoreApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Custom Origin Trust Store Details
///
/// Get Custom Origin Trust Store for a Zone.
///
/// `GET /zones/{zone_id}/acm/custom_trust_store`
Future<ApiResult<List<TlsCertificatesAndHostnamesCustomTrustStore>?, Never>> customOriginTrustStoreListDetails({required TlsCertificatesAndHostnamesIdentifier zoneId, double? page, double? perPage, int? limit, int? offset, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}
if (limit != null) {
  queryParameters['limit'] = limit.toString();
}
if (offset != null) {
  queryParameters['offset'] = offset.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/acm/custom_trust_store',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => TlsCertificatesAndHostnamesCustomTrustStore.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Upload Custom Origin Trust Store
///
/// Add Custom Origin Trust Store for a Zone.
///
/// `POST /zones/{zone_id}/acm/custom_trust_store`
Future<ApiResult<TlsCertificatesAndHostnamesCustomTrustStore?, Never>> customOriginTrustStoreCreate({required TlsCertificatesAndHostnamesIdentifier zoneId, required CustomOriginTrustStoreCreateRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/acm/custom_trust_store',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? TlsCertificatesAndHostnamesCustomTrustStore.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Custom Origin Trust Store Details
///
/// Retrieves details about a specific certificate in the custom origin trust store, including expiration and subject information.
///
/// `GET /zones/{zone_id}/acm/custom_trust_store/{custom_origin_trust_store_id}`
Future<ApiResult<TlsCertificatesAndHostnamesCustomTrustStore?, Never>> customOriginTrustStoreDetails({required TlsCertificatesAndHostnamesIdentifier customOriginTrustStoreId, required TlsCertificatesAndHostnamesIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/acm/custom_trust_store/${Uri.encodeComponent(customOriginTrustStoreId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? TlsCertificatesAndHostnamesCustomTrustStore.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Delete Custom Origin Trust Store
///
/// Removes a CA certificate from the custom origin trust store. Origins using certificates signed by this CA will no longer be trusted.
///
/// `DELETE /zones/{zone_id}/acm/custom_trust_store/{custom_origin_trust_store_id}`
Future<ApiResult<TlsCertificatesAndHostnamesCustomTrustStoreResponseIdOnlyResult?, Never>> customOriginTrustStoreDelete({required TlsCertificatesAndHostnamesIdentifier customOriginTrustStoreId, required TlsCertificatesAndHostnamesIdentifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/acm/custom_trust_store/${Uri.encodeComponent(customOriginTrustStoreId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? TlsCertificatesAndHostnamesCustomTrustStoreResponseIdOnlyResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
 }
