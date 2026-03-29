// GENERATED CODE - DO NOT MODIFY BY HAND

final class PostTerminalOnboardingLinksRequestLinkOptionsAppleTermsAndConditions {const PostTerminalOnboardingLinksRequestLinkOptionsAppleTermsAndConditions({this.allowRelinking, required this.merchantDisplayName, });

factory PostTerminalOnboardingLinksRequestLinkOptionsAppleTermsAndConditions.fromJson(Map<String, dynamic> json) { return PostTerminalOnboardingLinksRequestLinkOptionsAppleTermsAndConditions(
  allowRelinking: json['allow_relinking'] as bool?,
  merchantDisplayName: json['merchant_display_name'] as String,
); }

final bool? allowRelinking;

final String merchantDisplayName;

Map<String, dynamic> toJson() { return {
  'allow_relinking': ?allowRelinking,
  'merchant_display_name': merchantDisplayName,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('merchant_display_name') && json['merchant_display_name'] is String; } 
PostTerminalOnboardingLinksRequestLinkOptionsAppleTermsAndConditions copyWith({bool Function()? allowRelinking, String? merchantDisplayName, }) { return PostTerminalOnboardingLinksRequestLinkOptionsAppleTermsAndConditions(
  allowRelinking: allowRelinking != null ? allowRelinking() : this.allowRelinking,
  merchantDisplayName: merchantDisplayName ?? this.merchantDisplayName,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTerminalOnboardingLinksRequestLinkOptionsAppleTermsAndConditions &&
          allowRelinking == other.allowRelinking &&
          merchantDisplayName == other.merchantDisplayName; } 
@override int get hashCode { return Object.hash(allowRelinking, merchantDisplayName); } 
@override String toString() { return 'PostTerminalOnboardingLinksRequestLinkOptionsAppleTermsAndConditions(allowRelinking: $allowRelinking, merchantDisplayName: $merchantDisplayName)'; } 
 }
