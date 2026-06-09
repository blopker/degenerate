// GENERATED CODE - DO NOT MODIFY BY HAND

import 'dart:convert';import 'package:degenerate_runtime/degenerate_runtime.dart';import 'web3_collection_response.dart';import 'web3_single_response.dart';/// Error responses of `GET /zones/{zone_id}/web3/hostnames/{identifier}`.
sealed class Web3HostnameWeb3HostnameDetailsError {const Web3HostnameWeb3HostnameDetailsError();

/// Parse the variant matching the response status code.
factory Web3HostnameWeb3HostnameDetailsError.parse(ApiResponse response) { return switch (response.statusCode) {
  >= 400 && <= 499 => Web3HostnameWeb3HostnameDetailsError4xx.parse(response),
  >= 500 && <= 599 => Web3HostnameWeb3HostnameDetailsError5xx.parse(response),
  _ => Web3HostnameWeb3HostnameDetailsError$Unknown(response.statusCode, response.body),
}; }

 }
/// The `4XX` range response.
@immutable final class Web3HostnameWeb3HostnameDetailsError4xx extends Web3HostnameWeb3HostnameDetailsError {const Web3HostnameWeb3HostnameDetailsError4xx(this.data);

factory Web3HostnameWeb3HostnameDetailsError4xx.parse(ApiResponse response) { return Web3HostnameWeb3HostnameDetailsError4xx(Web3CollectionResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final Web3CollectionResponse data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is Web3HostnameWeb3HostnameDetailsError4xx && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'Web3HostnameWeb3HostnameDetailsError4xx($data)'; } 
 }
/// The `5XX` range response.
@immutable final class Web3HostnameWeb3HostnameDetailsError5xx extends Web3HostnameWeb3HostnameDetailsError {const Web3HostnameWeb3HostnameDetailsError5xx(this.data);

factory Web3HostnameWeb3HostnameDetailsError5xx.parse(ApiResponse response) { return Web3HostnameWeb3HostnameDetailsError5xx(Web3SingleResponse.fromJson(jsonDecode(response.body) as Map<String, dynamic>)); }

final Web3SingleResponse data;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is Web3HostnameWeb3HostnameDetailsError5xx && data == other.data; } 
@override int get hashCode { return data.hashCode; } 
@override String toString() { return 'Web3HostnameWeb3HostnameDetailsError5xx($data)'; } 
 }
/// A response with a status code not declared in the OpenAPI spec.
@immutable final class Web3HostnameWeb3HostnameDetailsError$Unknown extends Web3HostnameWeb3HostnameDetailsError {const Web3HostnameWeb3HostnameDetailsError$Unknown(this.statusCode, this.body, );

final int statusCode;

final String body;

@override bool operator ==(Object other) { return identical(this, other) ||
    other is Web3HostnameWeb3HostnameDetailsError$Unknown && statusCode == other.statusCode && body == other.body; } 
@override int get hashCode { return Object.hash(statusCode, body); } 
@override String toString() { return 'Web3HostnameWeb3HostnameDetailsError.unknown($statusCode)'; } 
 }
