// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'document_options.dart';@immutable final class PostIdentityVerificationSessionsRequestOptionsDocumentVariant2 {const PostIdentityVerificationSessionsRequestOptionsDocumentVariant2._(this.value);

factory PostIdentityVerificationSessionsRequestOptionsDocumentVariant2.fromJson(String json) { return switch (json) {
  '' => $empty,
  _ => PostIdentityVerificationSessionsRequestOptionsDocumentVariant2._(json),
}; }

static const PostIdentityVerificationSessionsRequestOptionsDocumentVariant2 $empty = PostIdentityVerificationSessionsRequestOptionsDocumentVariant2._('');

static const List<PostIdentityVerificationSessionsRequestOptionsDocumentVariant2> values = [$empty];

final String value;

String toJson() { return value; } 
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown { return !values.contains(this); } 
@override bool operator ==(Object other) { return identical(this, other) ||
    other is PostIdentityVerificationSessionsRequestOptionsDocumentVariant2 && other.value == value; } 
@override int get hashCode { return value.hashCode; } 
@override String toString() { return 'PostIdentityVerificationSessionsRequestOptionsDocumentVariant2($value)'; } 
 }

@immutable
final class PostIdentityVerificationSessionsRequestOptionsDocument {
  const PostIdentityVerificationSessionsRequestOptionsDocument({this.documentOptions = const Omittable.absent(),
this.postIdentityVerificationSessionsRequestOptionsDocumentVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostIdentityVerificationSessionsRequestOptionsDocument._({required this.rawValue, required this.documentOptions,
required this.postIdentityVerificationSessionsRequestOptionsDocumentVariant2,});
  factory PostIdentityVerificationSessionsRequestOptionsDocument.fromJson(Object? json) => PostIdentityVerificationSessionsRequestOptionsDocument._(
    rawValue: Omittable(json),
    documentOptions: parseAnyOfVariant<DocumentOptions>(json, (value) => DocumentOptions.fromJson(value! as Map<String, dynamic>)),
postIdentityVerificationSessionsRequestOptionsDocumentVariant2: parseAnyOfVariant<PostIdentityVerificationSessionsRequestOptionsDocumentVariant2>(json, (value) => PostIdentityVerificationSessionsRequestOptionsDocumentVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<DocumentOptions> documentOptions;
final Omittable<PostIdentityVerificationSessionsRequestOptionsDocumentVariant2> postIdentityVerificationSessionsRequestOptionsDocumentVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => documentOptions.isPresent || postIdentityVerificationSessionsRequestOptionsDocumentVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (documentOptions.isPresent) documentOptions.value?.toJson(),
if (postIdentityVerificationSessionsRequestOptionsDocumentVariant2.isPresent) postIdentityVerificationSessionsRequestOptionsDocumentVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostIdentityVerificationSessionsRequestOptionsDocument && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostIdentityVerificationSessionsRequestOptionsDocument(${toJson()})';
}
