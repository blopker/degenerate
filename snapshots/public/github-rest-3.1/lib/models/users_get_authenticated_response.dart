// GENERATED CODE - DO NOT MODIFY BY HAND

import 'private_user.dart';import 'public_user.dart';sealed class UsersGetAuthenticatedResponse {const UsersGetAuthenticatedResponse();

/// Deserialize from JSON, dispatching on the `user_view_type` discriminator.
factory UsersGetAuthenticatedResponse.fromJson(Map<String, dynamic> json) { return switch (json['user_view_type']) {
  'public' => UsersGetAuthenticatedResponsePublic.fromJson(json),
  'private' => UsersGetAuthenticatedResponsePrivate.fromJson(json),
  _ => UsersGetAuthenticatedResponse$Unknown(json),
}; }

/// The discriminator value identifying this variant.
String get userViewType;
Map<String, dynamic> toJson();
/// Whether this variant is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return this is UsersGetAuthenticatedResponse$Unknown; } 
 }
final class UsersGetAuthenticatedResponsePublic extends UsersGetAuthenticatedResponse {const UsersGetAuthenticatedResponsePublic(this.publicUser);

factory UsersGetAuthenticatedResponsePublic.fromJson(Map<String, dynamic> json) { return UsersGetAuthenticatedResponsePublic(PublicUser.fromJson(json)); }

final PublicUser publicUser;

@override String get userViewType { return 'public'; } 
@override Map<String, dynamic> toJson() { return {...publicUser.toJson(), 'user_view_type': userViewType}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersGetAuthenticatedResponsePublic && publicUser == other.publicUser; } 
@override int get hashCode { return publicUser.hashCode; } 
@override String toString() { return 'UsersGetAuthenticatedResponsePublic(publicUser: $publicUser)'; } 
 }
final class UsersGetAuthenticatedResponsePrivate extends UsersGetAuthenticatedResponse {const UsersGetAuthenticatedResponsePrivate(this.privateUser);

factory UsersGetAuthenticatedResponsePrivate.fromJson(Map<String, dynamic> json) { return UsersGetAuthenticatedResponsePrivate(PrivateUser.fromJson(json)); }

final PrivateUser privateUser;

@override String get userViewType { return 'private'; } 
@override Map<String, dynamic> toJson() { return {...privateUser.toJson(), 'user_view_type': userViewType}; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersGetAuthenticatedResponsePrivate && privateUser == other.privateUser; } 
@override int get hashCode { return privateUser.hashCode; } 
@override String toString() { return 'UsersGetAuthenticatedResponsePrivate(privateUser: $privateUser)'; } 
 }
/// An unknown variant not defined in the OpenAPI spec.
/// Returned when the server sends a discriminator value that this client does not recognize.
final class UsersGetAuthenticatedResponse$Unknown extends UsersGetAuthenticatedResponse {const UsersGetAuthenticatedResponse$Unknown(this.json);

final Map<String, dynamic> json;

@override String get userViewType { return json['user_view_type'] as String? ?? ''; } 
@override Map<String, dynamic> toJson() { return json; } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is UsersGetAuthenticatedResponse$Unknown && json == other.json; } 
@override int get hashCode { return json.hashCode; } 
@override String toString() { return 'UsersGetAuthenticatedResponse.unknown($json)'; } 
 }
