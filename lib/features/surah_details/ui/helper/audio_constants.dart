class AudioConstants {
  static const String baseUrl = "https://cdn.islamic.network/quran/audio-surah";

  static const String defaultEdition = "ar.alafasy";

  static const int bitrate64 = 64;
  static const int bitrate128 = 128;

  static String getSurahUrl({
    required int surahNumber,
    int bitrate = bitrate128,
    String edition = defaultEdition,
  }) {
    return "$baseUrl/$bitrate/$edition/$surahNumber.mp3";
  }
}
