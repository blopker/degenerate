// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_accounts_account_people_person_request_documents_passport_files.dart';final class PostAccountsAccountPeoplePersonRequestDocumentsPassport {const PostAccountsAccountPeoplePersonRequestDocumentsPassport({this.files});

factory PostAccountsAccountPeoplePersonRequestDocumentsPassport.fromJson(Map<String, dynamic> json) { return PostAccountsAccountPeoplePersonRequestDocumentsPassport(
  files: (json['files'] as List<dynamic>?)?.map((e) => OneOf2.parse(e, fromA: (v) => v as String, fromB: (v) => PostAccountsAccountPeoplePersonRequestDocumentsPassportFilesVariant2.fromJson(v as String),)).toList(),
); }

final List<PostAccountsAccountPeoplePersonRequestDocumentsPassportFiles>? files;

Map<String, dynamic> toJson() { return {
  if (files != null) 'files': files?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostAccountsAccountPeoplePersonRequestDocumentsPassport copyWith({List<PostAccountsAccountPeoplePersonRequestDocumentsPassportFiles> Function()? files}) { return PostAccountsAccountPeoplePersonRequestDocumentsPassport(
  files: files != null ? files() : this.files,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountPeoplePersonRequestDocumentsPassport &&
          listEquals(files, other.files); } 
@override int get hashCode { return Object.hashAll(files ?? const []).hashCode; } 
@override String toString() { return 'PostAccountsAccountPeoplePersonRequestDocumentsPassport(files: $files)'; } 
 }
