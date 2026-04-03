// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_terminal_configurations_request_stripe_s700_splashscreen.dart';/// An object containing device type specific settings for Stripe S700 readers.
@immutable final class PostTerminalConfigurationsRequestStripeS700 {const PostTerminalConfigurationsRequestStripeS700({this.splashscreen});

factory PostTerminalConfigurationsRequestStripeS700.fromJson(Map<String, dynamic> json) { return PostTerminalConfigurationsRequestStripeS700(
  splashscreen: json['splashscreen'] != null ? OneOf2.parse(json['splashscreen'], fromA: (v) => v as String, fromB: (v) => PostTerminalConfigurationsRequestStripeS700SplashscreenVariant2.fromJson(v as String),) : null,
); }

final PostTerminalConfigurationsRequestStripeS700Splashscreen? splashscreen;

Map<String, dynamic> toJson() { return {
  if (splashscreen != null) 'splashscreen': splashscreen?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'splashscreen'}.contains(key)); } 
PostTerminalConfigurationsRequestStripeS700 copyWith({PostTerminalConfigurationsRequestStripeS700Splashscreen Function()? splashscreen}) { return PostTerminalConfigurationsRequestStripeS700(
  splashscreen: splashscreen != null ? splashscreen() : this.splashscreen,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTerminalConfigurationsRequestStripeS700 &&
          splashscreen == other.splashscreen; } 
@override int get hashCode { return splashscreen.hashCode; } 
@override String toString() { return 'PostTerminalConfigurationsRequestStripeS700(splashscreen: $splashscreen)'; } 
 }
