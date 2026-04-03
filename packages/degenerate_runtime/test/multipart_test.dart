import 'dart:typed_data';

import 'package:degenerate_runtime/degenerate_runtime.dart';
import 'package:test/test.dart';

void main() {
  group('ApiMultipartField', () {
    group('text', () {
      test('creates text field via factory', () {
        const field = ApiMultipartField.text('key', 'value');
        expect(field, isA<ApiMultipartTextField>());
        expect(field.name, 'key');
        expect((field as ApiMultipartTextField).value, 'value');
      });

      test('creates text field via constructor', () {
        const field = ApiMultipartTextField('name', 'hello');
        expect(field.name, 'name');
        expect(field.value, 'hello');
      });
    });

    group('file', () {
      test('creates file field via factory', () {
        final bytes = Uint8List.fromList([1, 2, 3]);
        final field = ApiMultipartField.file('avatar', bytes);
        expect(field, isA<ApiMultipartFileField>());
        expect(field.name, 'avatar');
        final file = field as ApiMultipartFileField;
        expect(file.bytes, bytes);
        expect(file.filename, isNull);
        expect(file.contentType, isNull);
      });

      test('creates file field with optional parameters', () {
        final bytes = Uint8List.fromList([0xFF, 0xD8]);
        final field = ApiMultipartField.file(
          'photo',
          bytes,
          filename: 'photo.jpg',
          contentType: 'image/jpeg',
        );
        final file = field as ApiMultipartFileField;
        expect(file.name, 'photo');
        expect(file.bytes, bytes);
        expect(file.filename, 'photo.jpg');
        expect(file.contentType, 'image/jpeg');
      });
    });

    test('sealed class enables exhaustive switch', () {
      final fields = <ApiMultipartField>[
        const ApiMultipartTextField('key', 'val'),
        ApiMultipartFileField('file', Uint8List(0)),
      ];

      final names = <String>[];
      for (final field in fields) {
        switch (field) {
          case ApiMultipartTextField():
            names.add('text:${field.name}');
          case ApiMultipartFileField():
            names.add('file:${field.name}');
        }
      }
      expect(names, ['text:key', 'file:file']);
    });
  });
}
