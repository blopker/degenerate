// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_accounts_account_persons_person_request_documents_passport_files.dart';final class PostAccountsAccountPersonsPersonRequestDocumentsPassport {const PostAccountsAccountPersonsPersonRequestDocumentsPassport({this.files});

factory PostAccountsAccountPersonsPersonRequestDocumentsPassport.fromJson(Map<String, dynamic> json) { return PostAccountsAccountPersonsPersonRequestDocumentsPassport(
  files: (json['files'] as List<dynamic>?)?.map((e) => OneOf2.parse(e, fromA: (v) => v as String, fromB: (v) => PostAccountsAccountPersonsPersonRequestDocumentsPassportFilesVariant2.fromJson(v as String),)).toList(),
); }

final List<PostAccountsAccountPersonsPersonRequestDocumentsPassportFiles>? files;

Map<String, dynamic> toJson() { return {
  if (files != null) 'files': files?.map((e) => e.toJson()).toList(),
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostAccountsAccountPersonsPersonRequestDocumentsPassport copyWith({List<PostAccountsAccountPersonsPersonRequestDocumentsPassportFiles> Function()? files}) { return PostAccountsAccountPersonsPersonRequestDocumentsPassport(
  files: files != null ? files() : this.files,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountPersonsPersonRequestDocumentsPassport &&
          listEquals(files, other.files); } 
@override int get hashCode { return Object.hashAll(files ?? const []).hashCode; } 
@override String toString() { return 'PostAccountsAccountPersonsPersonRequestDocumentsPassport(files: $files)'; } 
 }
