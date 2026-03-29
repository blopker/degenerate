// GENERATED CODE - DO NOT MODIFY BY HAND

/// 
final class SetupIntentNextActionRedirectToUrl {const SetupIntentNextActionRedirectToUrl({this.returnUrl, this.url, });

factory SetupIntentNextActionRedirectToUrl.fromJson(Map<String, dynamic> json) { return SetupIntentNextActionRedirectToUrl(
  returnUrl: json['return_url'] as String?,
  url: json['url'] as String?,
); }

/// If the customer does not exit their browser while authenticating, they will be redirected to this specified URL after completion.
final String? returnUrl;

/// The URL you must redirect your customer to in order to authenticate.
final String? url;

Map<String, dynamic> toJson() { return {
  'return_url': ?returnUrl,
  'url': ?url,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
SetupIntentNextActionRedirectToUrl copyWith({String? Function()? returnUrl, String? Function()? url, }) { return SetupIntentNextActionRedirectToUrl(
  returnUrl: returnUrl != null ? returnUrl() : this.returnUrl,
  url: url != null ? url() : this.url,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is SetupIntentNextActionRedirectToUrl &&
          returnUrl == other.returnUrl &&
          url == other.url; } 
@override int get hashCode { return Object.hash(returnUrl, url); } 
@override String toString() { return 'SetupIntentNextActionRedirectToUrl(returnUrl: $returnUrl, url: $url)'; } 
 }
