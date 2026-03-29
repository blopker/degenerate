// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostTerminalConfigurationsRequestVerifoneP400SplashscreenVariant2 {const PostTerminalConfigurationsRequestVerifoneP400SplashscreenVariant2._(this.value);

factory PostTerminalConfigurationsRequestVerifoneP400SplashscreenVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostTerminalConfigurationsRequestVerifoneP400SplashscreenVariant2._(json),
}; }

static const PostTerminalConfigurationsRequestVerifoneP400SplashscreenVariant2 $empty = PostTerminalConfigurationsRequestVerifoneP400SplashscreenVariant2._('');

static const List<PostTerminalConfigurationsRequestVerifoneP400SplashscreenVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTerminalConfigurationsRequestVerifoneP400SplashscreenVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTerminalConfigurationsRequestVerifoneP400SplashscreenVariant2($value)'; } 
 }
typedef PostTerminalConfigurationsRequestVerifoneP400Splashscreen = OneOf2<String,PostTerminalConfigurationsRequestVerifoneP400SplashscreenVariant2>;