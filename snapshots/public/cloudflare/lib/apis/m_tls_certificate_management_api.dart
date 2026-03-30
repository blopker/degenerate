// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/m_tls_certificate_management_upload_m_tls_certificate_request.dart';import '../models/tls_certificates_and_hostnames_association_object.dart';import '../models/tls_certificates_and_hostnames_certificate_object_post.dart';import '../models/tls_certificates_and_hostnames_components_schemas_certificate_object.dart';import '../models/tls_certificates_and_hostnames_identifier.dart';/// MTlsCertificateManagementApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class MTlsCertificateManagementApi with ApiExecutor {const MTlsCertificateManagementApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List mTLS certificates
///
/// Lists all mTLS certificates uploaded to your account, such as Bring Your Own CA (BYO-CA) for mTLS. To list certificates issued by the Cloudflare managed CA, use the [List Client Certificates endpoint](/api/resources/client_certificates/methods/list/).
///
/// `GET /accounts/{account_id}/mtls_certificates`
Future<ApiResult<List<TlsCertificatesAndHostnamesComponentsSchemasCertificateObject>?, Never>> mTlsCertificateManagementListMTlsCertificates({required TlsCertificatesAndHostnamesIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/mtls_certificates',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => TlsCertificatesAndHostnamesComponentsSchemasCertificateObject.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Upload mTLS certificate
///
/// Upload a certificate that you want to use with mTLS-enabled Cloudflare services, such as Bring Your Own CA (BYO-CA) for mTLS. To create certificates issued by the Cloudflare managed CA, use the [Create Client Certificate endpoint](/api/resources/client_certificates/methods/create/).
///
/// `POST /accounts/{account_id}/mtls_certificates`
Future<ApiResult<TlsCertificatesAndHostnamesCertificateObjectPost?, Never>> mTlsCertificateManagementUploadMTlsCertificate({required TlsCertificatesAndHostnamesIdentifier accountId, required MTlsCertificateManagementUploadMTlsCertificateRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/mtls_certificates',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? TlsCertificatesAndHostnamesCertificateObjectPost.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Get mTLS certificate
///
/// Fetches a single mTLS certificate uploaded to your account. To get a certificate issued by the Cloudflare managed CA, use the [Client Certificate Details endpoint](/api/resources/client_certificates/methods/get/).
///
/// `GET /accounts/{account_id}/mtls_certificates/{mtls_certificate_id}`
Future<ApiResult<TlsCertificatesAndHostnamesComponentsSchemasCertificateObject?, Never>> mTlsCertificateManagementGetMTlsCertificate({required TlsCertificatesAndHostnamesIdentifier mtlsCertificateId, required TlsCertificatesAndHostnamesIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/mtls_certificates/${Uri.encodeComponent(mtlsCertificateId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? TlsCertificatesAndHostnamesComponentsSchemasCertificateObject.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Delete mTLS certificate
///
/// Deletes the mTLS certificate unless the certificate is in use by one or more Cloudflare services.
///
/// `DELETE /accounts/{account_id}/mtls_certificates/{mtls_certificate_id}`
Future<ApiResult<TlsCertificatesAndHostnamesComponentsSchemasCertificateObject?, Never>> mTlsCertificateManagementDeleteMTlsCertificate({required TlsCertificatesAndHostnamesIdentifier mtlsCertificateId, required TlsCertificatesAndHostnamesIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/mtls_certificates/${Uri.encodeComponent(mtlsCertificateId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? TlsCertificatesAndHostnamesComponentsSchemasCertificateObject.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// List mTLS certificate associations
///
/// Lists all active associations between the certificate and Cloudflare services.
///
/// `GET /accounts/{account_id}/mtls_certificates/{mtls_certificate_id}/associations`
Future<ApiResult<List<TlsCertificatesAndHostnamesAssociationObject>?, Never>> mTlsCertificateManagementListMTlsCertificateAssociations({required TlsCertificatesAndHostnamesIdentifier mtlsCertificateId, required TlsCertificatesAndHostnamesIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/mtls_certificates/${Uri.encodeComponent(mtlsCertificateId.toString())}/associations',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => TlsCertificatesAndHostnamesAssociationObject.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
 }
