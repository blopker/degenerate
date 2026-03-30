// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/access_certificates.dart';import '../models/access_components_schemas_id_response_result.dart';import '../models/access_identifier.dart';import '../models/access_mtls_authentication_add_an_mtls_certificate_request.dart';import '../models/access_mtls_authentication_update_an_mtls_certificate_request.dart';import '../models/access_mtls_authentication_update_an_mtls_certificate_settings_request.dart';import '../models/access_settings.dart';import '../models/access_uuid.dart';/// AccessMTlsAuthenticationApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class AccessMTlsAuthenticationApi with ApiExecutor {const AccessMTlsAuthenticationApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List mTLS certificates
///
/// Lists all mTLS root certificates.
///
/// `GET /accounts/{account_id}/access/certificates`
Future<ApiResult<List<AccessCertificates>?, Never>> accessMtlsAuthenticationListMtlsCertificates({required AccessIdentifier accountId, int? page, int? perPage, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (page != null) {
  queryParameters['page'] = page.toString();
}
if (perPage != null) {
  queryParameters['per_page'] = perPage.toString();
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/certificates',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => AccessCertificates.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Add an mTLS certificate
///
/// Adds a new mTLS root certificate to Access.
///
/// `POST /accounts/{account_id}/access/certificates`
Future<ApiResult<AccessCertificates?, Never>> accessMtlsAuthenticationAddAnMtlsCertificate({required AccessIdentifier accountId, required AccessMtlsAuthenticationAddAnMtlsCertificateRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/certificates',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? AccessCertificates.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Get an mTLS certificate
///
/// Fetches a single mTLS certificate.
///
/// `GET /accounts/{account_id}/access/certificates/{certificate_id}`
Future<ApiResult<AccessCertificates?, Never>> accessMtlsAuthenticationGetAnMtlsCertificate({required AccessUuid certificateId, required AccessIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/certificates/${Uri.encodeComponent(certificateId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? AccessCertificates.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Update an mTLS certificate
///
/// Updates a configured mTLS certificate.
///
/// `PUT /accounts/{account_id}/access/certificates/{certificate_id}`
Future<ApiResult<AccessCertificates?, Never>> accessMtlsAuthenticationUpdateAnMtlsCertificate({required AccessUuid certificateId, required AccessIdentifier accountId, required AccessMtlsAuthenticationUpdateAnMtlsCertificateRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/certificates/${Uri.encodeComponent(certificateId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? AccessCertificates.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Delete an mTLS certificate
///
/// Deletes an mTLS certificate.
///
/// `DELETE /accounts/{account_id}/access/certificates/{certificate_id}`
Future<ApiResult<AccessComponentsSchemasIdResponseResult?, Never>> accessMtlsAuthenticationDeleteAnMtlsCertificate({required AccessUuid certificateId, required AccessIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/certificates/${Uri.encodeComponent(certificateId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? AccessComponentsSchemasIdResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// List all mTLS hostname settings
///
/// List all mTLS hostname settings for this account.
///
/// `GET /accounts/{account_id}/access/certificates/settings`
Future<ApiResult<List<AccessSettings>?, Never>> accessMtlsAuthenticationListMtlsCertificatesHostnameSettings({required AccessIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/certificates/settings',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => AccessSettings.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Update an mTLS certificate's hostname settings
///
/// Updates an mTLS certificate's hostname settings.
///
/// `PUT /accounts/{account_id}/access/certificates/settings`
Future<ApiResult<List<AccessSettings>?, Never>> accessMtlsAuthenticationUpdateAnMtlsCertificateSettings({required AccessIdentifier accountId, required AccessMtlsAuthenticationUpdateAnMtlsCertificateSettingsRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/certificates/settings',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => AccessSettings.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
 }
