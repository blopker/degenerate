// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostTerminalConfigurationsRequestBbposWiseposESplashscreenVariant2 {const PostTerminalConfigurationsRequestBbposWiseposESplashscreenVariant2._(this.value);

factory PostTerminalConfigurationsRequestBbposWiseposESplashscreenVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostTerminalConfigurationsRequestBbposWiseposESplashscreenVariant2._(json),
}; }

static const PostTerminalConfigurationsRequestBbposWiseposESplashscreenVariant2 $empty = PostTerminalConfigurationsRequestBbposWiseposESplashscreenVariant2._('');

static const List<PostTerminalConfigurationsRequestBbposWiseposESplashscreenVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostTerminalConfigurationsRequestBbposWiseposESplashscreenVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostTerminalConfigurationsRequestBbposWiseposESplashscreenVariant2($value)'; } 
 }
typedef PostTerminalConfigurationsRequestBbposWiseposESplashscreen = OneOf2<String,PostTerminalConfigurationsRequestBbposWiseposESplashscreenVariant2>;
