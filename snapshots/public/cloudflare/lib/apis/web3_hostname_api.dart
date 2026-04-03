// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/response_common78_result.dart';import '../models/web3_content_list_details.dart';import '../models/web3_content_list_entry.dart';import '../models/web3_content_list_entry_collection_response_result.dart';import '../models/web3_content_list_entry_create_request.dart';import '../models/web3_content_list_update_request.dart';import '../models/web3_create_request.dart';import '../models/web3_identifier.dart';import '../models/web3_modify_request.dart';import '../models/web3_web3_hostname.dart';/// Web3HostnameApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class Web3HostnameApi with ApiExecutor {const Web3HostnameApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Web3 Hostnames
///
/// `GET /zones/{zone_id}/web3/hostnames`
Future<ApiResult<List<Web3Web3Hostname>?, Never>> web3HostnameListWeb3Hostnames({required Web3Identifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/web3/hostnames',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return (json['result'] as List<dynamic>?)?.map((e) => Web3Web3Hostname.fromJson(e as Map<String, dynamic>)).toList();
  },
);
 } 
/// Create Web3 Hostname
///
/// `POST /zones/{zone_id}/web3/hostnames`
Future<ApiResult<Web3Web3Hostname?, Never>> web3HostnameCreateWeb3Hostname({required Web3Identifier zoneId, required Web3CreateRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/web3/hostnames',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? Web3Web3Hostname.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Web3 Hostname Details
///
/// `GET /zones/{zone_id}/web3/hostnames/{identifier}`
Future<ApiResult<Web3Web3Hostname?, Never>> web3HostnameDetails({required Web3Identifier identifier, required Web3Identifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/web3/hostnames/${Uri.encodeComponent(identifier.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? Web3Web3Hostname.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Edit Web3 Hostname
///
/// `PATCH /zones/{zone_id}/web3/hostnames/{identifier}`
Future<ApiResult<Web3Web3Hostname?, Never>> web3HostnameEditWeb3Hostname({required Web3Identifier identifier, required Web3Identifier zoneId, required Web3ModifyRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PATCH',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/web3/hostnames/${Uri.encodeComponent(identifier.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? Web3Web3Hostname.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Delete Web3 Hostname
///
/// `DELETE /zones/{zone_id}/web3/hostnames/{identifier}`
Future<ApiResult<ResponseCommon78Result, Never>> web3HostnameDeleteWeb3Hostname({required Web3Identifier identifier, required Web3Identifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/web3/hostnames/${Uri.encodeComponent(identifier.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return OneOf3.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => (v as List<dynamic>).map((e) => e).toList(), fromC: (v) => v as String,);
  },
);
 } 
/// IPFS Universal Path Gateway Content List Details
///
/// `GET /zones/{zone_id}/web3/hostnames/{identifier}/ipfs_universal_path/content_list`
Future<ApiResult<Web3ContentListDetails?, Never>> web3HostnameIpfsUniversalPathGatewayContentListDetails({required Web3Identifier identifier, required Web3Identifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/web3/hostnames/${Uri.encodeComponent(identifier.toString())}/ipfs_universal_path/content_list',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? Web3ContentListDetails.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Update IPFS Universal Path Gateway Content List
///
/// `PUT /zones/{zone_id}/web3/hostnames/{identifier}/ipfs_universal_path/content_list`
Future<ApiResult<Web3ContentListDetails?, Never>> web3HostnameUpdateIpfsUniversalPathGatewayContentList({required Web3Identifier identifier, required Web3Identifier zoneId, required Web3ContentListUpdateRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/web3/hostnames/${Uri.encodeComponent(identifier.toString())}/ipfs_universal_path/content_list',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? Web3ContentListDetails.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// List IPFS Universal Path Gateway Content List Entries
///
/// `GET /zones/{zone_id}/web3/hostnames/{identifier}/ipfs_universal_path/content_list/entries`
Future<ApiResult<Web3ContentListEntryCollectionResponseResult?, Never>> web3HostnameListIpfsUniversalPathGatewayContentListEntries({required Web3Identifier identifier, required Web3Identifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/web3/hostnames/${Uri.encodeComponent(identifier.toString())}/ipfs_universal_path/content_list/entries',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? Web3ContentListEntryCollectionResponseResult.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Create IPFS Universal Path Gateway Content List Entry
///
/// `POST /zones/{zone_id}/web3/hostnames/{identifier}/ipfs_universal_path/content_list/entries`
Future<ApiResult<Web3ContentListEntry?, Never>> web3HostnameCreateIpfsUniversalPathGatewayContentListEntry({required Web3Identifier identifier, required Web3Identifier zoneId, required Web3ContentListEntryCreateRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'POST',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/web3/hostnames/${Uri.encodeComponent(identifier.toString())}/ipfs_universal_path/content_list/entries',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? Web3ContentListEntry.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// IPFS Universal Path Gateway Content List Entry Details
///
/// `GET /zones/{zone_id}/web3/hostnames/{identifier}/ipfs_universal_path/content_list/entries/{content_list_entry_identifier}`
Future<ApiResult<Web3ContentListEntry?, Never>> web3HostnameIpfsUniversalPathGatewayContentListEntryDetails({required Web3Identifier contentListEntryIdentifier, required Web3Identifier identifier, required Web3Identifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'GET',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/web3/hostnames/${Uri.encodeComponent(identifier.toString())}/ipfs_universal_path/content_list/entries/${Uri.encodeComponent(contentListEntryIdentifier.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? Web3ContentListEntry.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Edit IPFS Universal Path Gateway Content List Entry
///
/// `PUT /zones/{zone_id}/web3/hostnames/{identifier}/ipfs_universal_path/content_list/entries/{content_list_entry_identifier}`
Future<ApiResult<Web3ContentListEntry?, Never>> web3HostnameEditIpfsUniversalPathGatewayContentListEntry({required Web3Identifier contentListEntryIdentifier, required Web3Identifier identifier, required Web3Identifier zoneId, required Web3ContentListEntryCreateRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
headers['Content-Type'] = 'application/json';

final request = ApiRequest(
  method: 'PUT',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/web3/hostnames/${Uri.encodeComponent(identifier.toString())}/ipfs_universal_path/content_list/entries/${Uri.encodeComponent(contentListEntryIdentifier.toString())}',
  headers: headers,
  body: jsonEncode(body.toJson()),
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return json['result'] != null ? Web3ContentListEntry.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
);
 } 
/// Delete IPFS Universal Path Gateway Content List Entry
///
/// `DELETE /zones/{zone_id}/web3/hostnames/{identifier}/ipfs_universal_path/content_list/entries/{content_list_entry_identifier}`
Future<ApiResult<ResponseCommon78Result, Never>> web3HostnameDeleteIpfsUniversalPathGatewayContentListEntry({required Web3Identifier contentListEntryIdentifier, required Web3Identifier identifier, required Web3Identifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

final request = ApiRequest(
  method: 'DELETE',
  path: '/zones/${Uri.encodeComponent(zoneId.toString())}/web3/hostnames/${Uri.encodeComponent(identifier.toString())}/ipfs_universal_path/content_list/entries/${Uri.encodeComponent(contentListEntryIdentifier.toString())}',
  headers: headers,
  options: options,
);

return execute(
  request,
  onSuccess: (response) {
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return OneOf3.parse(json['result'], fromA: (v) => v as Map<String, dynamic>, fromB: (v) => (v as List<dynamic>).map((e) => e).toList(), fromC: (v) => v as String,);
  },
);
 } 
 }
