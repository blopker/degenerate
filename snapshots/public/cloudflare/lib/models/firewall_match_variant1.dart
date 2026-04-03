// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'firewall_match_variant1_headers.dart';import 'firewall_match_variant1_request.dart';import 'firewall_match_variant1_response.dart';@immutable final class FirewallMatchVariant1 {const FirewallMatchVariant1({this.headers, this.request, this.response, });

factory FirewallMatchVariant1.fromJson(Map<String, dynamic> json) { return FirewallMatchVariant1(
  headers: (json['headers'] as List<dynamic>?)?.map((e) => FirewallMatchVariant1Headers.fromJson(e as Map<String, dynamic>)).toList(),
  request: json['request'] != null ? FirewallMatchVariant1Request.fromJson(json['request'] as Map<String, dynamic>) : null,
  response: json['response'] != null ? FirewallMatchVariant1Response.fromJson(json['response'] as Map<String, dynamic>) : null,
); }

final List<FirewallMatchVariant1Headers>? headers;

final FirewallMatchVariant1Request? request;

final FirewallMatchVariant1Response? response;

Map<String, dynamic> toJson() { return {
  if (headers != null) 'headers': headers?.map((e) => e.toJson()).toList(),
  if (request != null) 'request': request?.toJson(),
  if (response != null) 'response': response?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'headers', 'request', 'response'}.contains(key)); } 
FirewallMatchVariant1 copyWith({List<FirewallMatchVariant1Headers> Function()? headers, FirewallMatchVariant1Request Function()? request, FirewallMatchVariant1Response Function()? response, }) { return FirewallMatchVariant1(
  headers: headers != null ? headers() : this.headers,
  request: request != null ? request() : this.request,
  response: response != null ? response() : this.response,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is FirewallMatchVariant1 &&
          listEquals(headers, other.headers) &&
          request == other.request &&
          response == other.response; } 
@override int get hashCode { return Object.hash(Object.hashAll(headers ?? const []), request, response); } 
@override String toString() { return 'FirewallMatchVariant1(headers: $headers, request: $request, response: $response)'; } 
 }
