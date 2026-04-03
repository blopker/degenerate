// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_accounts_account_persons_person_request_documents_company_authorization_files.dart';@immutable final class PostAccountsAccountPersonsPersonRequestDocumentsCompanyAuthorization {const PostAccountsAccountPersonsPersonRequestDocumentsCompanyAuthorization({this.files});

factory PostAccountsAccountPersonsPersonRequestDocumentsCompanyAuthorization.fromJson(Map<String, dynamic> json) { return PostAccountsAccountPersonsPersonRequestDocumentsCompanyAuthorization(
  files: (json['files'] as List<dynamic>?)?.map((e) => OneOf2.parse(e, fromA: (v) => v as String, fromB: (v) => PostAccountsAccountPersonsPersonRequestDocumentsCompanyAuthorizationFilesVariant2.fromJson(v as String),)).toList(),
); }

final List<PostAccountsAccountPersonsPersonRequestDocumentsCompanyAuthorizationFiles>? files;

Map<String, dynamic> toJson() { return {
  if (files != null) 'files': files?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'files'}.contains(key)); } 
PostAccountsAccountPersonsPersonRequestDocumentsCompanyAuthorization copyWith({List<PostAccountsAccountPersonsPersonRequestDocumentsCompanyAuthorizationFiles> Function()? files}) { return PostAccountsAccountPersonsPersonRequestDocumentsCompanyAuthorization(
  files: files != null ? files() : this.files,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountPersonsPersonRequestDocumentsCompanyAuthorization &&
          listEquals(files, other.files); } 
@override int get hashCode { return Object.hashAll(files ?? const []).hashCode; } 
@override String toString() { return 'PostAccountsAccountPersonsPersonRequestDocumentsCompanyAuthorization(files: $files)'; } 
 }
