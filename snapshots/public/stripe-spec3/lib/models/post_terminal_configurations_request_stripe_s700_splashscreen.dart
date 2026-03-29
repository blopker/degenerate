// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostTerminalConfigurationsRequestStripeS700SplashscreenVariant2 {const PostTerminalConfigurationsRequestStripeS700SplashscreenVariant2._(this.value);

factory PostTerminalConfigurationsRequestStripeS700SplashscreenVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostTerminalConfigurationsRequestStripeS700SplashscreenVariant2._(json),
}; }

static const PostTerminalConfigurationsRequestStripeS700SplashscreenVariant2 $empty = PostTerminalConfigurationsRequestStripeS700SplashscreenVariant2._('');

static const List<PostTerminalConfigurationsRequestStripeS700SplashscreenVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTerminalConfigurationsRequestStripeS700SplashscreenVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTerminalConfigurationsRequestStripeS700SplashscreenVariant2($value)'; } 
 }
typedef PostTerminalConfigurationsRequestStripeS700Splashscreen = OneOf2<String,PostTerminalConfigurationsRequestStripeS700SplashscreenVariant2>;