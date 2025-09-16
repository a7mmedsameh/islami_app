import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:just_audio/just_audio.dart';
import 'audio_state.dart';
import 'package:islami_app/features/surah_details/ui/helper/audio_constants.dart';

class AudioCubit extends Cubit<AudioState> {
  final AudioPlayer _audioPlayer = AudioPlayer();
  StreamSubscription<Duration>? _positionSub;
  StreamSubscription<PlayerState>? _playerStateSub;

  AudioCubit() : super(const AudioState.initial());

  Future<void> setAudioSource(int surahNumber) async {
    emit(const AudioState.loading());
    try {
      final url128 = AudioConstants.getSurahUrl(
        surahNumber: surahNumber,
        bitrate: AudioConstants.bitrate128,
      );
      final url64 = AudioConstants.getSurahUrl(
        surahNumber: surahNumber,
        bitrate: AudioConstants.bitrate64,
      );

      try {
        await _audioPlayer.setUrl(url128);
      } catch (_) {
        await _audioPlayer.setUrl(url64);
      }

      if (isClosed) return;

      emit(
        AudioState.success(
          isPlaying: _audioPlayer.playing,
          volume: _audioPlayer.volume,
          position: Duration.zero,
          total: _audioPlayer.duration ?? Duration.zero,
        ),
      );

      _positionSub?.cancel();
      _positionSub = _audioPlayer.positionStream.listen((position) {
        if (!isClosed && state is Success) {
          final current = state as Success;
          emit(current.copyWith(position: position));
        }
      });

      _playerStateSub?.cancel();
      _playerStateSub = _audioPlayer.playerStateStream.listen((playerState) {
        if (!isClosed && state is Success) {
          final current = state as Success;
          bool playing =
              playerState.playing &&
              playerState.processingState != ProcessingState.completed;
          emit(current.copyWith(isPlaying: playing));
        }
      });

      await _audioPlayer.play();
    } catch (e) {
      if (!isClosed) {
        emit(const AudioState.error('حدث خطأ غير متوقع'));
      }
    }
  }

  void pause() => _audioPlayer.pause();

  void resume() => _audioPlayer.play();

  void seek(Duration position) => _audioPlayer.seek(position);

  void setVolume(double volume) => _audioPlayer.setVolume(volume);

  @override
  Future<void> close() async {
    await _positionSub?.cancel();
    await _playerStateSub?.cancel();
    await _audioPlayer.dispose();
    return super.close();
  }
}
