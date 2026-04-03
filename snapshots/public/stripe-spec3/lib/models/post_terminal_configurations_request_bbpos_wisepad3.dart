// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_terminal_configurations_request_bbpos_wisepad3_splashscreen.dart';/// An object containing device type specific settings for BBPOS WisePad 3 readers.
@immutable final class PostTerminalConfigurationsRequestBbposWisepad3 {const PostTerminalConfigurationsRequestBbposWisepad3({this.splashscreen});

factory PostTerminalConfigurationsRequestBbposWisepad3.fromJson(Map<String, dynamic> json) { return PostTerminalConfigurationsRequestBbposWisepad3(
  splashscreen: json['splashscreen'] != null ? OneOf2.parse(json['splashscreen'], fromA: (v) => v as String, fromB: (v) => PostTerminalConfigurationsRequestBbposWisepad3SplashscreenVariant2.fromJson(v as String),) : null,
); }

final PostTerminalConfigurationsRequestBbposWisepad3Splashscreen? splashscreen;

Map<String, dynamic> toJson() { return {
  if (splashscreen != null) 'splashscreen': splashscreen?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'splashscreen'}.contains(key)); } 
PostTerminalConfigurationsRequestBbposWisepad3 copyWith({PostTerminalConfigurationsRequestBbposWisepad3Splashscreen Function()? splashscreen}) { return PostTerminalConfigurationsRequestBbposWisepad3(
  splashscreen: splashscreen != null ? splashscreen() : this.splashscreen,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTerminalConfigurationsRequestBbposWisepad3 &&
          splashscreen == other.splashscreen; } 
@override int get hashCode { return splashscreen.hashCode; } 
@override String toString() { return 'PostTerminalConfigurationsRequestBbposWisepad3(splashscreen: $splashscreen)'; } 
 }
