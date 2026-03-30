// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'verifone_p400_splashscreen.dart';final class VerifoneP400 {const VerifoneP400({this.splashscreen});

factory VerifoneP400.fromJson(Map<String, dynamic> json) { return VerifoneP400(
  splashscreen: json['splashscreen'] != null ? OneOf2.parse(json['splashscreen'], fromA: (v) => v as String, fromB: (v) => VerifoneP400SplashscreenVariant2.fromJson(v as String),) : null,
); }

final VerifoneP400Splashscreen? splashscreen;

Map<String, dynamic> toJson() { return {
  if (splashscreen != null) 'splashscreen': splashscreen?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'splashscreen'}.contains(key)); } 
VerifoneP400 copyWith({VerifoneP400Splashscreen Function()? splashscreen}) { return VerifoneP400(
  splashscreen: splashscreen != null ? splashscreen() : this.splashscreen,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is VerifoneP400 &&
          splashscreen == other.splashscreen; } 
@override int get hashCode { return splashscreen.hashCode; } 
@override String toString() { return 'VerifoneP400(splashscreen: $splashscreen)'; } 
 }
