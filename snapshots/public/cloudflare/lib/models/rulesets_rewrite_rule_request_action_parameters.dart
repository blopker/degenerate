// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'add_dynamic_header.dart';import 'add_static_header.dart';import 'remove_header.dart';import 'rulesets_rewrite_headers_value.dart';import 'rulesets_rewrite_uri_request.dart';import 'set_dynamic_header.dart';import 'set_static_header.dart';@immutable final class RulesetsRewriteRuleRequestActionParameters {const RulesetsRewriteRuleRequestActionParameters({this.headers, this.uri, });

factory RulesetsRewriteRuleRequestActionParameters.fromJson(Map<String, dynamic> json) {return RulesetsRewriteRuleRequestActionParameters(
  headers: (json['headers'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, OneOf5.parse(v, fromA: (v) => AddStaticHeader.fromJson(v as Map<String, dynamic>), fromB: (v) => AddDynamicHeader.fromJson(v as Map<String, dynamic>), fromC: (v) => SetStaticHeader.fromJson(v as Map<String, dynamic>), fromD: (v) => SetDynamicHeader.fromJson(v as Map<String, dynamic>), fromE: (v) => RemoveHeader.fromJson(v as Map<String, dynamic>),))),
  uri: json['uri'] != null ? RulesetsRewriteUriRequest.fromJson(json['uri']) : null,
);}

/// A map of headers to rewrite.
final Map<String,RulesetsRewriteHeadersValue>? headers;

final RulesetsRewriteUriRequest? uri;

Map<String, dynamic> toJson() {return {
  if (headers != null) 'headers': headers?.map((k, v) => MapEntry(k, v.toJson())),
  if (uri != null) 'uri': uri?.toJson(),
};}
static bool canParse(Map<String, dynamic> json) {return json.keys.any((key) => const {'headers', 'uri'}.contains(key));}
RulesetsRewriteRuleRequestActionParameters copyWith({Map<String, RulesetsRewriteHeadersValue>? Function()? headers, RulesetsRewriteUriRequest? Function()? uri, }) {return RulesetsRewriteRuleRequestActionParameters(
  headers: headers != null ? headers() : this.headers,
  uri: uri != null ? uri() : this.uri,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is RulesetsRewriteRuleRequestActionParameters &&
          headers == other.headers &&
          uri == other.uri;}
@override int get hashCode {return Object.hash(headers, uri);}
@override String toString() {return 'RulesetsRewriteRuleRequestActionParameters(headers: $headers, uri: $uri)';}
}
