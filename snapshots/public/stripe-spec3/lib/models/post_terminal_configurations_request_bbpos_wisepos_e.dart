// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_terminal_configurations_request_bbpos_wisepos_e_splashscreen.dart';/// An object containing device type specific settings for BBPOS WisePOS E readers.
@immutable final class PostTerminalConfigurationsRequestBbposWiseposE {const PostTerminalConfigurationsRequestBbposWiseposE({this.splashscreen});

factory PostTerminalConfigurationsRequestBbposWiseposE.fromJson(Map<String, dynamic> json) { return PostTerminalConfigurationsRequestBbposWiseposE(
  splashscreen: json['splashscreen'] != null ? OneOf2.parse(json['splashscreen'], fromA: (v) => v as String, fromB: (v) => PostTerminalConfigurationsRequestBbposWiseposESplashscreenVariant2.fromJson(v as String),) : null,
); }

final PostTerminalConfigurationsRequestBbposWiseposESplashscreen? splashscreen;

Map<String, dynamic> toJson() { return {
  if (splashscreen != null) 'splashscreen': splashscreen?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'splashscreen'}.contains(key)); } 
PostTerminalConfigurationsRequestBbposWiseposE copyWith({PostTerminalConfigurationsRequestBbposWiseposESplashscreen Function()? splashscreen}) { return PostTerminalConfigurationsRequestBbposWiseposE(
  splashscreen: splashscreen != null ? splashscreen() : this.splashscreen,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTerminalConfigurationsRequestBbposWiseposE &&
          splashscreen == other.splashscreen; } 
@override int get hashCode { return splashscreen.hashCode; } 
@override String toString() { return 'PostTerminalConfigurationsRequestBbposWiseposE(splashscreen: $splashscreen)'; } 
 }
