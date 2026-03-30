// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/analyze_certificate_analyze_certificate_request.dart';import '../models/tls_certificates_and_hostnames_identifier.dart';/// AnalyzeCertificateApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class AnalyzeCertificateApi with ApiExecutor {const AnalyzeCertificateApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Analyze Certificate
///
/// Returns the set of hostnames, the signature algorithm, and the expiration date of the certificate.
///
/// `POST /zones/{zone_id}/ssl/analyze`
Future<ApiResult<Map<String, dynamic>?, Never>> analyzeCertificate({required TlsCertificatesAndHostnamesIdentifier zoneId, required AnalyzeCertificateAnalyzeCertificateRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/ssl/analyze',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, v));
  },
);
 } 
 }
