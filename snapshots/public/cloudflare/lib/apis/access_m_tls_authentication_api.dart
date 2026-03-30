// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/access_certificates_components_schemas_response_collection.dart';import '../models/access_certificates_components_schemas_single_response.dart';import '../models/access_components_schemas_id_response.dart';import '../models/access_identifier.dart';import '../models/access_mtls_authentication_add_an_mtls_certificate_request.dart';import '../models/access_mtls_authentication_update_an_mtls_certificate_request.dart';import '../models/access_mtls_authentication_update_an_mtls_certificate_settings_request.dart';import '../models/access_response_collection_hostnames.dart';import '../models/access_uuid.dart';/// AccessMTlsAuthenticationApi operations.
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
Future<ApiResult<AccessCertificatesComponentsSchemasResponseCollection, Never>> accessMtlsAuthenticationListMtlsCertificates({required AccessIdentifier accountId, int? page, int? perPage, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
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
    return AccessCertificatesComponentsSchemasResponseCollection.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Add an mTLS certificate
///
/// Adds a new mTLS root certificate to Access.
///
/// `POST /accounts/{account_id}/access/certificates`
Future<ApiResult<AccessCertificatesComponentsSchemasSingleResponse, Never>> accessMtlsAuthenticationAddAnMtlsCertificate({required AccessIdentifier accountId, required AccessMtlsAuthenticationAddAnMtlsCertificateRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    return AccessCertificatesComponentsSchemasSingleResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get an mTLS certificate
///
/// Fetches a single mTLS certificate.
///
/// `GET /accounts/{account_id}/access/certificates/{certificate_id}`
Future<ApiResult<AccessCertificatesComponentsSchemasSingleResponse, Never>> accessMtlsAuthenticationGetAnMtlsCertificate({required AccessUuid certificateId, required AccessIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/certificates/${Uri.encodeComponent(certificateId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccessCertificatesComponentsSchemasSingleResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update an mTLS certificate
///
/// Updates a configured mTLS certificate.
///
/// `PUT /accounts/{account_id}/access/certificates/{certificate_id}`
Future<ApiResult<AccessCertificatesComponentsSchemasSingleResponse, Never>> accessMtlsAuthenticationUpdateAnMtlsCertificate({required AccessUuid certificateId, required AccessIdentifier accountId, required AccessMtlsAuthenticationUpdateAnMtlsCertificateRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    return AccessCertificatesComponentsSchemasSingleResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete an mTLS certificate
///
/// Deletes an mTLS certificate.
///
/// `DELETE /accounts/{account_id}/access/certificates/{certificate_id}`
Future<ApiResult<AccessComponentsSchemasIdResponse, Never>> accessMtlsAuthenticationDeleteAnMtlsCertificate({required AccessUuid certificateId, required AccessIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/certificates/${Uri.encodeComponent(certificateId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccessComponentsSchemasIdResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// List all mTLS hostname settings
///
/// List all mTLS hostname settings for this account.
///
/// `GET /accounts/{account_id}/access/certificates/settings`
Future<ApiResult<AccessResponseCollectionHostnames, Never>> accessMtlsAuthenticationListMtlsCertificatesHostnameSettings({required AccessIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/access/certificates/settings',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return AccessResponseCollectionHostnames.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update an mTLS certificate's hostname settings
///
/// Updates an mTLS certificate's hostname settings.
///
/// `PUT /accounts/{account_id}/access/certificates/settings`
Future<ApiResult<AccessResponseCollectionHostnames, Never>> accessMtlsAuthenticationUpdateAnMtlsCertificateSettings({required AccessIdentifier accountId, required AccessMtlsAuthenticationUpdateAnMtlsCertificateSettingsRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
    return AccessResponseCollectionHostnames.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
