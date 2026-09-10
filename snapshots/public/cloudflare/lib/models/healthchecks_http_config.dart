// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// The HTTP method to use for the health check.
@immutable final class HealthchecksHttpConfigMethod {const HealthchecksHttpConfigMethod._(this.value);

factory HealthchecksHttpConfigMethod.fromJson(String json) {return switch (json) {
  'GET' => $get,
  'HEAD' => head,
  _ => HealthchecksHttpConfigMethod._(json),
};}

static const HealthchecksHttpConfigMethod $get = HealthchecksHttpConfigMethod._('GET');

static const HealthchecksHttpConfigMethod head = HealthchecksHttpConfigMethod._('HEAD');

static const List<HealthchecksHttpConfigMethod> values = [$get, head];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is HealthchecksHttpConfigMethod && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'HealthchecksHttpConfigMethod($value)';}
}
/// Parameters specific to an HTTP or HTTPS health check.
@immutable final class HealthchecksHttpConfig {const HealthchecksHttpConfig({this.allowInsecure, this.expectedBody, this.expectedCodes = const Omittable.absent(), this.followRedirects, this.header = const Omittable.absent(), this.method, this.path, this.port, });

factory HealthchecksHttpConfig.fromJson(Map<String, dynamic> json) {return HealthchecksHttpConfig(
  allowInsecure: json['allow_insecure'] as bool?,
  expectedBody: json['expected_body'] as String?,
  expectedCodes: json.containsKey('expected_codes') ? Omittable((json['expected_codes'] as List<dynamic>?)?.map((e) => e as String).toList()) : const Omittable.absent(),
  followRedirects: json['follow_redirects'] as bool?,
  header: json.containsKey('header') ? Omittable((json['header'] as Map<String, dynamic>?)?.map((k, v) => MapEntry(k, (v as List<dynamic>).map((e) => e as String).toList()))) : const Omittable.absent(),
  method: json['method'] != null ? HealthchecksHttpConfigMethod.fromJson(json['method'] as String) : null,
  path: json['path'] as String?,
  port: json['port'] != null ? (json['port'] as num).toInt() : null,
);}

/// Do not validate the certificate when the health check uses HTTPS.
final bool? allowInsecure;

/// A case-insensitive sub-string to look for in the response body. If this string is not found, the origin will be marked as unhealthy.
final String? expectedBody;

/// The expected HTTP response codes (e.g. "200") or code ranges (e.g. "2xx" for all codes starting with 2) of the health check.
final Omittable<List<String>?> expectedCodes;

/// Follow redirects if the origin returns a 3xx status code.
final bool? followRedirects;

/// The HTTP request headers to send in the health check. It is recommended you set a Host header by default. The User-Agent header cannot be overridden.
final Omittable<Map<String,List<String>>?> header;

/// The HTTP method to use for the health check.
final HealthchecksHttpConfigMethod? method;

/// The endpoint path to health check against.
final String? path;

/// Port number to connect to for the health check. Defaults to 80 if type is HTTP or 443 if type is HTTPS.
final int? port;

/// The value with the schema default applied when absent.
bool get allowInsecureOrDefault {return allowInsecure ?? false;}
/// The value with the schema default applied when absent.
String get expectedBodyOrDefault {return expectedBody ?? '';}
/// The value with the schema default applied when absent.
bool get followRedirectsOrDefault {return followRedirects ?? false;}
/// The value with the schema default applied when absent.
HealthchecksHttpConfigMethod get methodOrDefault {return method ?? HealthchecksHttpConfigMethod.fromJson('GET');}
/// The value with the schema default applied when absent.
String get pathOrDefault {return path ?? '/';}
/// The value with the schema default applied when absent.
int get portOrDefault {return port ?? 80;}
Map<String, dynamic> toJson() {return {
  'allow_insecure': ?allowInsecure,
  'expected_body': ?expectedBody,
  if (expectedCodes.isPresent) 'expected_codes': expectedCodes.value,
  'follow_redirects': ?followRedirects,
  if (header.isPresent) 'header': header.value,
  if (method != null) 'method': method?.toJson(),
  'path': ?path,
  'port': ?port,
};}
static bool canParse(Map<String, dynamic> json) {return json.keys.any((key) => const {'allow_insecure', 'expected_body', 'expected_codes', 'follow_redirects', 'header', 'method', 'path', 'port'}.contains(key));}
HealthchecksHttpConfig copyWith({bool? Function()? allowInsecure, String? Function()? expectedBody, Omittable<List<String>?>? expectedCodes, bool? Function()? followRedirects, Omittable<Map<String,List<String>>?>? header, HealthchecksHttpConfigMethod? Function()? method, String? Function()? path, int? Function()? port, }) {return HealthchecksHttpConfig(
  allowInsecure: allowInsecure != null ? allowInsecure() : this.allowInsecure,
  expectedBody: expectedBody != null ? expectedBody() : this.expectedBody,
  expectedCodes: expectedCodes ?? this.expectedCodes,
  followRedirects: followRedirects != null ? followRedirects() : this.followRedirects,
  header: header ?? this.header,
  method: method != null ? method() : this.method,
  path: path != null ? path() : this.path,
  port: port != null ? port() : this.port,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is HealthchecksHttpConfig &&
          allowInsecure == other.allowInsecure &&
          expectedBody == other.expectedBody &&
          expectedCodes.isPresent == other.expectedCodes.isPresent &&
          listEquals(expectedCodes.value, other.expectedCodes.value) &&
          followRedirects == other.followRedirects &&
          header == other.header &&
          method == other.method &&
          path == other.path &&
          port == other.port;}
@override int get hashCode {return Object.hash(allowInsecure, expectedBody, Object.hashAll(expectedCodes.value ?? const []), followRedirects, header, method, path, port);}
@override String toString() {return 'HealthchecksHttpConfig(allowInsecure: $allowInsecure, expectedBody: $expectedBody, expectedCodes: $expectedCodes, followRedirects: $followRedirects, header: $header, method: $method, path: $path, port: $port)';}
}
