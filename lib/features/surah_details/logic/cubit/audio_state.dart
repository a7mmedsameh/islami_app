import 'package:freezed_annotation/freezed_annotation.dart';

part 'audio_state.freezed.dart';

@freezed
class AudioState with _$AudioState {
  const factory AudioState.initial() = _Initial;

  const factory AudioState.loading() = Loading;

  const factory AudioState.success({
    required bool isPlaying,
    required double volume,
    required Duration position,
    required Duration total,
  }) = Success;

  const factory AudioState.paused() = Paused;

  const factory AudioState.error(String message) = Error;
}
