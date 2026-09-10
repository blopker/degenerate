// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'document_options2.dart';@immutable final class PostIdentityVerificationSessionsSessionRequestOptionsDocumentVariant2 {const PostIdentityVerificationSessionsSessionRequestOptionsDocumentVariant2._(this.value);

factory PostIdentityVerificationSessionsSessionRequestOptionsDocumentVariant2.fromJson(String json) {return switch (json) {
  '' => $empty,
  _ => PostIdentityVerificationSessionsSessionRequestOptionsDocumentVariant2._(json),
};}

static const PostIdentityVerificationSessionsSessionRequestOptionsDocumentVariant2 $empty = PostIdentityVerificationSessionsSessionRequestOptionsDocumentVariant2._('');

static const List<PostIdentityVerificationSessionsSessionRequestOptionsDocumentVariant2> values = [$empty];

final String value;

String toJson() {return value;}
/// Whether this value is unknown (not defined in the OpenAPI spec).
bool get isUnknown {return !values.contains(this);}
@override bool operator ==(Object other) {return identical(this, other) ||
    other is PostIdentityVerificationSessionsSessionRequestOptionsDocumentVariant2 && other.value == value;}
@override int get hashCode {return value.hashCode;}
@override String toString() {return 'PostIdentityVerificationSessionsSessionRequestOptionsDocumentVariant2($value)';}
}

@immutable
final class PostIdentityVerificationSessionsSessionRequestOptionsDocument {
  const PostIdentityVerificationSessionsSessionRequestOptionsDocument({this.documentOptions2 = const Omittable.absent(),
this.postIdentityVerificationSessionsSessionRequestOptionsDocumentVariant2 = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const PostIdentityVerificationSessionsSessionRequestOptionsDocument._({required this.rawValue, required this.documentOptions2,
required this.postIdentityVerificationSessionsSessionRequestOptionsDocumentVariant2,});
  factory PostIdentityVerificationSessionsSessionRequestOptionsDocument.fromJson(Object? json) => PostIdentityVerificationSessionsSessionRequestOptionsDocument._(
    rawValue: Omittable(json),
    documentOptions2: parseAnyOfVariant<DocumentOptions2>(json, (value) => DocumentOptions2.fromJson(value! as Map<String, dynamic>)),
postIdentityVerificationSessionsSessionRequestOptionsDocumentVariant2: parseAnyOfVariant<PostIdentityVerificationSessionsSessionRequestOptionsDocumentVariant2>(json, (value) => PostIdentityVerificationSessionsSessionRequestOptionsDocumentVariant2.fromJson(value! as String)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<DocumentOptions2> documentOptions2;
final Omittable<PostIdentityVerificationSessionsSessionRequestOptionsDocumentVariant2> postIdentityVerificationSessionsSessionRequestOptionsDocumentVariant2;

  /// Whether at least one known variant matched.
  bool get isValid => documentOptions2.isPresent || postIdentityVerificationSessionsSessionRequestOptionsDocumentVariant2.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (documentOptions2.isPresent) documentOptions2.value?.toJson(),
if (postIdentityVerificationSessionsSessionRequestOptionsDocumentVariant2.isPresent) postIdentityVerificationSessionsSessionRequestOptionsDocumentVariant2.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is PostIdentityVerificationSessionsSessionRequestOptionsDocument && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'PostIdentityVerificationSessionsSessionRequestOptionsDocument(${toJson()})';
}
