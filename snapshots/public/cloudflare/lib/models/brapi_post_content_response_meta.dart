// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class BrapiPostContentResponseMeta {const BrapiPostContentResponseMeta({this.status, this.title, });

factory BrapiPostContentResponseMeta.fromJson(Map<String, dynamic> json) { return BrapiPostContentResponseMeta(
  status: json['status'] != null ? (json['status'] as num).toDouble() : null,
  title: json['title'] as String?,
); }

final double? status;

final String? title;

Map<String, dynamic> toJson() { return {
  'status': ?status,
  'title': ?title,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'status', 'title'}.contains(key)); } 
BrapiPostContentResponseMeta copyWith({double Function()? status, String Function()? title, }) { return BrapiPostContentResponseMeta(
  status: status != null ? status() : this.status,
  title: title != null ? title() : this.title,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is BrapiPostContentResponseMeta &&
          status == other.status &&
          title == other.title; } 
@override int get hashCode { return Object.hash(status, title); } 
@override String toString() { return 'BrapiPostContentResponseMeta(status: $status, title: $title)'; } 
 }
