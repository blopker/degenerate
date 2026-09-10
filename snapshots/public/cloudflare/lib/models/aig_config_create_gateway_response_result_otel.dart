// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class AigConfigCreateGatewayResponseResultOtelContentType {const AigConfigCreateGatewayResponseResultOtelContentType._(this.value);

factory AigConfigCreateGatewayResponseResultOtelContentType.fromJson(String json) {return switch (json) {
  'json' => $json,
  'protobuf' => protobuf,
  _ => AigConfigCreateGatewayResponseResultOtelContentType._(json),
};}

static const AigConfigCreateGatewayResponseResultOtelContentType $json = AigConfigCreateGatewayResponseResultOtelContentType._('json');

static const AigConfigCreateGatewayResponseResultOtelContentType protobuf = AigConfigCreateGatewayResponseResultOtelContentType._('protobuf');

static const List<AigConfigCreateGatewayResponseResultOtelContentType> values = [$json, protobuf];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is AigConfigCreateGatewayResponseResultOtelContentType && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'AigConfigCreateGatewayResponseResultOtelContentType($value)';}
}
@immutable final class AigConfigCreateGatewayResponseResultOtel {const AigConfigCreateGatewayResponseResultOtel({required this.authorization, required this.headers, required this.url, this.contentType, });

factory AigConfigCreateGatewayResponseResultOtel.fromJson(Map<String, dynamic> json) {return AigConfigCreateGatewayResponseResultOtel(
  authorization: json['authorization'] as String,
  contentType: json['content_type'] != null ? AigConfigCreateGatewayResponseResultOtelContentType.fromJson(json['content_type'] as String) : null,
  headers: (json['headers'] as Map<String, dynamic>).map((k, v) => MapEntry(k, v as String)),
  url: json['url'] as String,
);}

final String authorization;

final AigConfigCreateGatewayResponseResultOtelContentType? contentType;

final Map<String,String> headers;

final String url;

/// The value with the schema default applied when absent.
AigConfigCreateGatewayResponseResultOtelContentType get contentTypeOrDefault {return contentType ?? AigConfigCreateGatewayResponseResultOtelContentType.fromJson('json');}
Map<String, dynamic> toJson() {return {
  'authorization': authorization,
  if (contentType != null) 'content_type': contentType?.toJson(),
  'headers': headers,
  'url': url,
};}
static bool canParse(Map<String, dynamic> json) {return json.containsKey('authorization') && json['authorization'] is String &&
      json.containsKey('headers') &&
      json.containsKey('url') && json['url'] is String;}
AigConfigCreateGatewayResponseResultOtel copyWith({String? authorization, AigConfigCreateGatewayResponseResultOtelContentType? Function()? contentType, Map<String,String>? headers, String? url, }) {return AigConfigCreateGatewayResponseResultOtel(
  authorization: authorization ?? this.authorization,
  contentType: contentType != null ? contentType() : this.contentType,
  headers: headers ?? this.headers,
  url: url ?? this.url,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is AigConfigCreateGatewayResponseResultOtel &&
          authorization == other.authorization &&
          contentType == other.contentType &&
          headers == other.headers &&
          url == other.url;}
@override int get hashCode {return Object.hash(authorization, contentType, headers, url);}
@override String toString() {return 'AigConfigCreateGatewayResponseResultOtel(authorization: $authorization, contentType: $contentType, headers: $headers, url: $url)';}
}
