// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'web3_hostname_delete_web3_hostname_response4xx.dart';import 'web3_hostname_delete_web3_hostname_response5xx.dart';/// Error response variants. Match the concrete type to access its payload.
sealed class Web3HostnameDeleteWeb3HostnameError {const Web3HostnameDeleteWeb3HostnameError();

/// Decodes the payload for its declared status and content type.
static Web3HostnameDeleteWeb3HostnameError parse(ApiResponse response) {switch (response.statusCode) {
case >= 400 && < 500:
final json = jsonDecode(response.body);
return Web3HostnameDeleteWeb3HostnameError4xx(Web3HostnameDeleteWeb3HostnameResponse4xx.fromJson(json as Map<String, dynamic>));
case >= 500 && < 600:
final json = jsonDecode(response.body);
return Web3HostnameDeleteWeb3HostnameError5xx(Web3HostnameDeleteWeb3HostnameResponse5xx.fromJson(json as Map<String, dynamic>));
default:
return Web3HostnameDeleteWeb3HostnameErrorUnknown(response);
}
}
}
/// Response for 4xx (application/json).
final class Web3HostnameDeleteWeb3HostnameError4xx extends Web3HostnameDeleteWeb3HostnameError {const Web3HostnameDeleteWeb3HostnameError4xx(this.data);

/// The decoded response payload.
final Web3HostnameDeleteWeb3HostnameResponse4xx data;

}
/// Response for 5xx (application/json).
final class Web3HostnameDeleteWeb3HostnameError5xx extends Web3HostnameDeleteWeb3HostnameError {const Web3HostnameDeleteWeb3HostnameError5xx(this.data);

/// The decoded response payload.
final Web3HostnameDeleteWeb3HostnameResponse5xx data;

}
/// An undeclared status. The complete response is retained for manual handling.
final class Web3HostnameDeleteWeb3HostnameErrorUnknown extends Web3HostnameDeleteWeb3HostnameError {const Web3HostnameDeleteWeb3HostnameErrorUnknown(this.response);

/// The original status, headers, and body bytes.
final ApiResponse response;

}
