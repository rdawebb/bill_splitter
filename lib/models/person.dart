/// Represents a person participating in a bill split

library;

import 'package:freezed_annotation/freezed_annotation.dart';

part 'person.freezed.dart';

@freezed
abstract class Person with _$Person {
  const factory Person({
    required String id,
    required String name,
    required int colorHex,
  }) = _Person;
}
