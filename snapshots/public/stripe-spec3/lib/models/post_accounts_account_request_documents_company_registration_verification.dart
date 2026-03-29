// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostAccountsAccountRequestDocumentsCompanyRegistrationVerification {const PostAccountsAccountRequestDocumentsCompanyRegistrationVerification({this.files});

factory PostAccountsAccountRequestDocumentsCompanyRegistrationVerification.fromJson(Map<String, dynamic> json) { return PostAccountsAccountRequestDocumentsCompanyRegistrationVerification(
  files: (json['files'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

final List<String>? files;

Map<String, dynamic> toJson() { return {
  'files': ?files,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'files'}.contains(key)); } 
PostAccountsAccountRequestDocumentsCompanyRegistrationVerification copyWith({List<String> Function()? files}) { return PostAccountsAccountRequestDocumentsCompanyRegistrationVerification(
  files: files != null ? files() : this.files,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountRequestDocumentsCompanyRegistrationVerification &&
          listEquals(files, other.files); } 
@override int get hashCode { return Object.hashAll(files ?? const []).hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestDocumentsCompanyRegistrationVerification(files: $files)'; } 
 }
