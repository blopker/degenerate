// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostTerminalConfigurationsRequestBbposWisepad3SplashscreenVariant2 {const PostTerminalConfigurationsRequestBbposWisepad3SplashscreenVariant2._(this.value);

factory PostTerminalConfigurationsRequestBbposWisepad3SplashscreenVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostTerminalConfigurationsRequestBbposWisepad3SplashscreenVariant2._(json),
}; }

static const PostTerminalConfigurationsRequestBbposWisepad3SplashscreenVariant2 $empty = PostTerminalConfigurationsRequestBbposWisepad3SplashscreenVariant2._('');

static const List<PostTerminalConfigurationsRequestBbposWisepad3SplashscreenVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTerminalConfigurationsRequestBbposWisepad3SplashscreenVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTerminalConfigurationsRequestBbposWisepad3SplashscreenVariant2($value)'; } 
 }
typedef PostTerminalConfigurationsRequestBbposWisepad3Splashscreen = OneOf2<String,PostTerminalConfigurationsRequestBbposWisepad3SplashscreenVariant2>;