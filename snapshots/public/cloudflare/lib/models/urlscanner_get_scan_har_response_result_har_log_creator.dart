// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class UrlscannerGetScanHarResponseResultHarLogCreator {const UrlscannerGetScanHarResponseResultHarLogCreator({required this.comment, required this.name, required this.version, });

factory UrlscannerGetScanHarResponseResultHarLogCreator.fromJson(Map<String, dynamic> json) { return UrlscannerGetScanHarResponseResultHarLogCreator(
  comment: json['comment'] as String,
  name: json['name'] as String,
  version: json['version'] as String,
); }

final String comment;

final String name;

final String version;

Map<String, dynamic> toJson() { return {
  'comment': comment,
  'name': name,
  'version': version,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('comment') && json['comment'] is String &&
      json.containsKey('name') && json['name'] is String &&
      json.containsKey('version') && json['version'] is String; } 
UrlscannerGetScanHarResponseResultHarLogCreator copyWith({String? comment, String? name, String? version, }) { return UrlscannerGetScanHarResponseResultHarLogCreator(
  comment: comment ?? this.comment,
  name: name ?? this.name,
  version: version ?? this.version,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is UrlscannerGetScanHarResponseResultHarLogCreator &&
          comment == other.comment &&
          name == other.name &&
          version == other.version; } 
@override int get hashCode { return Object.hash(comment, name, version); } 
@override String toString() { return 'UrlscannerGetScanHarResponseResultHarLogCreator(comment: $comment, name: $name, version: $version)'; } 
 }
