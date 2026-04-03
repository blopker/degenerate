// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class EmailSecurityGetMessageResponseResultPropertiesAllowlistedPatternType {const EmailSecurityGetMessageResponseResultPropertiesAllowlistedPatternType._(this.value);

factory EmailSecurityGetMessageResponseResultPropertiesAllowlistedPatternType.fromJson(String json) { return switch (json) {
  'quarantine_release' => quarantineRelease,
  'acceptable_sender' => acceptableSender,
  'allowed_sender' => allowedSender,
  'allowed_recipient' => allowedRecipient,
  'domain_similarity' => domainSimilarity,
  'domain_recency' => domainRecency,
  'managed_acceptable_sender' => managedAcceptableSender,
  'outbound_ndr' => outboundNdr,
  _ => EmailSecurityGetMessageResponseResultPropertiesAllowlistedPatternType._(json),
}; }

static const EmailSecurityGetMessageResponseResultPropertiesAllowlistedPatternType quarantineRelease = EmailSecurityGetMessageResponseResultPropertiesAllowlistedPatternType._('quarantine_release');

static const EmailSecurityGetMessageResponseResultPropertiesAllowlistedPatternType acceptableSender = EmailSecurityGetMessageResponseResultPropertiesAllowlistedPatternType._('acceptable_sender');

static const EmailSecurityGetMessageResponseResultPropertiesAllowlistedPatternType allowedSender = EmailSecurityGetMessageResponseResultPropertiesAllowlistedPatternType._('allowed_sender');

static const EmailSecurityGetMessageResponseResultPropertiesAllowlistedPatternType allowedRecipient = EmailSecurityGetMessageResponseResultPropertiesAllowlistedPatternType._('allowed_recipient');

static const EmailSecurityGetMessageResponseResultPropertiesAllowlistedPatternType domainSimilarity = EmailSecurityGetMessageResponseResultPropertiesAllowlistedPatternType._('domain_similarity');

static const EmailSecurityGetMessageResponseResultPropertiesAllowlistedPatternType domainRecency = EmailSecurityGetMessageResponseResultPropertiesAllowlistedPatternType._('domain_recency');

static const EmailSecurityGetMessageResponseResultPropertiesAllowlistedPatternType managedAcceptableSender = EmailSecurityGetMessageResponseResultPropertiesAllowlistedPatternType._('managed_acceptable_sender');

static const EmailSecurityGetMessageResponseResultPropertiesAllowlistedPatternType outboundNdr = EmailSecurityGetMessageResponseResultPropertiesAllowlistedPatternType._('outbound_ndr');

static const List<EmailSecurityGetMessageResponseResultPropertiesAllowlistedPatternType> values = [quarantineRelease, acceptableSender, allowedSender, allowedRecipient, domainSimilarity, domainRecency, managedAcceptableSender, outboundNdr];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EmailSecurityGetMessageResponseResultPropertiesAllowlistedPatternType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'EmailSecurityGetMessageResponseResultPropertiesAllowlistedPatternType($value)'; } 
 }
@immutable final class EmailSecurityGetMessageResponseResultPropertiesWhitelistedPatternType {const EmailSecurityGetMessageResponseResultPropertiesWhitelistedPatternType._(this.value);

factory EmailSecurityGetMessageResponseResultPropertiesWhitelistedPatternType.fromJson(String json) { return switch (json) {
  'quarantine_release' => quarantineRelease,
  'acceptable_sender' => acceptableSender,
  'allowed_sender' => allowedSender,
  'allowed_recipient' => allowedRecipient,
  'domain_similarity' => domainSimilarity,
  'domain_recency' => domainRecency,
  'managed_acceptable_sender' => managedAcceptableSender,
  'outbound_ndr' => outboundNdr,
  _ => EmailSecurityGetMessageResponseResultPropertiesWhitelistedPatternType._(json),
}; }

static const EmailSecurityGetMessageResponseResultPropertiesWhitelistedPatternType quarantineRelease = EmailSecurityGetMessageResponseResultPropertiesWhitelistedPatternType._('quarantine_release');

static const EmailSecurityGetMessageResponseResultPropertiesWhitelistedPatternType acceptableSender = EmailSecurityGetMessageResponseResultPropertiesWhitelistedPatternType._('acceptable_sender');

static const EmailSecurityGetMessageResponseResultPropertiesWhitelistedPatternType allowedSender = EmailSecurityGetMessageResponseResultPropertiesWhitelistedPatternType._('allowed_sender');

static const EmailSecurityGetMessageResponseResultPropertiesWhitelistedPatternType allowedRecipient = EmailSecurityGetMessageResponseResultPropertiesWhitelistedPatternType._('allowed_recipient');

static const EmailSecurityGetMessageResponseResultPropertiesWhitelistedPatternType domainSimilarity = EmailSecurityGetMessageResponseResultPropertiesWhitelistedPatternType._('domain_similarity');

static const EmailSecurityGetMessageResponseResultPropertiesWhitelistedPatternType domainRecency = EmailSecurityGetMessageResponseResultPropertiesWhitelistedPatternType._('domain_recency');

static const EmailSecurityGetMessageResponseResultPropertiesWhitelistedPatternType managedAcceptableSender = EmailSecurityGetMessageResponseResultPropertiesWhitelistedPatternType._('managed_acceptable_sender');

static const EmailSecurityGetMessageResponseResultPropertiesWhitelistedPatternType outboundNdr = EmailSecurityGetMessageResponseResultPropertiesWhitelistedPatternType._('outbound_ndr');

static const List<EmailSecurityGetMessageResponseResultPropertiesWhitelistedPatternType> values = [quarantineRelease, acceptableSender, allowedSender, allowedRecipient, domainSimilarity, domainRecency, managedAcceptableSender, outboundNdr];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EmailSecurityGetMessageResponseResultPropertiesWhitelistedPatternType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'EmailSecurityGetMessageResponseResultPropertiesWhitelistedPatternType($value)'; } 
 }
@immutable final class EmailSecurityGetMessageResponseResultProperties {const EmailSecurityGetMessageResponseResultProperties({this.allowlistedPattern, this.allowlistedPatternType, this.blocklistedMessage, this.blocklistedPattern, this.whitelistedPatternType, });

factory EmailSecurityGetMessageResponseResultProperties.fromJson(Map<String, dynamic> json) { return EmailSecurityGetMessageResponseResultProperties(
  allowlistedPattern: json['allowlisted_pattern'] as String?,
  allowlistedPatternType: json['allowlisted_pattern_type'] != null ? EmailSecurityGetMessageResponseResultPropertiesAllowlistedPatternType.fromJson(json['allowlisted_pattern_type'] as String) : null,
  blocklistedMessage: json['blocklisted_message'] as bool?,
  blocklistedPattern: json['blocklisted_pattern'] as String?,
  whitelistedPatternType: json['whitelisted_pattern_type'] != null ? EmailSecurityGetMessageResponseResultPropertiesWhitelistedPatternType.fromJson(json['whitelisted_pattern_type'] as String) : null,
); }

final String? allowlistedPattern;

final EmailSecurityGetMessageResponseResultPropertiesAllowlistedPatternType? allowlistedPatternType;

final bool? blocklistedMessage;

final String? blocklistedPattern;

final EmailSecurityGetMessageResponseResultPropertiesWhitelistedPatternType? whitelistedPatternType;

Map<String, dynamic> toJson() { return {
  'allowlisted_pattern': ?allowlistedPattern,
  if (allowlistedPatternType != null) 'allowlisted_pattern_type': allowlistedPatternType?.toJson(),
  'blocklisted_message': ?blocklistedMessage,
  'blocklisted_pattern': ?blocklistedPattern,
  if (whitelistedPatternType != null) 'whitelisted_pattern_type': whitelistedPatternType?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'allowlisted_pattern', 'allowlisted_pattern_type', 'blocklisted_message', 'blocklisted_pattern', 'whitelisted_pattern_type'}.contains(key)); } 
EmailSecurityGetMessageResponseResultProperties copyWith({String Function()? allowlistedPattern, EmailSecurityGetMessageResponseResultPropertiesAllowlistedPatternType Function()? allowlistedPatternType, bool Function()? blocklistedMessage, String Function()? blocklistedPattern, EmailSecurityGetMessageResponseResultPropertiesWhitelistedPatternType Function()? whitelistedPatternType, }) { return EmailSecurityGetMessageResponseResultProperties(
  allowlistedPattern: allowlistedPattern != null ? allowlistedPattern() : this.allowlistedPattern,
  allowlistedPatternType: allowlistedPatternType != null ? allowlistedPatternType() : this.allowlistedPatternType,
  blocklistedMessage: blocklistedMessage != null ? blocklistedMessage() : this.blocklistedMessage,
  blocklistedPattern: blocklistedPattern != null ? blocklistedPattern() : this.blocklistedPattern,
  whitelistedPatternType: whitelistedPatternType != null ? whitelistedPatternType() : this.whitelistedPatternType,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailSecurityGetMessageResponseResultProperties &&
          allowlistedPattern == other.allowlistedPattern &&
          allowlistedPatternType == other.allowlistedPatternType &&
          blocklistedMessage == other.blocklistedMessage &&
          blocklistedPattern == other.blocklistedPattern &&
          whitelistedPatternType == other.whitelistedPatternType; } 
@override int get hashCode { return Object.hash(allowlistedPattern, allowlistedPatternType, blocklistedMessage, blocklistedPattern, whitelistedPatternType); } 
@override String toString() { return 'EmailSecurityGetMessageResponseResultProperties(allowlistedPattern: $allowlistedPattern, allowlistedPatternType: $allowlistedPatternType, blocklistedMessage: $blocklistedMessage, blocklistedPattern: $blocklistedPattern, whitelistedPatternType: $whitelistedPatternType)'; } 
 }
