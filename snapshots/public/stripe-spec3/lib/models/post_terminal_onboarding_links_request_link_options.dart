// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_terminal_onboarding_links_request_link_options_apple_terms_and_conditions.dart';/// Specific fields needed to generate the desired link type.
@immutable final class PostTerminalOnboardingLinksRequestLinkOptions {const PostTerminalOnboardingLinksRequestLinkOptions({this.appleTermsAndConditions});

factory PostTerminalOnboardingLinksRequestLinkOptions.fromJson(Map<String, dynamic> json) { return PostTerminalOnboardingLinksRequestLinkOptions(
  appleTermsAndConditions: json['apple_terms_and_conditions'] != null ? PostTerminalOnboardingLinksRequestLinkOptionsAppleTermsAndConditions.fromJson(json['apple_terms_and_conditions'] as Map<String, dynamic>) : null,
); }

final PostTerminalOnboardingLinksRequestLinkOptionsAppleTermsAndConditions? appleTermsAndConditions;

Map<String, dynamic> toJson() { return {
  if (appleTermsAndConditions != null) 'apple_terms_and_conditions': appleTermsAndConditions?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'apple_terms_and_conditions'}.contains(key)); } 
PostTerminalOnboardingLinksRequestLinkOptions copyWith({PostTerminalOnboardingLinksRequestLinkOptionsAppleTermsAndConditions Function()? appleTermsAndConditions}) { return PostTerminalOnboardingLinksRequestLinkOptions(
  appleTermsAndConditions: appleTermsAndConditions != null ? appleTermsAndConditions() : this.appleTermsAndConditions,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTerminalOnboardingLinksRequestLinkOptions &&
          appleTermsAndConditions == other.appleTermsAndConditions; } 
@override int get hashCode { return appleTermsAndConditions.hashCode; } 
@override String toString() { return 'PostTerminalOnboardingLinksRequestLinkOptions(appleTermsAndConditions: $appleTermsAndConditions)'; } 
 }
