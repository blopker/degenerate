// GENERATED CODE - DO NOT MODIFY BY HAND

final class WifiPersonalPsk {const WifiPersonalPsk({required this.password, required this.ssid, });

factory WifiPersonalPsk.fromJson(Map<String, dynamic> json) { return WifiPersonalPsk(
  password: json['password'] as String,
  ssid: json['ssid'] as String,
); }

final String password;

final String ssid;

Map<String, dynamic> toJson() { return {
  'password': password,
  'ssid': ssid,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('password') && json['password'] is String &&
      json.containsKey('ssid') && json['ssid'] is String; } 
WifiPersonalPsk copyWith({String? password, String? ssid, }) { return WifiPersonalPsk(
  password: password ?? this.password,
  ssid: ssid ?? this.ssid,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WifiPersonalPsk &&
          password == other.password &&
          ssid == other.ssid; } 
@override int get hashCode { return Object.hash(password, ssid); } 
@override String toString() { return 'WifiPersonalPsk(password: $password, ssid: $ssid)'; } 
 }
