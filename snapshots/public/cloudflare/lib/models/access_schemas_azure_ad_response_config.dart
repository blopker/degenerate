// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Indicates the type of user interaction that is required. prompt=login forces the user to enter their credentials on that request, negating single-sign on. prompt=none is the opposite. It ensures that the user isn't presented with any interactive prompt. If the request can't be completed silently by using single-sign on, the Microsoft identity platform returns an interaction_required error. prompt=select_account interrupts single sign-on providing account selection experience listing all the accounts either in session or any remembered account or an option to choose to use a different account altogether.
@immutable final class AccessSchemasAzureAdResponseConfigPrompt {const AccessSchemasAzureAdResponseConfigPrompt._(this.value);

factory AccessSchemasAzureAdResponseConfigPrompt.fromJson(String json) {return switch (json) {
  'login' => login,
  'select_account' => selectAccount,
  'none' => none,
  _ => AccessSchemasAzureAdResponseConfigPrompt._(json),
};}

static const AccessSchemasAzureAdResponseConfigPrompt login = AccessSchemasAzureAdResponseConfigPrompt._('login');

static const AccessSchemasAzureAdResponseConfigPrompt selectAccount = AccessSchemasAzureAdResponseConfigPrompt._('select_account');

static const AccessSchemasAzureAdResponseConfigPrompt none = AccessSchemasAzureAdResponseConfigPrompt._('none');

static const List<AccessSchemasAzureAdResponseConfigPrompt> values = [login, selectAccount, none];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is AccessSchemasAzureAdResponseConfigPrompt && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'AccessSchemasAzureAdResponseConfigPrompt($value)';}
}
@immutable final class AccessSchemasAzureAdResponseConfig {const AccessSchemasAzureAdResponseConfig({this.clientId, this.conditionalAccessEnabled, this.directoryId, this.prompt, this.supportGroups, });

factory AccessSchemasAzureAdResponseConfig.fromJson(Map<String, dynamic> json) {return AccessSchemasAzureAdResponseConfig(
  clientId: json['client_id'] as String?,
  conditionalAccessEnabled: json['conditional_access_enabled'] as bool?,
  directoryId: json['directory_id'] as String?,
  prompt: json['prompt'] != null ? AccessSchemasAzureAdResponseConfigPrompt.fromJson(json['prompt'] as String) : null,
  supportGroups: json['support_groups'] as bool?,
);}

/// Your OAuth Client ID
final String? clientId;

/// Should Cloudflare try to load authentication contexts from your account
final bool? conditionalAccessEnabled;

/// Your Azure directory uuid
final String? directoryId;

/// Indicates the type of user interaction that is required. prompt=login forces the user to enter their credentials on that request, negating single-sign on. prompt=none is the opposite. It ensures that the user isn't presented with any interactive prompt. If the request can't be completed silently by using single-sign on, the Microsoft identity platform returns an interaction_required error. prompt=select_account interrupts single sign-on providing account selection experience listing all the accounts either in session or any remembered account or an option to choose to use a different account altogether.
final AccessSchemasAzureAdResponseConfigPrompt? prompt;

/// Should Cloudflare try to load groups from your account
final bool? supportGroups;

Map<String, dynamic> toJson() {return {
  'client_id': ?clientId,
  'conditional_access_enabled': ?conditionalAccessEnabled,
  'directory_id': ?directoryId,
  if (prompt != null) 'prompt': prompt?.toJson(),
  'support_groups': ?supportGroups,
};}
static bool canParse(Map<String, dynamic> json) {return json.keys.any((key) => const {'client_id', 'conditional_access_enabled', 'directory_id', 'prompt', 'support_groups'}.contains(key));}
AccessSchemasAzureAdResponseConfig copyWith({String? Function()? clientId, bool? Function()? conditionalAccessEnabled, String? Function()? directoryId, AccessSchemasAzureAdResponseConfigPrompt? Function()? prompt, bool? Function()? supportGroups, }) {return AccessSchemasAzureAdResponseConfig(
  clientId: clientId != null ? clientId() : this.clientId,
  conditionalAccessEnabled: conditionalAccessEnabled != null ? conditionalAccessEnabled() : this.conditionalAccessEnabled,
  directoryId: directoryId != null ? directoryId() : this.directoryId,
  prompt: prompt != null ? prompt() : this.prompt,
  supportGroups: supportGroups != null ? supportGroups() : this.supportGroups,
);}
@override bool operator ==(Object other) {return identical(this, other) ||
      other is AccessSchemasAzureAdResponseConfig &&
          clientId == other.clientId &&
          conditionalAccessEnabled == other.conditionalAccessEnabled &&
          directoryId == other.directoryId &&
          prompt == other.prompt &&
          supportGroups == other.supportGroups;}
@override int get hashCode {return Object.hash(clientId, conditionalAccessEnabled, directoryId, prompt, supportGroups);}
@override String toString() {return 'AccessSchemasAzureAdResponseConfig(clientId: $clientId, conditionalAccessEnabled: $conditionalAccessEnabled, directoryId: $directoryId, prompt: $prompt, supportGroups: $supportGroups)';}
}
