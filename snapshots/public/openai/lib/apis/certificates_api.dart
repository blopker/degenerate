// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/certificate.dart';import '../models/delete_certificate_response.dart';import '../models/get_certificate_include.dart';import '../models/list_certificates_response.dart';import '../models/list_organization_certificates_order.dart';import '../models/list_project_certificates_order.dart';import '../models/modify_certificate_request.dart';import '../models/toggle_certificates_request.dart';import '../models/upload_certificate_request.dart';/// CertificatesApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class CertificatesApi with ApiExecutor {const CertificatesApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List uploaded certificates for this organization.
///
/// `GET /organization/certificates`
Future<ApiResult<ListCertificatesResponse, Never>> listOrganizationCertificates({int? limit, String? after, ListOrganizationCertificatesOrder? order, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (limit != null) queryParameters['limit'] = limit.toString();
if (after != null) queryParameters['after'] = after;
if (order != null) queryParameters['order'] = order.toJson();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/organization/certificates',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ListCertificatesResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Upload a certificate to the organization. This does **not** automatically activate the certificate.
/// 
/// Organizations can upload up to 50 certificates.
/// 
///
/// `POST /organization/certificates`
Future<ApiResult<Certificate, Never>> uploadCertificate({required UploadCertificateRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/organization/certificates',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return Certificate.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Activate certificates at the organization level.
/// 
/// You can atomically and idempotently activate up to 10 certificates at a time.
/// 
///
/// `POST /organization/certificates/activate`
Future<ApiResult<ListCertificatesResponse, Never>> activateOrganizationCertificates({required ToggleCertificatesRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/organization/certificates/activate',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ListCertificatesResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Deactivate certificates at the organization level.
/// 
/// You can atomically and idempotently deactivate up to 10 certificates at a time.
/// 
///
/// `POST /organization/certificates/deactivate`
Future<ApiResult<ListCertificatesResponse, Never>> deactivateOrganizationCertificates({required ToggleCertificatesRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/organization/certificates/deactivate',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ListCertificatesResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Get a certificate that has been uploaded to the organization.
/// 
/// You can get a certificate regardless of whether it is active or not.
/// 
///
/// `GET /organization/certificates/{certificate_id}`
Future<ApiResult<Certificate, Never>> getCertificate({required String certificateId, List<GetCertificateInclude>? include, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (include != null) {
for (final item in include) {
  queryParametersList.add(ApiQueryParameter(name: 'include', value: item.toJson(), allowReserved: false));
}
}

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/organization/certificates/${Uri.encodeComponent(certificateId)}',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return Certificate.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Modify a certificate. Note that only the name can be modified.
/// 
///
/// `POST /organization/certificates/{certificate_id}`
Future<ApiResult<Certificate, Never>> modifyCertificate({required String certificateId, required ModifyCertificateRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/organization/certificates/${Uri.encodeComponent(certificateId)}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return Certificate.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete a certificate from the organization.
/// 
/// The certificate must be inactive for the organization and all projects.
/// 
///
/// `DELETE /organization/certificates/{certificate_id}`
Future<ApiResult<DeleteCertificateResponse, Never>> deleteCertificate({required String certificateId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/organization/certificates/${Uri.encodeComponent(certificateId)}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return DeleteCertificateResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// List certificates for this project.
///
/// `GET /organization/projects/{project_id}/certificates`
Future<ApiResult<ListCertificatesResponse, Never>> listProjectCertificates({required String projectId, int? limit, String? after, ListProjectCertificatesOrder? order, RequestOptions? options, }) async  { final queryParameters = <String, String>{...apiConfig.defaultQueryParameters};
final queryParametersList = <ApiQueryParameter>[];
if (limit != null) queryParameters['limit'] = limit.toString();
if (after != null) queryParameters['after'] = after;
if (order != null) queryParameters['order'] = order.toJson();

final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/organization/projects/${Uri.encodeComponent(projectId)}/certificates',
  headers: headers,
  queryParameters: queryParameters,
  queryParametersList: queryParametersList,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ListCertificatesResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Activate certificates at the project level.
/// 
/// You can atomically and idempotently activate up to 10 certificates at a time.
/// 
///
/// `POST /organization/projects/{project_id}/certificates/activate`
Future<ApiResult<ListCertificatesResponse, Never>> activateProjectCertificates({required String projectId, required ToggleCertificatesRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/organization/projects/${Uri.encodeComponent(projectId)}/certificates/activate',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ListCertificatesResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Deactivate certificates at the project level. You can atomically and
/// idempotently deactivate up to 10 certificates at a time.
/// 
///
/// `POST /organization/projects/{project_id}/certificates/deactivate`
Future<ApiResult<ListCertificatesResponse, Never>> deactivateProjectCertificates({required String projectId, required ToggleCertificatesRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/organization/projects/${Uri.encodeComponent(projectId)}/certificates/deactivate',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ListCertificatesResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
