// GENERATED CODE - DO NOT MODIFY BY HAND

import 'copilot_organization_seat_breakdown.dart';/// The organization policy for allowing or blocking suggestions matching public code (duplication detection filter).
final class CopilotOrganizationDetailsPublicCodeSuggestions {const CopilotOrganizationDetailsPublicCodeSuggestions._(this.value);

factory CopilotOrganizationDetailsPublicCodeSuggestions.fromJson(String json) { return switch (json) {
  'allow' => allow,
  'block' => block,
  'unconfigured' => unconfigured,
  _ => CopilotOrganizationDetailsPublicCodeSuggestions._(json),
}; }

static const CopilotOrganizationDetailsPublicCodeSuggestions allow = CopilotOrganizationDetailsPublicCodeSuggestions._('allow');

static const CopilotOrganizationDetailsPublicCodeSuggestions block = CopilotOrganizationDetailsPublicCodeSuggestions._('block');

static const CopilotOrganizationDetailsPublicCodeSuggestions unconfigured = CopilotOrganizationDetailsPublicCodeSuggestions._('unconfigured');

static const List<CopilotOrganizationDetailsPublicCodeSuggestions> values = [allow, block, unconfigured];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CopilotOrganizationDetailsPublicCodeSuggestions && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CopilotOrganizationDetailsPublicCodeSuggestions($value)'; } 
 }
/// The organization policy for allowing or disallowing Copilot Chat in the IDE.
final class CopilotOrganizationDetailsIdeChat {const CopilotOrganizationDetailsIdeChat._(this.value);

factory CopilotOrganizationDetailsIdeChat.fromJson(String json) { return switch (json) {
  'enabled' => enabled,
  'disabled' => disabled,
  'unconfigured' => unconfigured,
  _ => CopilotOrganizationDetailsIdeChat._(json),
}; }

static const CopilotOrganizationDetailsIdeChat enabled = CopilotOrganizationDetailsIdeChat._('enabled');

static const CopilotOrganizationDetailsIdeChat disabled = CopilotOrganizationDetailsIdeChat._('disabled');

static const CopilotOrganizationDetailsIdeChat unconfigured = CopilotOrganizationDetailsIdeChat._('unconfigured');

static const List<CopilotOrganizationDetailsIdeChat> values = [enabled, disabled, unconfigured];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CopilotOrganizationDetailsIdeChat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CopilotOrganizationDetailsIdeChat($value)'; } 
 }
/// The organization policy for allowing or disallowing Copilot features on GitHub.com.
final class CopilotOrganizationDetailsPlatformChat {const CopilotOrganizationDetailsPlatformChat._(this.value);

factory CopilotOrganizationDetailsPlatformChat.fromJson(String json) { return switch (json) {
  'enabled' => enabled,
  'disabled' => disabled,
  'unconfigured' => unconfigured,
  _ => CopilotOrganizationDetailsPlatformChat._(json),
}; }

static const CopilotOrganizationDetailsPlatformChat enabled = CopilotOrganizationDetailsPlatformChat._('enabled');

static const CopilotOrganizationDetailsPlatformChat disabled = CopilotOrganizationDetailsPlatformChat._('disabled');

static const CopilotOrganizationDetailsPlatformChat unconfigured = CopilotOrganizationDetailsPlatformChat._('unconfigured');

static const List<CopilotOrganizationDetailsPlatformChat> values = [enabled, disabled, unconfigured];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CopilotOrganizationDetailsPlatformChat && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CopilotOrganizationDetailsPlatformChat($value)'; } 
 }
/// The organization policy for allowing or disallowing Copilot CLI.
final class CopilotOrganizationDetailsCli {const CopilotOrganizationDetailsCli._(this.value);

factory CopilotOrganizationDetailsCli.fromJson(String json) { return switch (json) {
  'enabled' => enabled,
  'disabled' => disabled,
  'unconfigured' => unconfigured,
  _ => CopilotOrganizationDetailsCli._(json),
}; }

static const CopilotOrganizationDetailsCli enabled = CopilotOrganizationDetailsCli._('enabled');

static const CopilotOrganizationDetailsCli disabled = CopilotOrganizationDetailsCli._('disabled');

static const CopilotOrganizationDetailsCli unconfigured = CopilotOrganizationDetailsCli._('unconfigured');

static const List<CopilotOrganizationDetailsCli> values = [enabled, disabled, unconfigured];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CopilotOrganizationDetailsCli && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CopilotOrganizationDetailsCli($value)'; } 
 }
/// The mode of assigning new seats.
final class CopilotOrganizationDetailsSeatManagementSetting {const CopilotOrganizationDetailsSeatManagementSetting._(this.value);

factory CopilotOrganizationDetailsSeatManagementSetting.fromJson(String json) { return switch (json) {
  'assign_all' => assignAll,
  'assign_selected' => assignSelected,
  'disabled' => disabled,
  'unconfigured' => unconfigured,
  _ => CopilotOrganizationDetailsSeatManagementSetting._(json),
}; }

static const CopilotOrganizationDetailsSeatManagementSetting assignAll = CopilotOrganizationDetailsSeatManagementSetting._('assign_all');

static const CopilotOrganizationDetailsSeatManagementSetting assignSelected = CopilotOrganizationDetailsSeatManagementSetting._('assign_selected');

static const CopilotOrganizationDetailsSeatManagementSetting disabled = CopilotOrganizationDetailsSeatManagementSetting._('disabled');

static const CopilotOrganizationDetailsSeatManagementSetting unconfigured = CopilotOrganizationDetailsSeatManagementSetting._('unconfigured');

static const List<CopilotOrganizationDetailsSeatManagementSetting> values = [assignAll, assignSelected, disabled, unconfigured];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CopilotOrganizationDetailsSeatManagementSetting && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CopilotOrganizationDetailsSeatManagementSetting($value)'; } 
 }
/// The Copilot plan of the organization, or the parent enterprise, when applicable.
final class CopilotOrganizationDetailsPlanType {const CopilotOrganizationDetailsPlanType._(this.value);

factory CopilotOrganizationDetailsPlanType.fromJson(String json) { return switch (json) {
  'business' => business,
  'enterprise' => enterprise,
  _ => CopilotOrganizationDetailsPlanType._(json),
}; }

static const CopilotOrganizationDetailsPlanType business = CopilotOrganizationDetailsPlanType._('business');

static const CopilotOrganizationDetailsPlanType enterprise = CopilotOrganizationDetailsPlanType._('enterprise');

static const List<CopilotOrganizationDetailsPlanType> values = [business, enterprise];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is CopilotOrganizationDetailsPlanType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'CopilotOrganizationDetailsPlanType($value)'; } 
 }
/// Information about the seat breakdown and policies set for an organization with a Copilot Business or Copilot Enterprise subscription.
final class CopilotOrganizationDetails {const CopilotOrganizationDetails({required this.seatBreakdown, required this.publicCodeSuggestions, this.ideChat, this.platformChat, this.cli, required this.seatManagementSetting, this.planType, });

factory CopilotOrganizationDetails.fromJson(Map<String, dynamic> json) { return CopilotOrganizationDetails(
  seatBreakdown: CopilotOrganizationSeatBreakdown.fromJson(json['seat_breakdown'] as Map<String, dynamic>),
  publicCodeSuggestions: CopilotOrganizationDetailsPublicCodeSuggestions.fromJson(json['public_code_suggestions'] as String),
  ideChat: json['ide_chat'] != null ? CopilotOrganizationDetailsIdeChat.fromJson(json['ide_chat'] as String) : null,
  platformChat: json['platform_chat'] != null ? CopilotOrganizationDetailsPlatformChat.fromJson(json['platform_chat'] as String) : null,
  cli: json['cli'] != null ? CopilotOrganizationDetailsCli.fromJson(json['cli'] as String) : null,
  seatManagementSetting: CopilotOrganizationDetailsSeatManagementSetting.fromJson(json['seat_management_setting'] as String),
  planType: json['plan_type'] != null ? CopilotOrganizationDetailsPlanType.fromJson(json['plan_type'] as String) : null,
); }

final CopilotOrganizationSeatBreakdown seatBreakdown;

/// The organization policy for allowing or blocking suggestions matching public code (duplication detection filter).
final CopilotOrganizationDetailsPublicCodeSuggestions publicCodeSuggestions;

/// The organization policy for allowing or disallowing Copilot Chat in the IDE.
final CopilotOrganizationDetailsIdeChat? ideChat;

/// The organization policy for allowing or disallowing Copilot features on GitHub.com.
final CopilotOrganizationDetailsPlatformChat? platformChat;

/// The organization policy for allowing or disallowing Copilot CLI.
final CopilotOrganizationDetailsCli? cli;

/// The mode of assigning new seats.
final CopilotOrganizationDetailsSeatManagementSetting seatManagementSetting;

/// The Copilot plan of the organization, or the parent enterprise, when applicable.
final CopilotOrganizationDetailsPlanType? planType;

Map<String, dynamic> toJson() { return {
  'seat_breakdown': seatBreakdown.toJson(),
  'public_code_suggestions': publicCodeSuggestions.toJson(),
  if (ideChat != null) 'ide_chat': ideChat?.toJson(),
  if (platformChat != null) 'platform_chat': platformChat?.toJson(),
  if (cli != null) 'cli': cli?.toJson(),
  'seat_management_setting': seatManagementSetting.toJson(),
  if (planType != null) 'plan_type': planType?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('seat_breakdown') &&
      json.containsKey('public_code_suggestions') &&
      json.containsKey('seat_management_setting'); } 
CopilotOrganizationDetails copyWith({CopilotOrganizationSeatBreakdown? seatBreakdown, CopilotOrganizationDetailsPublicCodeSuggestions? publicCodeSuggestions, CopilotOrganizationDetailsIdeChat Function()? ideChat, CopilotOrganizationDetailsPlatformChat Function()? platformChat, CopilotOrganizationDetailsCli Function()? cli, CopilotOrganizationDetailsSeatManagementSetting? seatManagementSetting, CopilotOrganizationDetailsPlanType Function()? planType, }) { return CopilotOrganizationDetails(
  seatBreakdown: seatBreakdown ?? this.seatBreakdown,
  publicCodeSuggestions: publicCodeSuggestions ?? this.publicCodeSuggestions,
  ideChat: ideChat != null ? ideChat() : this.ideChat,
  platformChat: platformChat != null ? platformChat() : this.platformChat,
  cli: cli != null ? cli() : this.cli,
  seatManagementSetting: seatManagementSetting ?? this.seatManagementSetting,
  planType: planType != null ? planType() : this.planType,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is CopilotOrganizationDetails &&
          seatBreakdown == other.seatBreakdown &&
          publicCodeSuggestions == other.publicCodeSuggestions &&
          ideChat == other.ideChat &&
          platformChat == other.platformChat &&
          cli == other.cli &&
          seatManagementSetting == other.seatManagementSetting &&
          planType == other.planType; } 
@override int get hashCode { return Object.hash(seatBreakdown, publicCodeSuggestions, ideChat, platformChat, cli, seatManagementSetting, planType); } 
@override String toString() { return 'CopilotOrganizationDetails(seatBreakdown: $seatBreakdown, publicCodeSuggestions: $publicCodeSuggestions, ideChat: $ideChat, platformChat: $platformChat, cli: $cli, seatManagementSetting: $seatManagementSetting, planType: $planType)'; } 
 }
