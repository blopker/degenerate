// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';/// Options associated with the Apple Terms and Conditions link type.
@immutable final class TerminalOnboardingLinkAppleTermsAndConditions {const TerminalOnboardingLinkAppleTermsAndConditions({required this.merchantDisplayName, this.allowRelinking, });

factory TerminalOnboardingLinkAppleTermsAndConditions.fromJson(Map<String, dynamic> json) { return TerminalOnboardingLinkAppleTermsAndConditions(
  allowRelinking: json['allow_relinking'] as bool?,
  merchantDisplayName: json['merchant_display_name'] as String,
); }

/// Whether the link should also support users relinking their Apple account.
final bool? allowRelinking;

/// The business name of the merchant accepting Apple's Terms and Conditions.
final String merchantDisplayName;

Map<String, dynamic> toJson() { return {
  'allow_relinking': ?allowRelinking,
  'merchant_display_name': merchantDisplayName,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('merchant_display_name') && json['merchant_display_name'] is String; } 
TerminalOnboardingLinkAppleTermsAndConditions copyWith({bool? Function()? allowRelinking, String? merchantDisplayName, }) { return TerminalOnboardingLinkAppleTermsAndConditions(
  allowRelinking: allowRelinking != null ? allowRelinking() : this.allowRelinking,
  merchantDisplayName: merchantDisplayName ?? this.merchantDisplayName,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TerminalOnboardingLinkAppleTermsAndConditions &&
          allowRelinking == other.allowRelinking &&
          merchantDisplayName == other.merchantDisplayName; } 
@override int get hashCode { return Object.hash(allowRelinking, merchantDisplayName); } 
@override String toString() { return 'TerminalOnboardingLinkAppleTermsAndConditions(allowRelinking: $allowRelinking, merchantDisplayName: $merchantDisplayName)'; } 
 }
