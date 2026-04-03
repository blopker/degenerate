// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class VectorStoreFileContentResponseData {const VectorStoreFileContentResponseData({this.type, this.text, });

factory VectorStoreFileContentResponseData.fromJson(Map<String, dynamic> json) { return VectorStoreFileContentResponseData(
  type: json['type'] as String?,
  text: json['text'] as String?,
); }

/// The content type (currently only `"text"`)
final String? type;

/// The text content
final String? text;

Map<String, dynamic> toJson() { return {
  'type': ?type,
  'text': ?text,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'type', 'text'}.contains(key)); } 
VectorStoreFileContentResponseData copyWith({String Function()? type, String Function()? text, }) { return VectorStoreFileContentResponseData(
  type: type != null ? type() : this.type,
  text: text != null ? text() : this.text,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is VectorStoreFileContentResponseData &&
          type == other.type &&
          text == other.text; } 
@override int get hashCode { return Object.hash(type, text); } 
@override String toString() { return 'VectorStoreFileContentResponseData(type: $type, text: $text)'; } 
 }
