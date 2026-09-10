// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/response_single_id7_result.dart';import '../models/web3_content_list_details.dart';import '../models/web3_content_list_entry.dart';import '../models/web3_content_list_entry_collection_response_result.dart';import '../models/web3_content_list_entry_create_request.dart';import '../models/web3_content_list_update_request_request.dart';import '../models/web3_create_request.dart';import '../models/web3_hostname_create_ipfs_universal_path_gateway_content_list_entry_error.dart';import '../models/web3_hostname_create_web3_hostname_error.dart';import '../models/web3_hostname_delete_ipfs_universal_path_gateway_content_list_entry_error.dart';import '../models/web3_hostname_delete_web3_hostname_error.dart';import '../models/web3_hostname_details_error.dart';import '../models/web3_hostname_edit_ipfs_universal_path_gateway_content_list_entry_error.dart';import '../models/web3_hostname_edit_web3_hostname_error.dart';import '../models/web3_hostname_ipfs_universal_path_gateway_content_list_details_error.dart';import '../models/web3_hostname_ipfs_universal_path_gateway_content_list_entry_details_error.dart';import '../models/web3_hostname_list_ipfs_universal_path_gateway_content_list_entries_error.dart';import '../models/web3_hostname_list_web3_hostnames_error.dart';import '../models/web3_hostname_update_ipfs_universal_path_gateway_content_list_error.dart';import '../models/web3_identifier.dart';import '../models/web3_modify_request.dart';import '../models/web3_web3_hostname.dart';/// Web3HostnameApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class Web3HostnameApi with ApiExecutor {const Web3HostnameApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Web3 Hostnames
///
/// `GET /zones/{zone_id}/web3/hostnames`
Future<ApiResult<List<Web3Web3Hostname>, Web3HostnameListWeb3HostnamesError>> web3HostnameListWeb3Hostnames({required Web3Identifier zoneId, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/web3/hostnames',
  headers: headers,
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body) as Map<String, dynamic>;
return  (json['result'] as List<dynamic>).map((e) => Web3Web3Hostname.fromJson(e as Map<String, dynamic>)).toList();}, onError: Web3HostnameListWeb3HostnamesError.parse, );}
/// Create Web3 Hostname
///
/// `POST /zones/{zone_id}/web3/hostnames`
Future<ApiResult<Web3Web3Hostname, Web3HostnameCreateWeb3HostnameError>> web3HostnameCreateWeb3Hostname({required Web3Identifier zoneId, required Web3CreateRequest body, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/web3/hostnames',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body) as Map<String, dynamic>;
return  Web3Web3Hostname.fromJson(json['result'] as Map<String, dynamic>);}, onError: Web3HostnameCreateWeb3HostnameError.parse, );}
/// Web3 Hostname Details
///
/// `GET /zones/{zone_id}/web3/hostnames/{identifier}`
Future<ApiResult<Web3Web3Hostname, Web3HostnameDetailsError>> web3HostnameDetails({required Web3Identifier identifier, required Web3Identifier zoneId, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/web3/hostnames/${Uri.encodeComponent(identifier.toString())}',
  headers: headers,
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body) as Map<String, dynamic>;
return  Web3Web3Hostname.fromJson(json['result'] as Map<String, dynamic>);}, onError: Web3HostnameDetailsError.parse, );}
/// Edit Web3 Hostname
///
/// `PATCH /zones/{zone_id}/web3/hostnames/{identifier}`
Future<ApiResult<Web3Web3Hostname, Web3HostnameEditWeb3HostnameError>> web3HostnameEditWeb3Hostname({required Web3Identifier identifier, required Web3Identifier zoneId, required Web3ModifyRequest body, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/web3/hostnames/${Uri.encodeComponent(identifier.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body) as Map<String, dynamic>;
return  Web3Web3Hostname.fromJson(json['result'] as Map<String, dynamic>);}, onError: Web3HostnameEditWeb3HostnameError.parse, );}
/// Delete Web3 Hostname
///
/// `DELETE /zones/{zone_id}/web3/hostnames/{identifier}`
Future<ApiResult<ResponseSingleId7Result?, Web3HostnameDeleteWeb3HostnameError>> web3HostnameDeleteWeb3Hostname({required Web3Identifier identifier, required Web3Identifier zoneId, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/web3/hostnames/${Uri.encodeComponent(identifier.toString())}',
  headers: headers,
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body) as Map<String, dynamic>;
return  json['result'] != null ? ResponseSingleId7Result.fromJson(json['result'] as Map<String, dynamic>) : null;}, onError: Web3HostnameDeleteWeb3HostnameError.parse, );}
/// IPFS Universal Path Gateway Content List Details
///
/// `GET /zones/{zone_id}/web3/hostnames/{identifier}/ipfs_universal_path/content_list`
Future<ApiResult<Web3ContentListDetails, Web3HostnameIpfsUniversalPathGatewayContentListDetailsError>> web3HostnameIpfsUniversalPathGatewayContentListDetails({required Web3Identifier identifier, required Web3Identifier zoneId, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/web3/hostnames/${Uri.encodeComponent(identifier.toString())}/ipfs_universal_path/content_list',
  headers: headers,
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body) as Map<String, dynamic>;
return  Web3ContentListDetails.fromJson(json['result'] as Map<String, dynamic>);}, onError: Web3HostnameIpfsUniversalPathGatewayContentListDetailsError.parse, );}
/// Update IPFS Universal Path Gateway Content List
///
/// `PUT /zones/{zone_id}/web3/hostnames/{identifier}/ipfs_universal_path/content_list`
Future<ApiResult<Web3ContentListDetails, Web3HostnameUpdateIpfsUniversalPathGatewayContentListError>> web3HostnameUpdateIpfsUniversalPathGatewayContentList({required Web3Identifier identifier, required Web3Identifier zoneId, required Web3ContentListUpdateRequestRequest body, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/web3/hostnames/${Uri.encodeComponent(identifier.toString())}/ipfs_universal_path/content_list',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body) as Map<String, dynamic>;
return  Web3ContentListDetails.fromJson(json['result'] as Map<String, dynamic>);}, onError: Web3HostnameUpdateIpfsUniversalPathGatewayContentListError.parse, );}
/// List IPFS Universal Path Gateway Content List Entries
///
/// `GET /zones/{zone_id}/web3/hostnames/{identifier}/ipfs_universal_path/content_list/entries`
Future<ApiResult<Web3ContentListEntryCollectionResponseResult, Web3HostnameListIpfsUniversalPathGatewayContentListEntriesError>> web3HostnameListIpfsUniversalPathGatewayContentListEntries({required Web3Identifier identifier, required Web3Identifier zoneId, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/web3/hostnames/${Uri.encodeComponent(identifier.toString())}/ipfs_universal_path/content_list/entries',
  headers: headers,
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body) as Map<String, dynamic>;
return  Web3ContentListEntryCollectionResponseResult.fromJson(json['result'] as Map<String, dynamic>);}, onError: Web3HostnameListIpfsUniversalPathGatewayContentListEntriesError.parse, );}
/// Create IPFS Universal Path Gateway Content List Entry
///
/// `POST /zones/{zone_id}/web3/hostnames/{identifier}/ipfs_universal_path/content_list/entries`
Future<ApiResult<Web3ContentListEntry, Web3HostnameCreateIpfsUniversalPathGatewayContentListEntryError>> web3HostnameCreateIpfsUniversalPathGatewayContentListEntry({required Web3Identifier identifier, required Web3Identifier zoneId, required Web3ContentListEntryCreateRequest body, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/web3/hostnames/${Uri.encodeComponent(identifier.toString())}/ipfs_universal_path/content_list/entries',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body) as Map<String, dynamic>;
return  Web3ContentListEntry.fromJson(json['result'] as Map<String, dynamic>);}, onError: Web3HostnameCreateIpfsUniversalPathGatewayContentListEntryError.parse, );}
/// IPFS Universal Path Gateway Content List Entry Details
///
/// `GET /zones/{zone_id}/web3/hostnames/{identifier}/ipfs_universal_path/content_list/entries/{content_list_entry_identifier}`
Future<ApiResult<Web3ContentListEntry, Web3HostnameIpfsUniversalPathGatewayContentListEntryDetailsError>> web3HostnameIpfsUniversalPathGatewayContentListEntryDetails({required Web3Identifier contentListEntryIdentifier, required Web3Identifier identifier, required Web3Identifier zoneId, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/web3/hostnames/${Uri.encodeComponent(identifier.toString())}/ipfs_universal_path/content_list/entries/${Uri.encodeComponent(contentListEntryIdentifier.toString())}',
  headers: headers,
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body) as Map<String, dynamic>;
return  Web3ContentListEntry.fromJson(json['result'] as Map<String, dynamic>);}, onError: Web3HostnameIpfsUniversalPathGatewayContentListEntryDetailsError.parse, );}
/// Edit IPFS Universal Path Gateway Content List Entry
///
/// `PUT /zones/{zone_id}/web3/hostnames/{identifier}/ipfs_universal_path/content_list/entries/{content_list_entry_identifier}`
Future<ApiResult<Web3ContentListEntry, Web3HostnameEditIpfsUniversalPathGatewayContentListEntryError>> web3HostnameEditIpfsUniversalPathGatewayContentListEntry({required Web3Identifier contentListEntryIdentifier, required Web3Identifier identifier, required Web3Identifier zoneId, required Web3ContentListEntryCreateRequest body, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/web3/hostnames/${Uri.encodeComponent(identifier.toString())}/ipfs_universal_path/content_list/entries/${Uri.encodeComponent(contentListEntryIdentifier.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body) as Map<String, dynamic>;
return  Web3ContentListEntry.fromJson(json['result'] as Map<String, dynamic>);}, onError: Web3HostnameEditIpfsUniversalPathGatewayContentListEntryError.parse, );}
/// Delete IPFS Universal Path Gateway Content List Entry
///
/// `DELETE /zones/{zone_id}/web3/hostnames/{identifier}/ipfs_universal_path/content_list/entries/{content_list_entry_identifier}`
Future<ApiResult<ResponseSingleId7Result?, Web3HostnameDeleteIpfsUniversalPathGatewayContentListEntryError>> web3HostnameDeleteIpfsUniversalPathGatewayContentListEntry({required Web3Identifier contentListEntryIdentifier, required Web3Identifier identifier, required Web3Identifier zoneId, RequestOptions? options, }) async {final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/web3/hostnames/${Uri.encodeComponent(identifier.toString())}/ipfs_universal_path/content_list/entries/${Uri.encodeComponent(contentListEntryIdentifier.toString())}',
  headers: headers,
  options: options,
);


return   await execute(request, onSuccess: (response) {final json = jsonDecode(response.body) as Map<String, dynamic>;
return  json['result'] != null ? ResponseSingleId7Result.fromJson(json['result'] as Map<String, dynamic>) : null;}, onError: Web3HostnameDeleteIpfsUniversalPathGatewayContentListEntryError.parse, );}
}
