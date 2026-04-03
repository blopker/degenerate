// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'webhook_organization_renamed_changes_login.dart';@immutable final class WebhookOrganizationRenamedChanges {const WebhookOrganizationRenamedChanges({this.login});

factory WebhookOrganizationRenamedChanges.fromJson(Map<String, dynamic> json) { return WebhookOrganizationRenamedChanges(
  login: json['login'] != null ? WebhookOrganizationRenamedChangesLogin.fromJson(json['login'] as Map<String, dynamic>) : null,
); }

final WebhookOrganizationRenamedChangesLogin? login;

Map<String, dynamic> toJson() { return {
  if (login != null) 'login': login?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'login'}.contains(key)); } 
WebhookOrganizationRenamedChanges copyWith({WebhookOrganizationRenamedChangesLogin Function()? login}) { return WebhookOrganizationRenamedChanges(
  login: login != null ? login() : this.login,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WebhookOrganizationRenamedChanges &&
          login == other.login; } 
@override int get hashCode { return login.hashCode; } 
@override String toString() { return 'WebhookOrganizationRenamedChanges(login: $login)'; } 
 }
