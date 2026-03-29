// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';final class PostAccountsAccountRequestDocumentsBankAccountOwnershipVerification {const PostAccountsAccountRequestDocumentsBankAccountOwnershipVerification({this.files});

factory PostAccountsAccountRequestDocumentsBankAccountOwnershipVerification.fromJson(Map<String, dynamic> json) { return PostAccountsAccountRequestDocumentsBankAccountOwnershipVerification(
  files: (json['files'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

final List<String>? files;

Map<String, dynamic> toJson() { return {
  'files': ?files,
}; } 
static bool canParse(Map<String, dynamic> json) { return true; } 
PostAccountsAccountRequestDocumentsBankAccountOwnershipVerification copyWith({List<String> Function()? files}) { return PostAccountsAccountRequestDocumentsBankAccountOwnershipVerification(
  files: files != null ? files() : this.files,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsAccountRequestDocumentsBankAccountOwnershipVerification &&
          listEquals(files, other.files); } 
@override int get hashCode { return Object.hashAll(files ?? const []).hashCode; } 
@override String toString() { return 'PostAccountsAccountRequestDocumentsBankAccountOwnershipVerification(files: $files)'; } 
 }
