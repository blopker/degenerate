// GENERATED CODE - DO NOT MODIFY BY HAND

/// The TCP connection method to use for the health check.
final class SmartshieldTcpConfigMethod {const SmartshieldTcpConfigMethod._(this.value);

factory SmartshieldTcpConfigMethod.fromJson(String json) { return switch (json) {
  'connection_established' => connectionEstablished,
  _ => SmartshieldTcpConfigMethod._(json),
}; }

static const SmartshieldTcpConfigMethod connectionEstablished = SmartshieldTcpConfigMethod._('connection_established');

static const List<SmartshieldTcpConfigMethod> values = [connectionEstablished];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is SmartshieldTcpConfigMethod && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'SmartshieldTcpConfigMethod($value)'; } 
 }
/// Parameters specific to TCP health check.
final class SmartshieldTcpConfig {const SmartshieldTcpConfig({this.method = SmartshieldTcpConfigMethod.connectionEstablished, this.port = 80, });

factory SmartshieldTcpConfig.fromJson(Map<String, dynamic> json) { return SmartshieldTcpConfig(
  method: json.containsKey('method') ? SmartshieldTcpConfigMethod.fromJson(json['method'] as String) : SmartshieldTcpConfigMethod.connectionEstablished,
  port: json.containsKey('port') ? (json['port'] as num).toInt() : 80,
); }

/// The TCP connection method to use for the health check.
final SmartshieldTcpConfigMethod method;

/// Port number to connect to for the health check. Defaults to 80.
final int port;

Map<String, dynamic> toJson() { return {
  'method': method.toJson(),
  'port': port,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
SmartshieldTcpConfig copyWith({SmartshieldTcpConfigMethod Function()? method, int Function()? port, }) { return SmartshieldTcpConfig(
  method: method != null ? method() : this.method,
  port: port != null ? port() : this.port,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SmartshieldTcpConfig &&
          method == other.method &&
          port == other.port; } 
@override int get hashCode { return Object.hash(method, port); } 
@override String toString() { return 'SmartshieldTcpConfig(method: $method, port: $port)'; } 
 }
