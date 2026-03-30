// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/origin_ca_create_certificate_request.dart';import '../models/tls_certificates_and_hostnames_certificate_revoke_response_result.dart';import '../models/tls_certificates_and_hostnames_certificates.dart';import '../models/tls_certificates_and_hostnames_identifier.dart';/// OriginCaApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class OriginCaApi with ApiExecutor {const OriginCaApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Certificates
///
/// List all existing Origin CA certificates for a given zone. You can use an Origin CA Key as your User Service Key or an API token when calling this endpoint ([see above](#requests)).
///
/// `GET /certificates`
Future<ApiResult<List<TlsCertificatesAndHostnamesCertificates>?, Never>> originCaListCertificates({required TlsCertificatesAndHostnamesIdentifier zoneId, double? page, double? perPage, int? limit, int? offset, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
queryParameters['zone_id'] = zoneId.toString();
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
  path: '/certificates',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => TlsCertificatesAndHostnamesCertificates.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Create Certificate
///
/// Create an Origin CA certificate. You can use an Origin CA Key as your User Service Key or an API token when calling this endpoint ([see above](#requests)).
///
/// `POST /certificates`
Future<ApiResult<TlsCertificatesAndHostnamesCertificates?, Never>> originCaCreateCertificate({required OriginCaCreateCertificateRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/certificates',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? TlsCertificatesAndHostnamesCertificates.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Get Certificate
///
/// Get an existing Origin CA certificate by its serial number. You can use an Origin CA Key as your User Service Key or an API token when calling this endpoint ([see above](#requests)).
///
/// `GET /certificates/{certificate_id}`
Future<ApiResult<TlsCertificatesAndHostnamesCertificates?, Never>> originCaGetCertificate({required TlsCertificatesAndHostnamesIdentifier certificateId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/certificates/${Uri.encodeComponent(certificateId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? TlsCertificatesAndHostnamesCertificates.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Revoke Certificate
///
/// Revoke an existing Origin CA certificate by its serial number. You can use an Origin CA Key as your User Service Key or an API token when calling this endpoint ([see above](#requests)).
///
/// `DELETE /certificates/{certificate_id}`
Future<ApiResult<TlsCertificatesAndHostnamesCertificateRevokeResponseResult?, Never>> originCaRevokeCertificate({required TlsCertificatesAndHostnamesIdentifier certificateId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/certificates/${Uri.encodeComponent(certificateId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? TlsCertificatesAndHostnamesCertificateRevokeResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
 }
