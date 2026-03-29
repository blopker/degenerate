// GENERATED CODE - DO NOT MODIFY BY HAND

/// The TCP connection method to use for the health check.
final class HealthchecksTcpConfigMethod {const HealthchecksTcpConfigMethod._(this.value);

factory HealthchecksTcpConfigMethod.fromJson(String json) { return switch (json) {
  'connection_established' => connectionEstablished,
  _ => HealthchecksTcpConfigMethod._(json),
}; }

static const HealthchecksTcpConfigMethod connectionEstablished = HealthchecksTcpConfigMethod._('connection_established');

static const List<HealthchecksTcpConfigMethod> values = [connectionEstablished];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is HealthchecksTcpConfigMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'HealthchecksTcpConfigMethod($value)'; } 
 }
/// Parameters specific to TCP health check.
final class HealthchecksTcpConfig {const HealthchecksTcpConfig({this.method = HealthchecksTcpConfigMethod.connectionEstablished, this.port = 80, });

factory HealthchecksTcpConfig.fromJson(Map<String, dynamic> json) { return HealthchecksTcpConfig(
  method: json.containsKey('method') ? HealthchecksTcpConfigMethod.fromJson(json['method'] as String) : HealthchecksTcpConfigMethod.connectionEstablished,
  port: json.containsKey('port') ? (json['port'] as num).toInt() : 80,
); }

/// The TCP connection method to use for the health check.
final HealthchecksTcpConfigMethod method;

/// Port number to connect to for the health check. Defaults to 80.
final int port;

Map<String, dynamic> toJson() { return {
  'method': method.toJson(),
  'port': port,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'method', 'port'}.contains(key)); } 
HealthchecksTcpConfig copyWith({HealthchecksTcpConfigMethod Function()? method, int Function()? port, }) { return HealthchecksTcpConfig(
  method: method != null ? method() : this.method,
  port: port != null ? port() : this.port,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is HealthchecksTcpConfig &&
          method == other.method &&
          port == other.port; } 
@override int get hashCode { return Object.hash(method, port); } 
@override String toString() { return 'HealthchecksTcpConfig(method: $method, port: $port)'; } 
 }
