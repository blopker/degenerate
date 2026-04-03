// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_tokens_request_person_documents_visa_files.dart';@immutable final class PostTokensRequestPersonDocumentsVisa {const PostTokensRequestPersonDocumentsVisa({this.files});

factory PostTokensRequestPersonDocumentsVisa.fromJson(Map<String, dynamic> json) { return PostTokensRequestPersonDocumentsVisa(
  files: (json['files'] as List<dynamic>?)?.map((e) => OneOf2.parse(e, fromA: (v) => v as String, fromB: (v) => PostTokensRequestPersonDocumentsVisaFilesVariant2.fromJson(v as String),)).toList(),
); }

final List<PostTokensRequestPersonDocumentsVisaFiles>? files;

Map<String, dynamic> toJson() { return {
  if (files != null) 'files': files?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'files'}.contains(key)); } 
PostTokensRequestPersonDocumentsVisa copyWith({List<PostTokensRequestPersonDocumentsVisaFiles> Function()? files}) { return PostTokensRequestPersonDocumentsVisa(
  files: files != null ? files() : this.files,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostTokensRequestPersonDocumentsVisa &&
          listEquals(files, other.files); } 
@override int get hashCode { return Object.hashAll(files ?? const []).hashCode; } 
@override String toString() { return 'PostTokensRequestPersonDocumentsVisa(files: $files)'; } 
 }
