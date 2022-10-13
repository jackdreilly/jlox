import 'package:freezed_annotation/freezed_annotation.dart';

part 'exiter.freezed.dart';

@freezed
class Exiter with _$Exiter implements Exception {
  const factory Exiter.returned(value) = Returned;
  const factory Exiter.broke() = Broke;
}

extension ExiterValue on Exiter {
  get value => whenOrNull(returned: (value) => value);
}
