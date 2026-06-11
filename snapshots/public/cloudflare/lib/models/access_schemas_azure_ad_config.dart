// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Indicates the type of user interaction that is required. prompt=login forces the user to enter their credentials on that request, negating single-sign on. prompt=none is the opposite. It ensures that the user isn't presented with any interactive prompt. If the request can't be completed silently by using single-sign on, the Microsoft identity platform returns an interaction_required error. prompt=select_account interrupts single sign-on providing account selection experience listing all the accounts either in session or any remembered account or an option to choose to use a different account altogether.
@immutable final class AccessSchemasAzureAdConfigPrompt {const AccessSchemasAzureAdConfigPrompt._(this.value);

factory AccessSchemasAzureAdConfigPrompt.fromJson(String json) { return switch (json) {
  'login' => login,
  'select_account' => selectAccount,
  'none' => none,
  _ => AccessSchemasAzureAdConfigPrompt._(json),
}; }

static const AccessSchemasAzureAdConfigPrompt login = AccessSchemasAzureAdConfigPrompt._('login');

static const AccessSchemasAzureAdConfigPrompt selectAccount = AccessSchemasAzureAdConfigPrompt._('select_account');

static const AccessSchemasAzureAdConfigPrompt none = AccessSchemasAzureAdConfigPrompt._('none');

static const List<AccessSchemasAzureAdConfigPrompt> values = [login, selectAccount, none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessSchemasAzureAdConfigPrompt && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccessSchemasAzureAdConfigPrompt($value)'; } 
 }
@immutable final class AccessSchemasAzureAdConfig {const AccessSchemasAzureAdConfig({this.clientId, this.clientSecret, this.conditionalAccessEnabled, this.directoryId, this.prompt, this.supportGroups, });

factory AccessSchemasAzureAdConfig.fromJson(Map<String, dynamic> json) { return AccessSchemasAzureAdConfig(
  clientId: json['client_id'] as String?,
  clientSecret: json['client_secret'] as String?,
  conditionalAccessEnabled: json['conditional_access_enabled'] as bool?,
  directoryId: json['directory_id'] as String?,
  prompt: json['prompt'] != null ? AccessSchemasAzureAdConfigPrompt.fromJson(json['prompt'] as String) : null,
  supportGroups: json['support_groups'] as bool?,
); }

/// Your OAuth Client ID
final String? clientId;

/// Your OAuth Client Secret
final String? clientSecret;

/// Should Cloudflare try to load authentication contexts from your account
final bool? conditionalAccessEnabled;

/// Your Azure directory uuid
final String? directoryId;

/// Indicates the type of user interaction that is required. prompt=login forces the user to enter their credentials on that request, negating single-sign on. prompt=none is the opposite. It ensures that the user isn't presented with any interactive prompt. If the request can't be completed silently by using single-sign on, the Microsoft identity platform returns an interaction_required error. prompt=select_account interrupts single sign-on providing account selection experience listing all the accounts either in session or any remembered account or an option to choose to use a different account altogether.
final AccessSchemasAzureAdConfigPrompt? prompt;

/// Should Cloudflare try to load groups from your account
final bool? supportGroups;

Map<String, dynamic> toJson() { return {
  'client_id': ?clientId,
  'client_secret': ?clientSecret,
  'conditional_access_enabled': ?conditionalAccessEnabled,
  'directory_id': ?directoryId,
  if (prompt != null) 'prompt': prompt?.toJson(),
  'support_groups': ?supportGroups,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'client_id', 'client_secret', 'conditional_access_enabled', 'directory_id', 'prompt', 'support_groups'}.contains(key)); } 
AccessSchemasAzureAdConfig copyWith({String Function()? clientId, String Function()? clientSecret, bool Function()? conditionalAccessEnabled, String Function()? directoryId, AccessSchemasAzureAdConfigPrompt Function()? prompt, bool Function()? supportGroups, }) { return AccessSchemasAzureAdConfig(
  clientId: clientId != null ? clientId() : this.clientId,
  clientSecret: clientSecret != null ? clientSecret() : this.clientSecret,
  conditionalAccessEnabled: conditionalAccessEnabled != null ? conditionalAccessEnabled() : this.conditionalAccessEnabled,
  directoryId: directoryId != null ? directoryId() : this.directoryId,
  prompt: prompt != null ? prompt() : this.prompt,
  supportGroups: supportGroups != null ? supportGroups() : this.supportGroups,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessSchemasAzureAdConfig &&
          clientId == other.clientId &&
          clientSecret == other.clientSecret &&
          conditionalAccessEnabled == other.conditionalAccessEnabled &&
          directoryId == other.directoryId &&
          prompt == other.prompt &&
          supportGroups == other.supportGroups; } 
@override int get hashCode { return Object.hash(clientId, clientSecret, conditionalAccessEnabled, directoryId, prompt, supportGroups); } 
@override String toString() { return 'AccessSchemasAzureAdConfig(clientId: $clientId, clientSecret: $clientSecret, conditionalAccessEnabled: $conditionalAccessEnabled, directoryId: $directoryId, prompt: $prompt, supportGroups: $supportGroups)'; } 
 }
