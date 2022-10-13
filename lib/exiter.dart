import 'package:freezed_annotation/freezed_annotation.dart';

import 'token.dart';

part 'exiter.freezed.dart';

@freezed
class Exiter with _$Exiter implements Exception {
  const factory Exiter.returned(
      {required Object? value, required Token token}) = Returned;
  const factory Exiter.broke({required Token token}) = Broke;
}

extension ExiterValue on Exiter {
  get value => whenOrNull(returned: (value, _) => value);
}
