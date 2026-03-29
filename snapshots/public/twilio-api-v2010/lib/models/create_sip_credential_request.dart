// GENERATED CODE - DO NOT MODIFY BY HAND

final class CreateSipCredentialRequest {const CreateSipCredentialRequest({required this.username, required this.password, });

factory CreateSipCredentialRequest.fromJson(Map<String, dynamic> json) { return CreateSipCredentialRequest(
  username: json['Username'] as String,
  password: json['Password'] as String,
); }

/// The username that will be passed when authenticating SIP requests. The username should be sent in response to Twilio's challenge of the initial INVITE. It can be up to 32 characters long.
final String username;

/// The password that the username will use when authenticating SIP requests. The password must be a minimum of 12 characters, contain at least 1 digit, and have mixed case. (eg `IWasAtSignal2018`)
final String password;

Map<String, dynamic> toJson() { return {
  'Username': username,
  'Password': password,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('Username') && json['Username'] is String &&
      json.containsKey('Password') && json['Password'] is String; } 
CreateSipCredentialRequest copyWith({String? username, String? password, }) { return CreateSipCredentialRequest(
  username: username ?? this.username,
  password: password ?? this.password,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CreateSipCredentialRequest &&
          username == other.username &&
          password == other.password; } 
@override int get hashCode { return Object.hash(username, password); } 
@override String toString() { return 'CreateSipCredentialRequest(username: $username, password: $password)'; } 
 }
