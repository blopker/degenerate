// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class EmailSecurityMailsearchMessagePropertiesAllowlistedPatternType {const EmailSecurityMailsearchMessagePropertiesAllowlistedPatternType._(this.value);

factory EmailSecurityMailsearchMessagePropertiesAllowlistedPatternType.fromJson(String json) { return switch (json) {
  'quarantine_release' => quarantineRelease,
  'acceptable_sender' => acceptableSender,
  'allowed_sender' => allowedSender,
  'allowed_recipient' => allowedRecipient,
  'domain_similarity' => domainSimilarity,
  'domain_recency' => domainRecency,
  'managed_acceptable_sender' => managedAcceptableSender,
  'outbound_ndr' => outboundNdr,
  _ => EmailSecurityMailsearchMessagePropertiesAllowlistedPatternType._(json),
}; }

static const EmailSecurityMailsearchMessagePropertiesAllowlistedPatternType quarantineRelease = EmailSecurityMailsearchMessagePropertiesAllowlistedPatternType._('quarantine_release');

static const EmailSecurityMailsearchMessagePropertiesAllowlistedPatternType acceptableSender = EmailSecurityMailsearchMessagePropertiesAllowlistedPatternType._('acceptable_sender');

static const EmailSecurityMailsearchMessagePropertiesAllowlistedPatternType allowedSender = EmailSecurityMailsearchMessagePropertiesAllowlistedPatternType._('allowed_sender');

static const EmailSecurityMailsearchMessagePropertiesAllowlistedPatternType allowedRecipient = EmailSecurityMailsearchMessagePropertiesAllowlistedPatternType._('allowed_recipient');

static const EmailSecurityMailsearchMessagePropertiesAllowlistedPatternType domainSimilarity = EmailSecurityMailsearchMessagePropertiesAllowlistedPatternType._('domain_similarity');

static const EmailSecurityMailsearchMessagePropertiesAllowlistedPatternType domainRecency = EmailSecurityMailsearchMessagePropertiesAllowlistedPatternType._('domain_recency');

static const EmailSecurityMailsearchMessagePropertiesAllowlistedPatternType managedAcceptableSender = EmailSecurityMailsearchMessagePropertiesAllowlistedPatternType._('managed_acceptable_sender');

static const EmailSecurityMailsearchMessagePropertiesAllowlistedPatternType outboundNdr = EmailSecurityMailsearchMessagePropertiesAllowlistedPatternType._('outbound_ndr');

static const List<EmailSecurityMailsearchMessagePropertiesAllowlistedPatternType> values = [quarantineRelease, acceptableSender, allowedSender, allowedRecipient, domainSimilarity, domainRecency, managedAcceptableSender, outboundNdr];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EmailSecurityMailsearchMessagePropertiesAllowlistedPatternType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'EmailSecurityMailsearchMessagePropertiesAllowlistedPatternType($value)'; } 
 }
@immutable final class EmailSecurityMailsearchMessagePropertiesWhitelistedPatternType {const EmailSecurityMailsearchMessagePropertiesWhitelistedPatternType._(this.value);

factory EmailSecurityMailsearchMessagePropertiesWhitelistedPatternType.fromJson(String json) { return switch (json) {
  'quarantine_release' => quarantineRelease,
  'acceptable_sender' => acceptableSender,
  'allowed_sender' => allowedSender,
  'allowed_recipient' => allowedRecipient,
  'domain_similarity' => domainSimilarity,
  'domain_recency' => domainRecency,
  'managed_acceptable_sender' => managedAcceptableSender,
  'outbound_ndr' => outboundNdr,
  _ => EmailSecurityMailsearchMessagePropertiesWhitelistedPatternType._(json),
}; }

static const EmailSecurityMailsearchMessagePropertiesWhitelistedPatternType quarantineRelease = EmailSecurityMailsearchMessagePropertiesWhitelistedPatternType._('quarantine_release');

static const EmailSecurityMailsearchMessagePropertiesWhitelistedPatternType acceptableSender = EmailSecurityMailsearchMessagePropertiesWhitelistedPatternType._('acceptable_sender');

static const EmailSecurityMailsearchMessagePropertiesWhitelistedPatternType allowedSender = EmailSecurityMailsearchMessagePropertiesWhitelistedPatternType._('allowed_sender');

static const EmailSecurityMailsearchMessagePropertiesWhitelistedPatternType allowedRecipient = EmailSecurityMailsearchMessagePropertiesWhitelistedPatternType._('allowed_recipient');

static const EmailSecurityMailsearchMessagePropertiesWhitelistedPatternType domainSimilarity = EmailSecurityMailsearchMessagePropertiesWhitelistedPatternType._('domain_similarity');

static const EmailSecurityMailsearchMessagePropertiesWhitelistedPatternType domainRecency = EmailSecurityMailsearchMessagePropertiesWhitelistedPatternType._('domain_recency');

static const EmailSecurityMailsearchMessagePropertiesWhitelistedPatternType managedAcceptableSender = EmailSecurityMailsearchMessagePropertiesWhitelistedPatternType._('managed_acceptable_sender');

static const EmailSecurityMailsearchMessagePropertiesWhitelistedPatternType outboundNdr = EmailSecurityMailsearchMessagePropertiesWhitelistedPatternType._('outbound_ndr');

static const List<EmailSecurityMailsearchMessagePropertiesWhitelistedPatternType> values = [quarantineRelease, acceptableSender, allowedSender, allowedRecipient, domainSimilarity, domainRecency, managedAcceptableSender, outboundNdr];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is EmailSecurityMailsearchMessagePropertiesWhitelistedPatternType && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'EmailSecurityMailsearchMessagePropertiesWhitelistedPatternType($value)'; } 
 }
@immutable final class EmailSecurityMailsearchMessageProperties {const EmailSecurityMailsearchMessageProperties({this.allowlistedPattern, this.allowlistedPatternType, this.blocklistedMessage, this.blocklistedPattern, this.whitelistedPatternType, });

factory EmailSecurityMailsearchMessageProperties.fromJson(Map<String, dynamic> json) { return EmailSecurityMailsearchMessageProperties(
  allowlistedPattern: json['allowlisted_pattern'] as String?,
  allowlistedPatternType: json['allowlisted_pattern_type'] != null ? EmailSecurityMailsearchMessagePropertiesAllowlistedPatternType.fromJson(json['allowlisted_pattern_type'] as String) : null,
  blocklistedMessage: json['blocklisted_message'] as bool?,
  blocklistedPattern: json['blocklisted_pattern'] as String?,
  whitelistedPatternType: json['whitelisted_pattern_type'] != null ? EmailSecurityMailsearchMessagePropertiesWhitelistedPatternType.fromJson(json['whitelisted_pattern_type'] as String) : null,
); }

final String? allowlistedPattern;

final EmailSecurityMailsearchMessagePropertiesAllowlistedPatternType? allowlistedPatternType;

final bool? blocklistedMessage;

final String? blocklistedPattern;

final EmailSecurityMailsearchMessagePropertiesWhitelistedPatternType? whitelistedPatternType;

Map<String, dynamic> toJson() { return {
  'allowlisted_pattern': ?allowlistedPattern,
  if (allowlistedPatternType != null) 'allowlisted_pattern_type': allowlistedPatternType?.toJson(),
  'blocklisted_message': ?blocklistedMessage,
  'blocklisted_pattern': ?blocklistedPattern,
  if (whitelistedPatternType != null) 'whitelisted_pattern_type': whitelistedPatternType?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'allowlisted_pattern', 'allowlisted_pattern_type', 'blocklisted_message', 'blocklisted_pattern', 'whitelisted_pattern_type'}.contains(key)); } 
EmailSecurityMailsearchMessageProperties copyWith({String Function()? allowlistedPattern, EmailSecurityMailsearchMessagePropertiesAllowlistedPatternType Function()? allowlistedPatternType, bool Function()? blocklistedMessage, String Function()? blocklistedPattern, EmailSecurityMailsearchMessagePropertiesWhitelistedPatternType Function()? whitelistedPatternType, }) { return EmailSecurityMailsearchMessageProperties(
  allowlistedPattern: allowlistedPattern != null ? allowlistedPattern() : this.allowlistedPattern,
  allowlistedPatternType: allowlistedPatternType != null ? allowlistedPatternType() : this.allowlistedPatternType,
  blocklistedMessage: blocklistedMessage != null ? blocklistedMessage() : this.blocklistedMessage,
  blocklistedPattern: blocklistedPattern != null ? blocklistedPattern() : this.blocklistedPattern,
  whitelistedPatternType: whitelistedPatternType != null ? whitelistedPatternType() : this.whitelistedPatternType,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is EmailSecurityMailsearchMessageProperties &&
          allowlistedPattern == other.allowlistedPattern &&
          allowlistedPatternType == other.allowlistedPatternType &&
          blocklistedMessage == other.blocklistedMessage &&
          blocklistedPattern == other.blocklistedPattern &&
          whitelistedPatternType == other.whitelistedPatternType; } 
@override int get hashCode { return Object.hash(allowlistedPattern, allowlistedPatternType, blocklistedMessage, blocklistedPattern, whitelistedPatternType); } 
@override String toString() { return 'EmailSecurityMailsearchMessageProperties(allowlistedPattern: $allowlistedPattern, allowlistedPatternType: $allowlistedPatternType, blocklistedMessage: $blocklistedMessage, blocklistedPattern: $blocklistedPattern, whitelistedPatternType: $whitelistedPatternType)'; } 
 }
