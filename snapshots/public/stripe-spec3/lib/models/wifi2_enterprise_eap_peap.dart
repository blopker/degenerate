// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class Wifi2EnterpriseEapPeap {const Wifi2EnterpriseEapPeap({required this.password, required this.ssid, required this.username, this.caCertificateFile, });

factory Wifi2EnterpriseEapPeap.fromJson(Map<String, dynamic> json) { return Wifi2EnterpriseEapPeap(
  caCertificateFile: json['ca_certificate_file'] as String?,
  password: json['password'] as String,
  ssid: json['ssid'] as String,
  username: json['username'] as String,
); }

final String? caCertificateFile;

final String password;

final String ssid;

final String username;

Map<String, dynamic> toJson() { return {
  'ca_certificate_file': ?caCertificateFile,
  'password': password,
  'ssid': ssid,
  'username': username,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('password') && json['password'] is String &&
      json.containsKey('ssid') && json['ssid'] is String &&
      json.containsKey('username') && json['username'] is String; } 
Wifi2EnterpriseEapPeap copyWith({String Function()? caCertificateFile, String? password, String? ssid, String? username, }) { return Wifi2EnterpriseEapPeap(
  caCertificateFile: caCertificateFile != null ? caCertificateFile() : this.caCertificateFile,
  password: password ?? this.password,
  ssid: ssid ?? this.ssid,
  username: username ?? this.username,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is Wifi2EnterpriseEapPeap &&
          caCertificateFile == other.caCertificateFile &&
          password == other.password &&
          ssid == other.ssid &&
          username == other.username; } 
@override int get hashCode { return Object.hash(caCertificateFile, password, ssid, username); } 
@override String toString() { return 'Wifi2EnterpriseEapPeap(caCertificateFile: $caCertificateFile, password: $password, ssid: $ssid, username: $username)'; } 
 }
