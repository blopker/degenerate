// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';

@immutable
final class PinRequestSchema {
  const PinRequestSchema({required this.email, this.newsletterConsent = false});

  factory PinRequestSchema.fromJson(Map<String, dynamic> json) {
    return PinRequestSchema(
      email: json['email'] as String,
      newsletterConsent: json.containsKey('newsletter_consent')
          ? json['newsletter_consent'] as bool
          : false,
    );
  }

  final String email;

  final bool newsletterConsent;

  Map<String, dynamic> toJson() {
    return {'email': email, 'newsletter_consent': newsletterConsent};
  }

  static bool canParse(Map<String, dynamic> json) {
    return json.containsKey('email') && json['email'] is String;
  }

  PinRequestSchema copyWith({
    String? email,
    bool Function()? newsletterConsent,
  }) {
    return PinRequestSchema(
      email: email ?? this.email,
      newsletterConsent: newsletterConsent != null
          ? newsletterConsent()
          : this.newsletterConsent,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is PinRequestSchema &&
            email == other.email &&
            newsletterConsent == other.newsletterConsent;
  }

  @override
  int get hashCode {
    return Object.hash(email, newsletterConsent);
  }

  @override
  String toString() {
    return 'PinRequestSchema(email: $email, newsletterConsent: $newsletterConsent)';
  }
}
