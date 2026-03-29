// GENERATED CODE - DO NOT MODIFY BY HAND

final class AccessDeviceSession {const AccessDeviceSession({this.lastAuthenticated});

factory AccessDeviceSession.fromJson(Map<String, dynamic> json) { return AccessDeviceSession(
  lastAuthenticated: json['last_authenticated'] != null ? (json['last_authenticated'] as num).toDouble() : null,
); }

final double? lastAuthenticated;

Map<String, dynamic> toJson() { return {
  'last_authenticated': ?lastAuthenticated,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'last_authenticated'}.contains(key)); } 
AccessDeviceSession copyWith({double Function()? lastAuthenticated}) { return AccessDeviceSession(
  lastAuthenticated: lastAuthenticated != null ? lastAuthenticated() : this.lastAuthenticated,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessDeviceSession &&
          lastAuthenticated == other.lastAuthenticated; } 
@override int get hashCode { return lastAuthenticated.hashCode; } 
@override String toString() { return 'AccessDeviceSession(lastAuthenticated: $lastAuthenticated)'; } 
 }
