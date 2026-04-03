// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_accounts_account_persons_request_documents_passport_files.dart';@immutable final class PostAccountsAccountPersonsRequestDocumentsPassport {const PostAccountsAccountPersonsRequestDocumentsPassport({this.files});

factory PostAccountsAccountPersonsRequestDocumentsPassport.fromJson(Map<String, dynamic> json) { return PostAccountsAccountPersonsRequestDocumentsPassport(
  files: (json['files'] as List<dynamic>?)?.map((e) => OneOf2.parse(e, fromA: (v) => v as String, fromB: (v) => PostAccountsAccountPersonsRequestDocumentsPassportFilesVariant2.fromJson(v as String),)).toList(),
); }

final List<PostAccountsAccountPersonsRequestDocumentsPassportFiles>? files;

Map<String, dynamic> toJson() { return {
  if (files != null) 'files': files?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'files'}.contains(key)); } 
PostAccountsAccountPersonsRequestDocumentsPassport copyWith({List<PostAccountsAccountPersonsRequestDocumentsPassportFiles> Function()? files}) { return PostAccountsAccountPersonsRequestDocumentsPassport(
  files: files != null ? files() : this.files,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountPersonsRequestDocumentsPassport &&
          listEquals(files, other.files); } 
@override int get hashCode { return Object.hashAll(files ?? const []).hashCode; } 
@override String toString() { return 'PostAccountsAccountPersonsRequestDocumentsPassport(files: $files)'; } 
 }
