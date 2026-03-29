// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_accounts_account_persons_request_documents_company_authorization_files.dart';final class PostAccountsAccountPersonsRequestDocumentsCompanyAuthorization {const PostAccountsAccountPersonsRequestDocumentsCompanyAuthorization({this.files});

factory PostAccountsAccountPersonsRequestDocumentsCompanyAuthorization.fromJson(Map<String, dynamic> json) { return PostAccountsAccountPersonsRequestDocumentsCompanyAuthorization(
  files: (json['files'] as List<dynamic>?)?.map((e) => OneOf2.parse(e, fromA: (v) => v as String, fromB: (v) => PostAccountsAccountPersonsRequestDocumentsCompanyAuthorizationFilesVariant2.fromJson(v as String),)).toList(),
); }

final List<PostAccountsAccountPersonsRequestDocumentsCompanyAuthorizationFiles>? files;

Map<String, dynamic> toJson() { return {
  if (files != null) 'files': files?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostAccountsAccountPersonsRequestDocumentsCompanyAuthorization copyWith({List<PostAccountsAccountPersonsRequestDocumentsCompanyAuthorizationFiles> Function()? files}) { return PostAccountsAccountPersonsRequestDocumentsCompanyAuthorization(
  files: files != null ? files() : this.files,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountPersonsRequestDocumentsCompanyAuthorization &&
          listEquals(files, other.files); } 
@override int get hashCode { return Object.hashAll(files ?? const []).hashCode; } 
@override String toString() { return 'PostAccountsAccountPersonsRequestDocumentsCompanyAuthorization(files: $files)'; } 
 }
