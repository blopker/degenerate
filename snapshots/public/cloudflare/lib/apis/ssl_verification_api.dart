// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/tls_certificates_and_hostnames_cert_pack_uuid.dart';import '../models/tls_certificates_and_hostnames_components_schemas_validation_method.dart';import '../models/tls_certificates_and_hostnames_identifier.dart';import '../models/tls_certificates_and_hostnames_ssl_validation_method_response_collection_result.dart';import '../models/tls_certificates_and_hostnames_verification.dart';/// SslVerificationApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class SslVerificationApi with ApiExecutor {const SslVerificationApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// SSL Verification Details
///
/// Get SSL Verification Info for a Zone.
///
/// `GET /zones/{zone_id}/ssl/verification`
Future<ApiResult<List<TlsCertificatesAndHostnamesVerification>?, Never>> sslVerificationDetails({required TlsCertificatesAndHostnamesIdentifier zoneId, dynamic retry, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (retry != null) {
  queryParameters['retry'] = retry.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/ssl/verification',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => TlsCertificatesAndHostnamesVerification.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Edit SSL Certificate Pack Validation Method
///
/// Edit SSL validation method for a certificate pack. A PATCH request will request an immediate validation check on any certificate, and return the updated status. If a validation method is provided, the validation will be immediately attempted using that method.
///
/// `PATCH /zones/{zone_id}/ssl/verification/{certificate_pack_id}`
Future<ApiResult<TlsCertificatesAndHostnamesSslValidationMethodResponseCollectionResult?, Never>> sslVerificationEditSslCertificatePackValidationMethod({required TlsCertificatesAndHostnamesCertPackUuid certificatePackId, required TlsCertificatesAndHostnamesIdentifier zoneId, required TlsCertificatesAndHostnamesComponentsSchemasValidationMethod body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/ssl/verification/${Uri.encodeComponent(certificatePackId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? TlsCertificatesAndHostnamesSslValidationMethodResponseCollectionResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
 }
