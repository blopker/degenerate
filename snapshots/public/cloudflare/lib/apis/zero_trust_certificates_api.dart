// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/zero_trust_gateway_generate_cert_request.dart';import '../models/zero_trust_gateway_response_collection.dart';import '../models/zero_trust_gateway_schemas_identifier.dart';import '../models/zero_trust_gateway_single_response.dart';import '../models/zero_trust_gateway_uuid.dart';/// ZeroTrustCertificatesApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class ZeroTrustCertificatesApi with ApiExecutor {const ZeroTrustCertificatesApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Zero Trust certificates
///
/// List all Zero Trust certificates for an account.
///
/// `GET /accounts/{account_id}/gateway/certificates`
Future<ApiResult<ZeroTrustGatewayResponseCollection, Never>> zeroTrustCertificatesListZeroTrustCertificates({required ZeroTrustGatewaySchemasIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/gateway/certificates',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ZeroTrustGatewayResponseCollection.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Create Zero Trust certificate
///
/// Create a new Zero Trust certificate.
///
/// `POST /accounts/{account_id}/gateway/certificates`
Future<ApiResult<ZeroTrustGatewaySingleResponse, Never>> zeroTrustCertificatesCreateZeroTrustCertificate({required ZeroTrustGatewaySchemasIdentifier accountId, ZeroTrustGatewayGenerateCertRequest? body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/gateway/certificates',
  headers: headers,
  body: jsonEncode(body?.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ZeroTrustGatewaySingleResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get Zero Trust certificate details
///
/// Get a single Zero Trust certificate.
///
/// `GET /accounts/{account_id}/gateway/certificates/{certificate_id}`
Future<ApiResult<ZeroTrustGatewaySingleResponse, Never>> zeroTrustCertificatesZeroTrustCertificateDetails({required ZeroTrustGatewayUuid certificateId, required ZeroTrustGatewaySchemasIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/gateway/certificates/${Uri.encodeComponent(certificateId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ZeroTrustGatewaySingleResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete Zero Trust certificate
///
/// Delete a gateway-managed Zero Trust certificate. You must deactivate the certificate from the edge (inactive) before deleting it.
///
/// `DELETE /accounts/{account_id}/gateway/certificates/{certificate_id}`
Future<ApiResult<ZeroTrustGatewaySingleResponse, Never>> zeroTrustCertificatesDeleteZeroTrustCertificate({required ZeroTrustGatewayUuid certificateId, required ZeroTrustGatewaySchemasIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/gateway/certificates/${Uri.encodeComponent(certificateId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ZeroTrustGatewaySingleResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Activate a Zero Trust certificate
///
/// Bind a single Zero Trust certificate to the edge.
///
/// `POST /accounts/{account_id}/gateway/certificates/{certificate_id}/activate`
Future<ApiResult<ZeroTrustGatewaySingleResponse, Never>> zeroTrustCertificatesActivateZeroTrustCertificate({required ZeroTrustGatewayUuid certificateId, required ZeroTrustGatewaySchemasIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/gateway/certificates/${Uri.encodeComponent(certificateId.toString())}/activate',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ZeroTrustGatewaySingleResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Deactivate a Zero Trust certificate
///
/// Unbind a single Zero Trust certificate from the edge.
///
/// `POST /accounts/{account_id}/gateway/certificates/{certificate_id}/deactivate`
Future<ApiResult<ZeroTrustGatewaySingleResponse, Never>> zeroTrustCertificatesDeactivateZeroTrustCertificate({required ZeroTrustGatewayUuid certificateId, required ZeroTrustGatewaySchemasIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/gateway/certificates/${Uri.encodeComponent(certificateId.toString())}/deactivate',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ZeroTrustGatewaySingleResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
