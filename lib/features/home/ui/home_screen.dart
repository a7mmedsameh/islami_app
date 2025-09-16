import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:islami_app/core/helpers/app_assets.dart';
import 'package:islami_app/core/helpers/spacing.dart';
import 'package:islami_app/core/widgets/app_text_form_field.dart';
import 'package:islami_app/features/home/ui/widgets/background_for_home_page.dart';
import 'package:islami_app/features/home/ui/widgets/color_linear_for_home_page.dart';
import 'package:islami_app/core/widgets/islami_logo_and_mosque.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:islami_app/core/di/dependency_injection.dart';
import 'package:islami_app/features/home/logic/cubit/home_cubit.dart';
import 'package:islami_app/features/home/logic/cubit/home_state.dart';
import 'package:islami_app/core/widgets/setup_error.dart';
import 'package:islami_app/features/home/ui/widgets/quran_list_text_and_list_view_builder.dart';
import 'package:islami_app/features/home/ui/widgets/surahs_shimmer_loading.dart';
import 'package:islami_app/features/home/data/models/surahs_response_model.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchController = TextEditingController();
  List<SurahsData> allSurahs = [];
  List<SurahsData> searchedSurahs = [];
  bool _isSearching = false;

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  String normalizeArabic(String str) {
    final harakat = RegExp(r'[ًٌٍَُِّْـ]');
    str = str.replaceAll(harakat, '');
    str = str.replaceAll(RegExp(r'[أإآٱ]'), 'ا');
    return str;
  }

  void _filterSurahs(String query) {
    final q = normalizeArabic(query.toLowerCase());
    searchedSurahs = allSurahs.where((surah) {
      final nameAr = normalizeArabic(surah.name!.toLowerCase());
      final nameEn = surah.englishName!.toLowerCase();
      return nameAr.contains(q) || nameEn.contains(q);
    }).toList();
    setState(() {
      _isSearching = query.isNotEmpty;
    });
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(statusBarIconBrightness: Brightness.light),
    );

    return Stack(
      children: [
        const BackgroundForHomePage(),
        const ColorLinearForHomePage(),
        SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.w),
            child: Column(
              children: [
                verticalSpace(15),
                const IslamiLogoAndMosque(),
                verticalSpace(25),
                AppTextField(
                  hintText: 'اسم السورة',
                  prefixIcon: Assets.svgsQuranIcon,
                  controller: _searchController,
                  onChanged: _filterSurahs,
                ),
                verticalSpace(25),
                Expanded(
                  child: BlocProvider(
                    create: (context) => getIt<HomeCubit>()..getAllSurahs(),
                    child: BlocBuilder<HomeCubit, HomeState>(
                      builder: (context, state) {
                        return state.maybeWhen(
                          surahsLoading: () {
                            return SingleChildScrollView(
                              physics: const NeverScrollableScrollPhysics(),
                              child: SizedBox(
                                height: MediaQuery.of(context).size.height - 200.h,
                                child: const SurahsShimmerLoading(),
                              ),
                            );
                          },
                          surahsSuccess: (surahsResponseModel) {
                            if (allSurahs.isEmpty) {
                              allSurahs = surahsResponseModel.data ?? [];
                            }
                            final displayList =
                                _isSearching ? searchedSurahs : allSurahs;
                            return QuranListTextAndListViewBuilder(
                                surahsList: displayList);
                          },
                          surahsError: (apiErrorModel) =>
                              setupError(apiErrorModel),
                          orElse: () => const SizedBox.shrink(),
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
