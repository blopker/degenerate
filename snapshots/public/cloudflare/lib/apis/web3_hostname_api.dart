// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:async';import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import '../models/response_single_id7_result.dart';import '../models/web3_content_list_details.dart';import '../models/web3_content_list_entry.dart';import '../models/web3_content_list_entry_collection_response_result.dart';import '../models/web3_content_list_entry_create_request.dart';import '../models/web3_content_list_update_request_request.dart';import '../models/web3_create_request.dart';import '../models/web3_hostname_create_ipfs_universal_path_gateway_content_list_entry_response4_xx.dart';import '../models/web3_hostname_create_ipfs_universal_path_gateway_content_list_entry_response5_xx.dart';import '../models/web3_hostname_create_web3_hostname_response4_xx.dart';import '../models/web3_hostname_create_web3_hostname_response5_xx.dart';import '../models/web3_hostname_delete_ipfs_universal_path_gateway_content_list_entry_response4_xx.dart';import '../models/web3_hostname_delete_ipfs_universal_path_gateway_content_list_entry_response5_xx.dart';import '../models/web3_hostname_delete_web3_hostname_response4_xx.dart';import '../models/web3_hostname_delete_web3_hostname_response5_xx.dart';import '../models/web3_hostname_edit_ipfs_universal_path_gateway_content_list_entry_response4_xx.dart';import '../models/web3_hostname_edit_ipfs_universal_path_gateway_content_list_entry_response5_xx.dart';import '../models/web3_hostname_edit_web3_hostname_response4_xx.dart';import '../models/web3_hostname_edit_web3_hostname_response5_xx.dart';import '../models/web3_hostname_ipfs_universal_path_gateway_content_list_details_response4_xx.dart';import '../models/web3_hostname_ipfs_universal_path_gateway_content_list_details_response5_xx.dart';import '../models/web3_hostname_ipfs_universal_path_gateway_content_list_entry_details_response4_xx.dart';import '../models/web3_hostname_ipfs_universal_path_gateway_content_list_entry_details_response5_xx.dart';import '../models/web3_hostname_list_ipfs_universal_path_gateway_content_list_entries_response4_xx.dart';import '../models/web3_hostname_list_ipfs_universal_path_gateway_content_list_entries_response5_xx.dart';import '../models/web3_hostname_list_web3_hostnames_response4_xx.dart';import '../models/web3_hostname_list_web3_hostnames_response5_xx.dart';import '../models/web3_hostname_update_ipfs_universal_path_gateway_content_list_response4_xx.dart';import '../models/web3_hostname_update_ipfs_universal_path_gateway_content_list_response5_xx.dart';import '../models/web3_hostname_web3_hostname_details_response4_xx.dart';import '../models/web3_hostname_web3_hostname_details_response5_xx.dart';import '../models/web3_identifier.dart';import '../models/web3_modify_request.dart';import '../models/web3_web3_hostname.dart';/// Web3HostnameApi operations.
///
/// All operations return [ApiResult] - use pattern matching to handle
/// success, error, and exception cases.
final class Web3HostnameApi with ApiExecutor {const Web3HostnameApi(this.apiConfig);

@override final ApiConfig apiConfig;

/// List Web3 Hostnames
///
/// `GET /zones/{zone_id}/web3/hostnames`
Future<ApiResult<List<Web3Web3Hostname>, OneOf2<Web3HostnameListWeb3HostnamesResponse4Xx, Web3HostnameListWeb3HostnamesResponse5Xx>>> web3HostnameListWeb3Hostnames({required Web3Identifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

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
return (json['result'] as List<dynamic>).map((e) => Web3Web3Hostname.fromJson(e as Map<String, dynamic>)).toList();
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return OneOf2<Web3HostnameListWeb3HostnamesResponse4Xx, Web3HostnameListWeb3HostnamesResponse5Xx>.a(Web3HostnameListWeb3HostnamesResponse4Xx.fromJson(json as Map<String, dynamic>));
case >= 500 && < 600:
final json = jsonDecode(response.body);
return OneOf2<Web3HostnameListWeb3HostnamesResponse4Xx, Web3HostnameListWeb3HostnamesResponse5Xx>.b(Web3HostnameListWeb3HostnamesResponse5Xx.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
/// Create Web3 Hostname
///
/// `POST /zones/{zone_id}/web3/hostnames`
Future<ApiResult<Web3Web3Hostname, OneOf2<Web3HostnameCreateWeb3HostnameResponse4Xx, Web3HostnameCreateWeb3HostnameResponse5Xx>>> web3HostnameCreateWeb3Hostname({required Web3Identifier zoneId, required Web3CreateRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
return Web3Web3Hostname.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return OneOf2<Web3HostnameCreateWeb3HostnameResponse4Xx, Web3HostnameCreateWeb3HostnameResponse5Xx>.a(Web3HostnameCreateWeb3HostnameResponse4Xx.fromJson(json as Map<String, dynamic>));
case >= 500 && < 600:
final json = jsonDecode(response.body);
return OneOf2<Web3HostnameCreateWeb3HostnameResponse4Xx, Web3HostnameCreateWeb3HostnameResponse5Xx>.b(Web3HostnameCreateWeb3HostnameResponse5Xx.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
/// Web3 Hostname Details
///
/// `GET /zones/{zone_id}/web3/hostnames/{identifier}`
Future<ApiResult<Web3Web3Hostname, OneOf2<Web3HostnameWeb3HostnameDetailsResponse4Xx, Web3HostnameWeb3HostnameDetailsResponse5Xx>>> web3HostnameDetails({required Web3Identifier identifier, required Web3Identifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

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
return Web3Web3Hostname.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return OneOf2<Web3HostnameWeb3HostnameDetailsResponse4Xx, Web3HostnameWeb3HostnameDetailsResponse5Xx>.a(Web3HostnameWeb3HostnameDetailsResponse4Xx.fromJson(json as Map<String, dynamic>));
case >= 500 && < 600:
final json = jsonDecode(response.body);
return OneOf2<Web3HostnameWeb3HostnameDetailsResponse4Xx, Web3HostnameWeb3HostnameDetailsResponse5Xx>.b(Web3HostnameWeb3HostnameDetailsResponse5Xx.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
/// Edit Web3 Hostname
///
/// `PATCH /zones/{zone_id}/web3/hostnames/{identifier}`
Future<ApiResult<Web3Web3Hostname, OneOf2<Web3HostnameEditWeb3HostnameResponse4Xx, Web3HostnameEditWeb3HostnameResponse5Xx>>> web3HostnameEditWeb3Hostname({required Web3Identifier identifier, required Web3Identifier zoneId, required Web3ModifyRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
return Web3Web3Hostname.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return OneOf2<Web3HostnameEditWeb3HostnameResponse4Xx, Web3HostnameEditWeb3HostnameResponse5Xx>.a(Web3HostnameEditWeb3HostnameResponse4Xx.fromJson(json as Map<String, dynamic>));
case >= 500 && < 600:
final json = jsonDecode(response.body);
return OneOf2<Web3HostnameEditWeb3HostnameResponse4Xx, Web3HostnameEditWeb3HostnameResponse5Xx>.b(Web3HostnameEditWeb3HostnameResponse5Xx.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
/// Delete Web3 Hostname
///
/// `DELETE /zones/{zone_id}/web3/hostnames/{identifier}`
Future<ApiResult<ResponseSingleId7Result?, OneOf2<Web3HostnameDeleteWeb3HostnameResponse4Xx, Web3HostnameDeleteWeb3HostnameResponse5Xx>>> web3HostnameDeleteWeb3Hostname({required Web3Identifier identifier, required Web3Identifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

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
return json['result'] != null ? ResponseSingleId7Result.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return OneOf2<Web3HostnameDeleteWeb3HostnameResponse4Xx, Web3HostnameDeleteWeb3HostnameResponse5Xx>.a(Web3HostnameDeleteWeb3HostnameResponse4Xx.fromJson(json as Map<String, dynamic>));
case >= 500 && < 600:
final json = jsonDecode(response.body);
return OneOf2<Web3HostnameDeleteWeb3HostnameResponse4Xx, Web3HostnameDeleteWeb3HostnameResponse5Xx>.b(Web3HostnameDeleteWeb3HostnameResponse5Xx.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
/// IPFS Universal Path Gateway Content List Details
///
/// `GET /zones/{zone_id}/web3/hostnames/{identifier}/ipfs_universal_path/content_list`
Future<ApiResult<Web3ContentListDetails, OneOf2<Web3HostnameIpfsUniversalPathGatewayContentListDetailsResponse4Xx, Web3HostnameIpfsUniversalPathGatewayContentListDetailsResponse5Xx>>> web3HostnameIpfsUniversalPathGatewayContentListDetails({required Web3Identifier identifier, required Web3Identifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

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
return Web3ContentListDetails.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return OneOf2<Web3HostnameIpfsUniversalPathGatewayContentListDetailsResponse4Xx, Web3HostnameIpfsUniversalPathGatewayContentListDetailsResponse5Xx>.a(Web3HostnameIpfsUniversalPathGatewayContentListDetailsResponse4Xx.fromJson(json as Map<String, dynamic>));
case >= 500 && < 600:
final json = jsonDecode(response.body);
return OneOf2<Web3HostnameIpfsUniversalPathGatewayContentListDetailsResponse4Xx, Web3HostnameIpfsUniversalPathGatewayContentListDetailsResponse5Xx>.b(Web3HostnameIpfsUniversalPathGatewayContentListDetailsResponse5Xx.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
/// Update IPFS Universal Path Gateway Content List
///
/// `PUT /zones/{zone_id}/web3/hostnames/{identifier}/ipfs_universal_path/content_list`
Future<ApiResult<Web3ContentListDetails, OneOf2<Web3HostnameUpdateIpfsUniversalPathGatewayContentListResponse4Xx, Web3HostnameUpdateIpfsUniversalPathGatewayContentListResponse5Xx>>> web3HostnameUpdateIpfsUniversalPathGatewayContentList({required Web3Identifier identifier, required Web3Identifier zoneId, required Web3ContentListUpdateRequestRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
return Web3ContentListDetails.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return OneOf2<Web3HostnameUpdateIpfsUniversalPathGatewayContentListResponse4Xx, Web3HostnameUpdateIpfsUniversalPathGatewayContentListResponse5Xx>.a(Web3HostnameUpdateIpfsUniversalPathGatewayContentListResponse4Xx.fromJson(json as Map<String, dynamic>));
case >= 500 && < 600:
final json = jsonDecode(response.body);
return OneOf2<Web3HostnameUpdateIpfsUniversalPathGatewayContentListResponse4Xx, Web3HostnameUpdateIpfsUniversalPathGatewayContentListResponse5Xx>.b(Web3HostnameUpdateIpfsUniversalPathGatewayContentListResponse5Xx.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
/// List IPFS Universal Path Gateway Content List Entries
///
/// `GET /zones/{zone_id}/web3/hostnames/{identifier}/ipfs_universal_path/content_list/entries`
Future<ApiResult<Web3ContentListEntryCollectionResponseResult, OneOf2<Web3HostnameListIpfsUniversalPathGatewayContentListEntriesResponse4Xx, Web3HostnameListIpfsUniversalPathGatewayContentListEntriesResponse5Xx>>> web3HostnameListIpfsUniversalPathGatewayContentListEntries({required Web3Identifier identifier, required Web3Identifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

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
return Web3ContentListEntryCollectionResponseResult.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return OneOf2<Web3HostnameListIpfsUniversalPathGatewayContentListEntriesResponse4Xx, Web3HostnameListIpfsUniversalPathGatewayContentListEntriesResponse5Xx>.a(Web3HostnameListIpfsUniversalPathGatewayContentListEntriesResponse4Xx.fromJson(json as Map<String, dynamic>));
case >= 500 && < 600:
final json = jsonDecode(response.body);
return OneOf2<Web3HostnameListIpfsUniversalPathGatewayContentListEntriesResponse4Xx, Web3HostnameListIpfsUniversalPathGatewayContentListEntriesResponse5Xx>.b(Web3HostnameListIpfsUniversalPathGatewayContentListEntriesResponse5Xx.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
/// Create IPFS Universal Path Gateway Content List Entry
///
/// `POST /zones/{zone_id}/web3/hostnames/{identifier}/ipfs_universal_path/content_list/entries`
Future<ApiResult<Web3ContentListEntry, OneOf2<Web3HostnameCreateIpfsUniversalPathGatewayContentListEntryResponse4Xx, Web3HostnameCreateIpfsUniversalPathGatewayContentListEntryResponse5Xx>>> web3HostnameCreateIpfsUniversalPathGatewayContentListEntry({required Web3Identifier identifier, required Web3Identifier zoneId, required Web3ContentListEntryCreateRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
return Web3ContentListEntry.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return OneOf2<Web3HostnameCreateIpfsUniversalPathGatewayContentListEntryResponse4Xx, Web3HostnameCreateIpfsUniversalPathGatewayContentListEntryResponse5Xx>.a(Web3HostnameCreateIpfsUniversalPathGatewayContentListEntryResponse4Xx.fromJson(json as Map<String, dynamic>));
case >= 500 && < 600:
final json = jsonDecode(response.body);
return OneOf2<Web3HostnameCreateIpfsUniversalPathGatewayContentListEntryResponse4Xx, Web3HostnameCreateIpfsUniversalPathGatewayContentListEntryResponse5Xx>.b(Web3HostnameCreateIpfsUniversalPathGatewayContentListEntryResponse5Xx.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
/// IPFS Universal Path Gateway Content List Entry Details
///
/// `GET /zones/{zone_id}/web3/hostnames/{identifier}/ipfs_universal_path/content_list/entries/{content_list_entry_identifier}`
Future<ApiResult<Web3ContentListEntry, OneOf2<Web3HostnameIpfsUniversalPathGatewayContentListEntryDetailsResponse4Xx, Web3HostnameIpfsUniversalPathGatewayContentListEntryDetailsResponse5Xx>>> web3HostnameIpfsUniversalPathGatewayContentListEntryDetails({required Web3Identifier contentListEntryIdentifier, required Web3Identifier identifier, required Web3Identifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

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
return Web3ContentListEntry.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return OneOf2<Web3HostnameIpfsUniversalPathGatewayContentListEntryDetailsResponse4Xx, Web3HostnameIpfsUniversalPathGatewayContentListEntryDetailsResponse5Xx>.a(Web3HostnameIpfsUniversalPathGatewayContentListEntryDetailsResponse4Xx.fromJson(json as Map<String, dynamic>));
case >= 500 && < 600:
final json = jsonDecode(response.body);
return OneOf2<Web3HostnameIpfsUniversalPathGatewayContentListEntryDetailsResponse4Xx, Web3HostnameIpfsUniversalPathGatewayContentListEntryDetailsResponse5Xx>.b(Web3HostnameIpfsUniversalPathGatewayContentListEntryDetailsResponse5Xx.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
/// Edit IPFS Universal Path Gateway Content List Entry
///
/// `PUT /zones/{zone_id}/web3/hostnames/{identifier}/ipfs_universal_path/content_list/entries/{content_list_entry_identifier}`
Future<ApiResult<Web3ContentListEntry, OneOf2<Web3HostnameEditIpfsUniversalPathGatewayContentListEntryResponse4Xx, Web3HostnameEditIpfsUniversalPathGatewayContentListEntryResponse5Xx>>> web3HostnameEditIpfsUniversalPathGatewayContentListEntry({required Web3Identifier contentListEntryIdentifier, required Web3Identifier identifier, required Web3Identifier zoneId, required Web3ContentListEntryCreateRequest body, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};
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
return Web3ContentListEntry.fromJson(json['result'] as Map<String, dynamic>);
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return OneOf2<Web3HostnameEditIpfsUniversalPathGatewayContentListEntryResponse4Xx, Web3HostnameEditIpfsUniversalPathGatewayContentListEntryResponse5Xx>.a(Web3HostnameEditIpfsUniversalPathGatewayContentListEntryResponse4Xx.fromJson(json as Map<String, dynamic>));
case >= 500 && < 600:
final json = jsonDecode(response.body);
return OneOf2<Web3HostnameEditIpfsUniversalPathGatewayContentListEntryResponse4Xx, Web3HostnameEditIpfsUniversalPathGatewayContentListEntryResponse5Xx>.b(Web3HostnameEditIpfsUniversalPathGatewayContentListEntryResponse5Xx.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
/// Delete IPFS Universal Path Gateway Content List Entry
///
/// `DELETE /zones/{zone_id}/web3/hostnames/{identifier}/ipfs_universal_path/content_list/entries/{content_list_entry_identifier}`
Future<ApiResult<ResponseSingleId7Result?, OneOf2<Web3HostnameDeleteIpfsUniversalPathGatewayContentListEntryResponse4Xx, Web3HostnameDeleteIpfsUniversalPathGatewayContentListEntryResponse5Xx>>> web3HostnameDeleteIpfsUniversalPathGatewayContentListEntry({required Web3Identifier contentListEntryIdentifier, required Web3Identifier identifier, required Web3Identifier zoneId, RequestOptions? options, }) async  { final headers = <String, String>{...apiConfig.defaultHeaders};

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
return json['result'] != null ? ResponseSingleId7Result.fromJson(json['result'] as Map<String, dynamic>) : null;
  },
  onError: (response) {
switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return OneOf2<Web3HostnameDeleteIpfsUniversalPathGatewayContentListEntryResponse4Xx, Web3HostnameDeleteIpfsUniversalPathGatewayContentListEntryResponse5Xx>.a(Web3HostnameDeleteIpfsUniversalPathGatewayContentListEntryResponse4Xx.fromJson(json as Map<String, dynamic>));
case >= 500 && < 600:
final json = jsonDecode(response.body);
return OneOf2<Web3HostnameDeleteIpfsUniversalPathGatewayContentListEntryResponse4Xx, Web3HostnameDeleteIpfsUniversalPathGatewayContentListEntryResponse5Xx>.b(Web3HostnameDeleteIpfsUniversalPathGatewayContentListEntryResponse5Xx.fromJson(json as Map<String, dynamic>));
default:
return null;
}

  },
);
 } 
 }
