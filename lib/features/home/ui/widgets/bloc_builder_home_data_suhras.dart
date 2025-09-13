import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islami_app/core/di/dependency_injection.dart';
import 'package:islami_app/features/home/logic/cubit/home_cubit.dart';
import 'package:islami_app/features/home/logic/cubit/home_state.dart';
import 'package:islami_app/features/home/ui/widgets/quran_list_text_and_list_view_builder.dart';
import 'package:islami_app/features/home/ui/widgets/surahs_shimmer_loading.dart';

class BlocBuilderHomeDataSuhras extends StatelessWidget {
  const BlocBuilderHomeDataSuhras({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<HomeCubit>()..getAllSurahs(),
      child: BlocBuilder<HomeCubit, HomeState>(
        builder: (context, state) {
          return state.maybeWhen(
            surahsLoading: () {
              return const SurahsShimmerLoading();
            },
            surahsSuccess: (surahsResponseModel) {
              var surahsList = surahsResponseModel.data ?? [];
              return QuranListTextAndListViewBuilder(surahsList: surahsList);
            },
            surahsError: (error) {
              return Center(
                child: Text(
                  error.status.toString(),
                  style: const TextStyle(color: Colors.red, fontSize: 16),
                  textAlign: TextAlign.center,
                ),
              );
            },
            orElse: () {
              return const SizedBox.shrink();
            },
          );
        },
      ),
    );
  }
}
