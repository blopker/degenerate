// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_terminal_configurations_request_verifone_p400_splashscreen.dart';/// An object containing device type specific settings for Verifone P400 readers.
@immutable final class PostTerminalConfigurationsRequestVerifoneP400 {const PostTerminalConfigurationsRequestVerifoneP400({this.splashscreen});

factory PostTerminalConfigurationsRequestVerifoneP400.fromJson(Map<String, dynamic> json) { return PostTerminalConfigurationsRequestVerifoneP400(
  splashscreen: json['splashscreen'] != null ? OneOf2.parse(json['splashscreen'], fromA: (v) => v as String, fromB: (v) => PostTerminalConfigurationsRequestVerifoneP400SplashscreenVariant2.fromJson(v as String),) : null,
); }

final PostTerminalConfigurationsRequestVerifoneP400Splashscreen? splashscreen;

Map<String, dynamic> toJson() { return {
  if (splashscreen != null) 'splashscreen': splashscreen?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'splashscreen'}.contains(key)); } 
PostTerminalConfigurationsRequestVerifoneP400 copyWith({PostTerminalConfigurationsRequestVerifoneP400Splashscreen Function()? splashscreen}) { return PostTerminalConfigurationsRequestVerifoneP400(
  splashscreen: splashscreen != null ? splashscreen() : this.splashscreen,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTerminalConfigurationsRequestVerifoneP400 &&
          splashscreen == other.splashscreen; } 
@override int get hashCode { return splashscreen.hashCode; } 
@override String toString() { return 'PostTerminalConfigurationsRequestVerifoneP400(splashscreen: $splashscreen)'; } 
 }
