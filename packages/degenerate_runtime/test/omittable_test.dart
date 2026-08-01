import 'package:degenerate_runtime/degenerate_runtime.dart';
import 'package:test/test.dart';

void main() {
  group('Omittable', () {
    test('absent is distinct from present null', () {
      expect(const Omittable<String?>.absent(), isNot(equals(const Omittable<String?>(null))));
      expect(const Omittable<String?>(null).isPresent, isTrue);
      expect(const Omittable<String?>.absent().isPresent, isFalse);
    });

    test('value equality and hashCode', () {
      expect(const Omittable('a'), equals(const Omittable('a')));
      expect(const Omittable('a').hashCode, equals(const Omittable('a').hashCode));
      expect(const Omittable('a'), isNot(equals(const Omittable('b'))));
      expect(
        const Omittable<String?>.absent(),
        equals(const Omittable<String?>.absent()),
      );
    });

    test('const construction is canonical', () {
      expect(
        identical(const Omittable<int?>.absent(), const Omittable<int?>.absent()),
        isTrue,
      );
    });

    test('requireValue returns the value when present', () {
      expect(const Omittable('x').requireValue, equals('x'));
      expect(const Omittable<String?>(null).requireValue, isNull);
    });

    test('requireValue throws StateError when absent', () {
      expect(
        () => const Omittable<String>.absent().requireValue,
        throwsStateError,
      );
    });

    test('map transforms present values and preserves absent', () {
      expect(
        const Omittable(2).map((v) => v * 3),
        equals(const Omittable(6)),
      );
      expect(
        const Omittable<int>.absent().map((v) => v * 3).isPresent,
        isFalse,
      );
    });

    test('toString', () {
      expect(const Omittable('a').toString(), equals('Omittable(a)'));
      expect(
        const Omittable<String>.absent().toString(),
        equals('Omittable.absent()'),
      );
    });

    test('non-nullable Omittable assignable to nullable', () {
      const Omittable<String?> field = Omittable<String>('x');
      expect(field.value, equals('x'));
    });

    test('equality is symmetric across type arguments', () {
      // A caller-built Omittable<String> upcast into an Omittable<String?>
      // field must equal a decoded Omittable<String?> in both directions.
      const a = Omittable<String?>('x');
      const Omittable<String?> b = Omittable<String>('x');
      expect(a == b, isTrue);
      expect(b == a, isTrue);
    });

    test('isAbsent mirrors isPresent', () {
      expect(const Omittable<String>.absent().isAbsent, isTrue);
      expect(const Omittable<String?>(null).isAbsent, isFalse);
    });

    test('valueOr returns the value when present, fallback when absent', () {
      expect(const Omittable('x').valueOr('y'), equals('x'));
      expect(const Omittable<String>.absent().valueOr('y'), equals('y'));
      expect(const Omittable<String?>(null).valueOr('y'), isNull);
    });
  });
}
