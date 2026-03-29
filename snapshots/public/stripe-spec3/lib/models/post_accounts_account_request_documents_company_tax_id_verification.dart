// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostAccountsAccountRequestDocumentsCompanyTaxIdVerification {const PostAccountsAccountRequestDocumentsCompanyTaxIdVerification({this.files});

factory PostAccountsAccountRequestDocumentsCompanyTaxIdVerification.fromJson(Map<String, dynamic> json) { return PostAccountsAccountRequestDocumentsCompanyTaxIdVerification(
  files: (json['files'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

final List<String>? files;

Map<String, dynamic> toJson() { return {
  'files': ?files,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostAccountsAccountRequestDocumentsCompanyTaxIdVerification copyWith({List<String> Function()? files}) { return PostAccountsAccountRequestDocumentsCompanyTaxIdVerification(
  files: files != null ? files() : this.files,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountRequestDocumentsCompanyTaxIdVerification &&
          listEquals(files, other.files); } 
@override int get hashCode { return Object.hashAll(files ?? const []).hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestDocumentsCompanyTaxIdVerification(files: $files)'; } 
 }
