// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class UsersDeleteSocialAccountForAuthenticatedUserRequest {const UsersDeleteSocialAccountForAuthenticatedUserRequest({required this.accountUrls});

factory UsersDeleteSocialAccountForAuthenticatedUserRequest.fromJson(Map<String, dynamic> json) { return UsersDeleteSocialAccountForAuthenticatedUserRequest(
  accountUrls: (json['account_urls'] as List<dynamic>).map((e) => e as String).toList(),
); }

/// Full URLs for the social media profiles to delete.
final List<String> accountUrls;

Map<String, dynamic> toJson() { return {
  'account_urls': accountUrls,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('account_urls'); } 
UsersDeleteSocialAccountForAuthenticatedUserRequest copyWith({List<String>? accountUrls}) { return UsersDeleteSocialAccountForAuthenticatedUserRequest(
  accountUrls: accountUrls ?? this.accountUrls,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UsersDeleteSocialAccountForAuthenticatedUserRequest &&
          listEquals(accountUrls, other.accountUrls); } 
@override int get hashCode { return Object.hashAll(accountUrls).hashCode; } 
@override String toString() { return 'UsersDeleteSocialAccountForAuthenticatedUserRequest(accountUrls: $accountUrls)'; } 
 }
