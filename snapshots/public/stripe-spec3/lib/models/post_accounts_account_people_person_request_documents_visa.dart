// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_accounts_account_people_person_request_documents_visa_files.dart';final class PostAccountsAccountPeoplePersonRequestDocumentsVisa {const PostAccountsAccountPeoplePersonRequestDocumentsVisa({this.files});

factory PostAccountsAccountPeoplePersonRequestDocumentsVisa.fromJson(Map<String, dynamic> json) { return PostAccountsAccountPeoplePersonRequestDocumentsVisa(
  files: (json['files'] as List<dynamic>?)?.map((e) => OneOf2.parse(e, fromA: (v) => v as String, fromB: (v) => PostAccountsAccountPeoplePersonRequestDocumentsVisaFilesVariant2.fromJson(v as String),)).toList(),
); }

final List<PostAccountsAccountPeoplePersonRequestDocumentsVisaFiles>? files;

Map<String, dynamic> toJson() { return {
  if (files != null) 'files': files?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostAccountsAccountPeoplePersonRequestDocumentsVisa copyWith({List<PostAccountsAccountPeoplePersonRequestDocumentsVisaFiles> Function()? files}) { return PostAccountsAccountPeoplePersonRequestDocumentsVisa(
  files: files != null ? files() : this.files,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountPeoplePersonRequestDocumentsVisa &&
          listEquals(files, other.files); } 
@override int get hashCode { return Object.hashAll(files ?? const []).hashCode; } 
@override String toString() { return 'PostAccountsAccountPeoplePersonRequestDocumentsVisa(files: $files)'; } 
 }
