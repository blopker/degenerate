// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'dart:typed_data';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/addressing_account_identifier.dart';import '../models/addressing_ipam_prefixes.dart';import '../models/addressing_loa_document_identifier.dart';import '../models/addressing_loa_upload_response.dart';import '../models/addressing_loa_upload_response_result.dart';import '../models/addressing_prefix_identifier.dart';import '../models/addressing_response_collection.dart';import '../models/addressing_single_response.dart';import '../models/ip_address_management_prefixes_add_prefix_request.dart';import '../models/ip_address_management_prefixes_update_prefix_description_request.dart';import '../models/ip_address_management_prefixes_upload_loa_document_request.dart';import '../models/response_collection4.dart';import '../models/response_common4.dart';import '../models/response_common_failure5.dart';/// IpAddressManagementPrefixesApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class IpAddressManagementPrefixesApi with ApiExecutor {const IpAddressManagementPrefixesApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// Upload LOA Document
///
/// Submit LOA document (pdf format) under the account.
///
/// `POST /accounts/{account_id}/addressing/loa_documents`
Future<ApiResult<AddressingLoaUploadResponseResult?, AddressingLoaUploadResponse>> ipAddressManagementPrefixesUploadLoaDocument({required AddressingAccountIdentifier accountId, required IpAddressManagementPrefixesUploadLoaDocumentRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/addressing/loa_documents',
  headers: headers,
  body: [
    ApiMultipartField.text('loa_document', body.loaDocument),
  ],
  contentType: 'multipart/form-data',
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? AddressingLoaUploadResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
    return AddressingLoaUploadResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Download LOA Document
///
/// Download specified LOA document under the account.
///
/// `GET /accounts/{account_id}/addressing/loa_documents/{loa_document_id}/download`
Future<ApiResult<Uint8List, ResponseCommonFailure5>> ipAddressManagementPrefixesDownloadLoaDocument({required AddressingLoaDocumentIdentifier loaDocumentId, required AddressingAccountIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/addressing/loa_documents/${Uri.encodeComponent(loaDocumentId.toString())}/download',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return Uint8List.fromList(response.bodyBytes);
  },
  onError: (response) {
    return ResponseCommonFailure5.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// List Prefixes
///
/// List all prefixes owned by the account.
///
/// `GET /accounts/{account_id}/addressing/prefixes`
Future<ApiResult<List<AddressingIpamPrefixes>?, AddressingResponseCollection>> ipAddressManagementPrefixesListPrefixes({required AddressingAccountIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/addressing/prefixes',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => AddressingIpamPrefixes.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
    return AddressingResponseCollection.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Add Prefix
///
/// Add a new prefix under the account.
///
/// `POST /accounts/{account_id}/addressing/prefixes`
Future<ApiResult<AddressingIpamPrefixes?, AddressingSingleResponse>> ipAddressManagementPrefixesAddPrefix({required AddressingAccountIdentifier accountId, required IpAddressManagementPrefixesAddPrefixRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/addressing/prefixes',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? AddressingIpamPrefixes.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
    return AddressingSingleResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Prefix Details
///
/// List a particular prefix owned by the account.
///
/// `GET /accounts/{account_id}/addressing/prefixes/{prefix_id}`
Future<ApiResult<AddressingIpamPrefixes?, AddressingSingleResponse>> ipAddressManagementPrefixesPrefixDetails({required AddressingPrefixIdentifier prefixId, required AddressingAccountIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/addressing/prefixes/${Uri.encodeComponent(prefixId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? AddressingIpamPrefixes.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
    return AddressingSingleResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Update Prefix Description
///
/// Modify the description for a prefix owned by the account.
///
/// `PATCH /accounts/{account_id}/addressing/prefixes/{prefix_id}`
Future<ApiResult<AddressingIpamPrefixes?, AddressingSingleResponse>> ipAddressManagementPrefixesUpdatePrefixDescription({required AddressingPrefixIdentifier prefixId, required AddressingAccountIdentifier accountId, required IpAddressManagementPrefixesUpdatePrefixDescriptionRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/addressing/prefixes/${Uri.encodeComponent(prefixId.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? AddressingIpamPrefixes.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
    return AddressingSingleResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Delete Prefix
///
/// Delete an unapproved prefix owned by the account.
///
/// `DELETE /accounts/{account_id}/addressing/prefixes/{prefix_id}`
Future<ApiResult<ResponseCommon4, ResponseCollection4>> ipAddressManagementPrefixesDeletePrefix({required AddressingPrefixIdentifier prefixId, required AddressingAccountIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/addressing/prefixes/${Uri.encodeComponent(prefixId.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    return ResponseCommon4.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
  onError: (response) {
    return ResponseCollection4.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
/// Validate Prefix
///
/// Triggers a new prefix validation. The checks are run asynchronously and include IRR, RPKI, and prefix ownership.
///
/// `POST /accounts/{account_id}/addressing/prefixes/{prefix_id}/validate`
Future<ApiResult<AddressingIpamPrefixes?, AddressingSingleResponse>> ipAddressManagementPrefixesValidatePrefix({required AddressingPrefixIdentifier prefixId, required AddressingAccountIdentifier accountId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'POST',
  path: '/accounts/${Uri.encodeComponent(accountId.toString())}/addressing/prefixes/${Uri.encodeComponent(prefixId.toString())}/validate',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? AddressingIpamPrefixes.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
    return AddressingSingleResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>);
  },
);
 } 
 }
