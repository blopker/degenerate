// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostAccountsAccountRequestDocumentsCompanyMemorandumOfAssociation {const PostAccountsAccountRequestDocumentsCompanyMemorandumOfAssociation({this.files});

factory PostAccountsAccountRequestDocumentsCompanyMemorandumOfAssociation.fromJson(Map<String, dynamic> json) { return PostAccountsAccountRequestDocumentsCompanyMemorandumOfAssociation(
  files: (json['files'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

final List<String>? files;

Map<String, dynamic> toJson() { return {
  'files': ?files,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostAccountsAccountRequestDocumentsCompanyMemorandumOfAssociation copyWith({List<String> Function()? files}) { return PostAccountsAccountRequestDocumentsCompanyMemorandumOfAssociation(
  files: files != null ? files() : this.files,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountRequestDocumentsCompanyMemorandumOfAssociation &&
          listEquals(files, other.files); } 
@override int get hashCode { return Object.hashAll(files ?? const []).hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestDocumentsCompanyMemorandumOfAssociation(files: $files)'; } 
 }
