// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'email_details.dart';import 'sms_details.dart';
@immutable
final class Notification {
  const Notification({this.emailDetails = const Omittable.absent(),
this.smsDetails = const Omittable.absent(),}) : rawValue = const Omittable.absent();
  const Notification._({required this.rawValue, required this.emailDetails,
required this.smsDetails,});
  factory Notification.fromJson(Object? json) => Notification._(
    rawValue: Omittable(json),
    emailDetails: parseAnyOfVariant<EmailDetails>(json, (value) => EmailDetails.fromJson(value! as Map<String, dynamic>)),
smsDetails: parseAnyOfVariant<SmsDetails>(json, (value) => SmsDetails.fromJson(value! as Map<String, dynamic>)),
  );

  /// Original wire value when decoded. Typed views do not replace this payload.
  final Omittable<Object?> rawValue;
  final Omittable<EmailDetails> emailDetails;
final Omittable<SmsDetails> smsDetails;

  /// Whether at least one known variant matched.
  bool get isValid => emailDetails.isPresent || smsDetails.isPresent;
  bool get isUnknown => rawValue.isPresent && !isValid;

  /// Decoded values round-trip exactly; constructed views must agree.
  Object? toJson() => rawValue.isPresent ? rawValue.value : mergeAnyOf([
    if (emailDetails.isPresent) emailDetails.value?.toJson(),
if (smsDetails.isPresent) smsDetails.value?.toJson(),
  ]);

  @override
  bool operator ==(Object other) => identical(this, other) ||
      other is Notification && jsonValueEquals(toJson(), other.toJson());
  @override
  int get hashCode => jsonValueHash(toJson());
  @override
  String toString() => 'Notification(${toJson()})';
}
