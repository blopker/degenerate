// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'web3_hostname_list_web3_hostnames_response4xx.dart';import 'web3_hostname_list_web3_hostnames_response5xx.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class Web3HostnameListWeb3HostnamesError {const Web3HostnameListWeb3HostnamesError();

/// Decodes the payload for its declared status and content type.
static Web3HostnameListWeb3HostnamesError parse(ApiResponse response) {switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return  Web3HostnameListWeb3HostnamesError4xx(Web3HostnameListWeb3HostnamesResponse4xx.fromJson(json as Map<String, dynamic>));case >= 500 && < 600:
final json = jsonDecode(response.body);
return  Web3HostnameListWeb3HostnamesError5xx(Web3HostnameListWeb3HostnamesResponse5xx.fromJson(json as Map<String, dynamic>));default:
return  Web3HostnameListWeb3HostnamesErrorUnknown(response); }}
}
/// Response for 4xx (application/json).
final class Web3HostnameListWeb3HostnamesError4xx extends Web3HostnameListWeb3HostnamesError {const Web3HostnameListWeb3HostnamesError4xx(this.data);

/// The decoded response payload.
final Web3HostnameListWeb3HostnamesResponse4xx data;

}
/// Response for 5xx (application/json).
final class Web3HostnameListWeb3HostnamesError5xx extends Web3HostnameListWeb3HostnamesError {const Web3HostnameListWeb3HostnamesError5xx(this.data);

/// The decoded response payload.
final Web3HostnameListWeb3HostnamesResponse5xx data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class Web3HostnameListWeb3HostnamesErrorUnknown extends Web3HostnameListWeb3HostnamesError {const Web3HostnameListWeb3HostnamesErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
