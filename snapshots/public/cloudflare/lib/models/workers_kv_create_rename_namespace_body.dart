// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'workers_kv_namespace_title.dart';@immutable final class WorkersKvCreateRenameNamespaceBody {const WorkersKvCreateRenameNamespaceBody({required this.title});

factory WorkersKvCreateRenameNamespaceBody.fromJson(Map<String, dynamic> json) { return WorkersKvCreateRenameNamespaceBody(
  title: WorkersKvNamespaceTitle.fromJson(json['title'] as String),
); }

final WorkersKvNamespaceTitle title;

Map<String, dynamic> toJson() { return {
  'title': title.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.containsKey('title'); } 
WorkersKvCreateRenameNamespaceBody copyWith({WorkersKvNamespaceTitle? title}) { return WorkersKvCreateRenameNamespaceBody(
  title: title ?? this.title,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is WorkersKvCreateRenameNamespaceBody &&
          title == other.title; } 
@override int get hashCode { return title.hashCode; } 
@override String toString() { return 'WorkersKvCreateRenameNamespaceBody(title: $title)'; } 
 }
