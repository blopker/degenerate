// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'stripe_s710_splashscreen.dart';final class StripeS710 {const StripeS710({this.splashscreen});

factory StripeS710.fromJson(Map<String, dynamic> json) { return StripeS710(
  splashscreen: json['splashscreen'] != null ? OneOf2.parse(json['splashscreen'], fromA: (v) => v as String, fromB: (v) => StripeS710SplashscreenVariant2.fromJson(v as String),) : null,
); }

final StripeS710Splashscreen? splashscreen;

Map<String, dynamic> toJson() { return {
  if (splashscreen != null) 'splashscreen': splashscreen?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'splashscreen'}.contains(key)); } 
StripeS710 copyWith({StripeS710Splashscreen Function()? splashscreen}) { return StripeS710(
  splashscreen: splashscreen != null ? splashscreen() : this.splashscreen,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is StripeS710 &&
          splashscreen == other.splashscreen; } 
@override int get hashCode { return splashscreen.hashCode; } 
@override String toString() { return 'StripeS710(splashscreen: $splashscreen)'; } 
 }
