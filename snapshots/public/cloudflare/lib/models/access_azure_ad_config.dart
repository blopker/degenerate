// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Indicates the type of user interaction that is required. prompt=login forces the user to enter their credentials on that request, negating single-sign on. prompt=none is the opposite. It ensures that the user isn't presented with any interactive prompt. If the request can't be completed silently by using single-sign on, the Microsoft identity platform returns an interaction_required error. prompt=select_account interrupts single sign-on providing account selection experience listing all the accounts either in session or any remembered account or an option to choose to use a different account altogether.
@immutable final class AccessAzureAdConfigPrompt {const AccessAzureAdConfigPrompt._(this.value);

factory AccessAzureAdConfigPrompt.fromJson(String json) { return switch (json) {
  'login' => login,
  'select_account' => selectAccount,
  'none' => none,
  _ => AccessAzureAdConfigPrompt._(json),
}; }

static const AccessAzureAdConfigPrompt login = AccessAzureAdConfigPrompt._('login');

static const AccessAzureAdConfigPrompt selectAccount = AccessAzureAdConfigPrompt._('select_account');

static const AccessAzureAdConfigPrompt none = AccessAzureAdConfigPrompt._('none');

static const List<AccessAzureAdConfigPrompt> values = [login, selectAccount, none];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is AccessAzureAdConfigPrompt && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'AccessAzureAdConfigPrompt($value)'; } 
 }
@immutable final class AccessAzureAdConfig {const AccessAzureAdConfig({this.clientId, this.clientSecret, this.claims, this.emailClaimName, this.conditionalAccessEnabled, this.directoryId, this.prompt, this.supportGroups, });

factory AccessAzureAdConfig.fromJson(Map<String, dynamic> json) { return AccessAzureAdConfig(
  clientId: json['client_id'] as String?,
  clientSecret: json['client_secret'] as String?,
  claims: (json['claims'] as List<dynamic>?)?.map((e) => e as String).toList(),
  emailClaimName: json['email_claim_name'] as String?,
  conditionalAccessEnabled: json['conditional_access_enabled'] as bool?,
  directoryId: json['directory_id'] as String?,
  prompt: json['prompt'] != null ? AccessAzureAdConfigPrompt.fromJson(json['prompt'] as String) : null,
  supportGroups: json['support_groups'] as bool?,
); }

/// Your OAuth Client ID
final String? clientId;

/// Your OAuth Client Secret
final String? clientSecret;

/// Custom claims
final List<String>? claims;

/// The claim name for email in the id_token response.
final String? emailClaimName;

/// Should Cloudflare try to load authentication contexts from your account
final bool? conditionalAccessEnabled;

/// Your Azure directory uuid
final String? directoryId;

/// Indicates the type of user interaction that is required. prompt=login forces the user to enter their credentials on that request, negating single-sign on. prompt=none is the opposite. It ensures that the user isn't presented with any interactive prompt. If the request can't be completed silently by using single-sign on, the Microsoft identity platform returns an interaction_required error. prompt=select_account interrupts single sign-on providing account selection experience listing all the accounts either in session or any remembered account or an option to choose to use a different account altogether.
final AccessAzureAdConfigPrompt? prompt;

/// Should Cloudflare try to load groups from your account
final bool? supportGroups;

Map<String, dynamic> toJson() { return {
  'client_id': ?clientId,
  'client_secret': ?clientSecret,
  'claims': ?claims,
  'email_claim_name': ?emailClaimName,
  'conditional_access_enabled': ?conditionalAccessEnabled,
  'directory_id': ?directoryId,
  if (prompt != null) 'prompt': prompt?.toJson(),
  'support_groups': ?supportGroups,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'client_id', 'client_secret', 'claims', 'email_claim_name', 'conditional_access_enabled', 'directory_id', 'prompt', 'support_groups'}.contains(key)); } 
AccessAzureAdConfig copyWith({String? Function()? clientId, String? Function()? clientSecret, List<String>? Function()? claims, String? Function()? emailClaimName, bool? Function()? conditionalAccessEnabled, String? Function()? directoryId, AccessAzureAdConfigPrompt? Function()? prompt, bool? Function()? supportGroups, }) { return AccessAzureAdConfig(
  clientId: clientId != null ? clientId() : this.clientId,
  clientSecret: clientSecret != null ? clientSecret() : this.clientSecret,
  claims: claims != null ? claims() : this.claims,
  emailClaimName: emailClaimName != null ? emailClaimName() : this.emailClaimName,
  conditionalAccessEnabled: conditionalAccessEnabled != null ? conditionalAccessEnabled() : this.conditionalAccessEnabled,
  directoryId: directoryId != null ? directoryId() : this.directoryId,
  prompt: prompt != null ? prompt() : this.prompt,
  supportGroups: supportGroups != null ? supportGroups() : this.supportGroups,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is AccessAzureAdConfig &&
          clientId == other.clientId &&
          clientSecret == other.clientSecret &&
          listEquals(claims, other.claims) &&
          emailClaimName == other.emailClaimName &&
          conditionalAccessEnabled == other.conditionalAccessEnabled &&
          directoryId == other.directoryId &&
          prompt == other.prompt &&
          supportGroups == other.supportGroups; } 
@override int get hashCode { return Object.hash(clientId, clientSecret, Object.hashAll(claims ?? const []), emailClaimName, conditionalAccessEnabled, directoryId, prompt, supportGroups); } 
@override String toString() { return 'AccessAzureAdConfig(clientId: $clientId, clientSecret: $clientSecret, claims: $claims, emailClaimName: $emailClaimName, conditionalAccessEnabled: $conditionalAccessEnabled, directoryId: $directoryId, prompt: $prompt, supportGroups: $supportGroups)'; } 
 }
