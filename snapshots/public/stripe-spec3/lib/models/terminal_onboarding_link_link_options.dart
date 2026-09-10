// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'terminal_onboarding_link_apple_terms_and_conditions.dart';/// Link type options associated with the current onboarding link object.
@immutable final class TerminalOnboardingLinkLinkOptions {const TerminalOnboardingLinkLinkOptions({this.appleTermsAndConditions = const Omittable.absent()});

factory TerminalOnboardingLinkLinkOptions.fromJson(Map<String, dynamic> json) { return TerminalOnboardingLinkLinkOptions(
  appleTermsAndConditions: json.containsKey('apple_terms_and_conditions') ? Omittable(json['apple_terms_and_conditions'] != null ? TerminalOnboardingLinkAppleTermsAndConditions.fromJson(json['apple_terms_and_conditions'] as Map<String, dynamic>) : null) : const Omittable.absent(),
); }

/// The options associated with the Apple Terms and Conditions link type.
final Omittable<TerminalOnboardingLinkAppleTermsAndConditions?> appleTermsAndConditions;

Map<String, dynamic> toJson() { return {
  if (appleTermsAndConditions.isPresent) 'apple_terms_and_conditions': appleTermsAndConditions.value?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'apple_terms_and_conditions'}.contains(key)); } 
TerminalOnboardingLinkLinkOptions copyWith({Omittable<TerminalOnboardingLinkAppleTermsAndConditions?>? appleTermsAndConditions}) { return TerminalOnboardingLinkLinkOptions(
  appleTermsAndConditions: appleTermsAndConditions ?? this.appleTermsAndConditions,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is TerminalOnboardingLinkLinkOptions &&
          appleTermsAndConditions == other.appleTermsAndConditions; } 
@override int get hashCode { return appleTermsAndConditions.hashCode; } 
@override String toString() { return 'TerminalOnboardingLinkLinkOptions(appleTermsAndConditions: $appleTermsAndConditions)'; } 
 }
