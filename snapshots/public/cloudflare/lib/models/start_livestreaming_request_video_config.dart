// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class StartLivestreamingRequestVideoConfig {const StartLivestreamingRequestVideoConfig({this.height, this.width, });

factory StartLivestreamingRequestVideoConfig.fromJson(Map<String, dynamic> json) { return StartLivestreamingRequestVideoConfig(
  height: json['height'] != null ? (json['height'] as num).toInt() : null,
  width: json['width'] != null ? (json['width'] as num).toInt() : null,
); }

/// Height of the livestreaming video in pixels
final int? height;

/// Width of the livestreaming video in pixels
final int? width;

Map<String, dynamic> toJson() { return {
  'height': ?height,
  'width': ?width,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'height', 'width'}.contains(key)); } 
StartLivestreamingRequestVideoConfig copyWith({int Function()? height, int Function()? width, }) { return StartLivestreamingRequestVideoConfig(
  height: height != null ? height() : this.height,
  width: width != null ? width() : this.width,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is StartLivestreamingRequestVideoConfig &&
          height == other.height &&
          width == other.width; } 
@override int get hashCode { return Object.hash(height, width); } 
@override String toString() { return 'StartLivestreamingRequestVideoConfig(height: $height, width: $width)'; } 
 }
