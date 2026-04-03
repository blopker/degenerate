// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';@immutable final class PostAccountsRequestDocumentsBankAccountOwnershipVerification {const PostAccountsRequestDocumentsBankAccountOwnershipVerification({this.files});

factory PostAccountsRequestDocumentsBankAccountOwnershipVerification.fromJson(Map<String, dynamic> json) { return PostAccountsRequestDocumentsBankAccountOwnershipVerification(
  files: (json['files'] as List<dynamic>?)?.map((e) => e as String).toList(),
); }

final List<String>? files;

Map<String, dynamic> toJson() { return {
  'files': ?files,
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'files'}.contains(key)); } 
PostAccountsRequestDocumentsBankAccountOwnershipVerification copyWith({List<String> Function()? files}) { return PostAccountsRequestDocumentsBankAccountOwnershipVerification(
  files: files != null ? files() : this.files,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostAccountsRequestDocumentsBankAccountOwnershipVerification &&
          listEquals(files, other.files); } 
@override int get hashCode { return Object.hashAll(files ?? const []).hashCode; } 
@override String toString() { return 'PostAccountsRequestDocumentsBankAccountOwnershipVerification(files: $files)'; } 
 }
