// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_accounts_account_people_request_documents_company_authorization_files.dart';@immutable final class PostAccountsAccountPeopleRequestDocumentsCompanyAuthorization {const PostAccountsAccountPeopleRequestDocumentsCompanyAuthorization({this.files});

factory PostAccountsAccountPeopleRequestDocumentsCompanyAuthorization.fromJson(Map<String, dynamic> json) { return PostAccountsAccountPeopleRequestDocumentsCompanyAuthorization(
  files: (json['files'] as List<dynamic>?)?.map((e) => OneOf2.parse(e, fromA: (v) => v as String, fromB: (v) => PostAccountsAccountPeopleRequestDocumentsCompanyAuthorizationFilesVariant2.fromJson(v as String),)).toList(),
); }

final List<PostAccountsAccountPeopleRequestDocumentsCompanyAuthorizationFiles>? files;

Map<String, dynamic> toJson() { return {
  if (files != null) 'files': files?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'files'}.contains(key)); } 
PostAccountsAccountPeopleRequestDocumentsCompanyAuthorization copyWith({List<PostAccountsAccountPeopleRequestDocumentsCompanyAuthorizationFiles> Function()? files}) { return PostAccountsAccountPeopleRequestDocumentsCompanyAuthorization(
  files: files != null ? files() : this.files,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountPeopleRequestDocumentsCompanyAuthorization &&
          listEquals(files, other.files); } 
@override int get hashCode { return Object.hashAll(files ?? const []).hashCode; } 
@override String toString() { return 'PostAccountsAccountPeopleRequestDocumentsCompanyAuthorization(files: $files)'; } 
 }
