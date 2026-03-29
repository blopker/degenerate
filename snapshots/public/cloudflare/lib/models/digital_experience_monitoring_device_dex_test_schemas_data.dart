// GENERATED CODE - DO NOT MODIFY BY HAND

/// The type of test.
final class DigitalExperienceMonitoringDeviceDexTestSchemasDataKind {const DigitalExperienceMonitoringDeviceDexTestSchemasDataKind._(this.value);

factory DigitalExperienceMonitoringDeviceDexTestSchemasDataKind.fromJson(String json) { return switch (json) {
  'http' => http,
  'traceroute' => traceroute,
  _ => DigitalExperienceMonitoringDeviceDexTestSchemasDataKind._(json),
}; }

static const DigitalExperienceMonitoringDeviceDexTestSchemasDataKind http = DigitalExperienceMonitoringDeviceDexTestSchemasDataKind._('http');

static const DigitalExperienceMonitoringDeviceDexTestSchemasDataKind traceroute = DigitalExperienceMonitoringDeviceDexTestSchemasDataKind._('traceroute');

static const List<DigitalExperienceMonitoringDeviceDexTestSchemasDataKind> values = [http, traceroute];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DigitalExperienceMonitoringDeviceDexTestSchemasDataKind && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DigitalExperienceMonitoringDeviceDexTestSchemasDataKind($value)'; } 
 }
/// The HTTP request method type.
final class DigitalExperienceMonitoringDeviceDexTestSchemasDataMethod {const DigitalExperienceMonitoringDeviceDexTestSchemasDataMethod._(this.value);

factory DigitalExperienceMonitoringDeviceDexTestSchemasDataMethod.fromJson(String json) { return switch (json) {
  'GET' => $get,
  _ => DigitalExperienceMonitoringDeviceDexTestSchemasDataMethod._(json),
}; }

static const DigitalExperienceMonitoringDeviceDexTestSchemasDataMethod $get = DigitalExperienceMonitoringDeviceDexTestSchemasDataMethod._('GET');

static const List<DigitalExperienceMonitoringDeviceDexTestSchemasDataMethod> values = [$get];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is DigitalExperienceMonitoringDeviceDexTestSchemasDataMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'DigitalExperienceMonitoringDeviceDexTestSchemasDataMethod($value)'; } 
 }
/// The configuration object which contains the details for the WARP client to conduct the test.
final class DigitalExperienceMonitoringDeviceDexTestSchemasData {const DigitalExperienceMonitoringDeviceDexTestSchemasData({required this.host, required this.kind, this.method, });

factory DigitalExperienceMonitoringDeviceDexTestSchemasData.fromJson(Map<String, dynamic> json) { return DigitalExperienceMonitoringDeviceDexTestSchemasData(
  host: json['host'] as String,
  kind: DigitalExperienceMonitoringDeviceDexTestSchemasDataKind.fromJson(json['kind'] as String),
  method: json['method'] != null ? DigitalExperienceMonitoringDeviceDexTestSchemasDataMethod.fromJson(json['method'] as String) : null,
); }

/// The desired endpoint to test.
final String host;

/// The type of test.
final DigitalExperienceMonitoringDeviceDexTestSchemasDataKind kind;

/// The HTTP request method type.
final DigitalExperienceMonitoringDeviceDexTestSchemasDataMethod? method;

Map<String, dynamic> toJson() { return {
  'host': host,
  'kind': kind.toJson(),
  if (method != null) 'method': method?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('host') && json['host'] is String &&
      json.containsKey('kind'); } 
DigitalExperienceMonitoringDeviceDexTestSchemasData copyWith({String? host, DigitalExperienceMonitoringDeviceDexTestSchemasDataKind? kind, DigitalExperienceMonitoringDeviceDexTestSchemasDataMethod Function()? method, }) { return DigitalExperienceMonitoringDeviceDexTestSchemasData(
  host: host ?? this.host,
  kind: kind ?? this.kind,
  method: method != null ? method() : this.method,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is DigitalExperienceMonitoringDeviceDexTestSchemasData &&
          host == other.host &&
          kind == other.kind &&
          method == other.method; } 
@override int get hashCode { return Object.hash(host, kind, method); } 
@override String toString() { return 'DigitalExperienceMonitoringDeviceDexTestSchemasData(host: $host, kind: $kind, method: $method)'; } 
 }
