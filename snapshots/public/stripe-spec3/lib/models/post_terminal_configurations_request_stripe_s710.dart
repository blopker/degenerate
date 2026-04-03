// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_terminal_configurations_request_stripe_s710_splashscreen.dart';/// An object containing device type specific settings for Stripe S710 readers.
@immutable final class PostTerminalConfigurationsRequestStripeS710 {const PostTerminalConfigurationsRequestStripeS710({this.splashscreen});

factory PostTerminalConfigurationsRequestStripeS710.fromJson(Map<String, dynamic> json) { return PostTerminalConfigurationsRequestStripeS710(
  splashscreen: json['splashscreen'] != null ? OneOf2.parse(json['splashscreen'], fromA: (v) => v as String, fromB: (v) => PostTerminalConfigurationsRequestStripeS710SplashscreenVariant2.fromJson(v as String),) : null,
); }

final PostTerminalConfigurationsRequestStripeS710Splashscreen? splashscreen;

Map<String, dynamic> toJson() { return {
  if (splashscreen != null) 'splashscreen': splashscreen?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'splashscreen'}.contains(key)); } 
PostTerminalConfigurationsRequestStripeS710 copyWith({PostTerminalConfigurationsRequestStripeS710Splashscreen Function()? splashscreen}) { return PostTerminalConfigurationsRequestStripeS710(
  splashscreen: splashscreen != null ? splashscreen() : this.splashscreen,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTerminalConfigurationsRequestStripeS710 &&
          splashscreen == other.splashscreen; } 
@override int get hashCode { return splashscreen.hashCode; } 
@override String toString() { return 'PostTerminalConfigurationsRequestStripeS710(splashscreen: $splashscreen)'; } 
 }
