// GENERATED CODE - DO NOT MODIFY BY HAND

final class TeamsDevicesPlatform {const TeamsDevicesPlatform._(this.value);

factory TeamsDevicesPlatform.fromJson(String json) { return switch (json) {
  'windows' => windows,
  'mac' => mac,
  'linux' => linux,
  'android' => android,
  'ios' => ios,
  'chromeos' => chromeos,
  _ => TeamsDevicesPlatform._(json),
}; }

static const TeamsDevicesPlatform windows = TeamsDevicesPlatform._('windows');

static const TeamsDevicesPlatform mac = TeamsDevicesPlatform._('mac');

static const TeamsDevicesPlatform linux = TeamsDevicesPlatform._('linux');

static const TeamsDevicesPlatform android = TeamsDevicesPlatform._('android');

static const TeamsDevicesPlatform ios = TeamsDevicesPlatform._('ios');

static const TeamsDevicesPlatform chromeos = TeamsDevicesPlatform._('chromeos');

static const List<TeamsDevicesPlatform> values = [windows, mac, linux, android, ios, chromeos];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is TeamsDevicesPlatform && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'TeamsDevicesPlatform($value)'; } 
 }
