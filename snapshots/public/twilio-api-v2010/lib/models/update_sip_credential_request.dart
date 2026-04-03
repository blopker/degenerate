// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class UpdateSipCredentialRequest {const UpdateSipCredentialRequest({this.password});

factory UpdateSipCredentialRequest.fromJson(Map<String, dynamic> json) { return UpdateSipCredentialRequest(
  password: json['Password'] as String?,
); }

/// The password that the username will use when authenticating SIP requests. The password must be a minimum of 12 characters, contain at least 1 digit, and have mixed case. (eg `IWasAtSignal2018`)
final String? password;

Map<String, dynamic> toJson() { return {
  'Password': ?password,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'Password'}.contains(key)); } 
UpdateSipCredentialRequest copyWith({String Function()? password}) { return UpdateSipCredentialRequest(
  password: password != null ? password() : this.password,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UpdateSipCredentialRequest &&
          password == other.password; } 
@override int get hashCode { return password.hashCode; } 
@override String toString() { return 'UpdateSipCredentialRequest(password: $password)'; } 
 }
