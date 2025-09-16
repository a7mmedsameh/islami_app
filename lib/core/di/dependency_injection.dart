import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:islami_app/core/networking/api_service.dart';
import 'package:islami_app/core/networking/dio_factory.dart';
import 'package:islami_app/features/home/data/repos/home_repo.dart';
import 'package:islami_app/features/home/logic/cubit/home_cubit.dart';
import 'package:islami_app/features/surah_details/data/repos/sura_details_repo.dart';
import 'package:islami_app/features/surah_details/logic/cubit/audio_cubit.dart';
import 'package:islami_app/features/surah_details/logic/cubit/sura_details_cubit.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  Dio dio = DioFactory.getDio();
  // Dio - ApiService
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // surahs Home
  getIt.registerLazySingleton<HomeRepo>(() => HomeRepo(getIt()));
  getIt.registerFactory<HomeCubit>(() => HomeCubit(getIt()));

  // sura Details
  getIt.registerLazySingleton<SuraDetailsRepo>(() => SuraDetailsRepo(getIt()));
  getIt.registerFactory<SuraDetailsCubit>(() => SuraDetailsCubit(getIt()));

  // audio player
  getIt.registerFactory<AudioCubit>(() => AudioCubit());
}
