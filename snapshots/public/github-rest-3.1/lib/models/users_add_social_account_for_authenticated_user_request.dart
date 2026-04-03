// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class UsersAddSocialAccountForAuthenticatedUserRequest {const UsersAddSocialAccountForAuthenticatedUserRequest({required this.accountUrls});

factory UsersAddSocialAccountForAuthenticatedUserRequest.fromJson(Map<String, dynamic> json) { return UsersAddSocialAccountForAuthenticatedUserRequest(
  accountUrls: (json['account_urls'] as List<dynamic>).map((e) => e as String).toList(),
); }

/// Full URLs for the social media profiles to add.
final List<String> accountUrls;

Map<String, dynamic> toJson() { return {
  'account_urls': accountUrls,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('account_urls'); } 
UsersAddSocialAccountForAuthenticatedUserRequest copyWith({List<String>? accountUrls}) { return UsersAddSocialAccountForAuthenticatedUserRequest(
  accountUrls: accountUrls ?? this.accountUrls,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UsersAddSocialAccountForAuthenticatedUserRequest &&
          listEquals(accountUrls, other.accountUrls); } 
@override int get hashCode { return Object.hashAll(accountUrls).hashCode; } 
@override String toString() { return 'UsersAddSocialAccountForAuthenticatedUserRequest(accountUrls: $accountUrls)'; } 
 }
