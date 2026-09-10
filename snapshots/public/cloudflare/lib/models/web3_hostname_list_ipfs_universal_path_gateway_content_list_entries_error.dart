// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'web3_hostname_list_ipfs_universal_path_gateway_content_list_entries_response4xx.dart';import 'web3_hostname_list_ipfs_universal_path_gateway_content_list_entries_response5xx.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class Web3HostnameListIpfsUniversalPathGatewayContentListEntriesError {const Web3HostnameListIpfsUniversalPathGatewayContentListEntriesError();

/// Decodes the payload for its declared status and content type.
static Web3HostnameListIpfsUniversalPathGatewayContentListEntriesError parse(ApiResponse response) { switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return Web3HostnameListIpfsUniversalPathGatewayContentListEntriesError4xx(Web3HostnameListIpfsUniversalPathGatewayContentListEntriesResponse4xx.fromJson(json as Map<String, dynamic>));
case >= 500 && < 600:
final json = jsonDecode(response.body);
return Web3HostnameListIpfsUniversalPathGatewayContentListEntriesError5xx(Web3HostnameListIpfsUniversalPathGatewayContentListEntriesResponse5xx.fromJson(json as Map<String, dynamic>));
default:
return Web3HostnameListIpfsUniversalPathGatewayContentListEntriesErrorUnknown(response);
}
 } 
 }
/// Response for 4xx (application/json).
final class Web3HostnameListIpfsUniversalPathGatewayContentListEntriesError4xx extends Web3HostnameListIpfsUniversalPathGatewayContentListEntriesError {const Web3HostnameListIpfsUniversalPathGatewayContentListEntriesError4xx(this.data);

/// The decoded response payload.
final Web3HostnameListIpfsUniversalPathGatewayContentListEntriesResponse4xx data;

 }
/// Response for 5xx (application/json).
final class Web3HostnameListIpfsUniversalPathGatewayContentListEntriesError5xx extends Web3HostnameListIpfsUniversalPathGatewayContentListEntriesError {const Web3HostnameListIpfsUniversalPathGatewayContentListEntriesError5xx(this.data);

/// The decoded response payload.
final Web3HostnameListIpfsUniversalPathGatewayContentListEntriesResponse5xx data;

 }
/// An undeclared status. The complete response is retained for manual handling.
final class Web3HostnameListIpfsUniversalPathGatewayContentListEntriesErrorUnknown extends Web3HostnameListIpfsUniversalPathGatewayContentListEntriesError {const Web3HostnameListIpfsUniversalPathGatewayContentListEntriesErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

 }
