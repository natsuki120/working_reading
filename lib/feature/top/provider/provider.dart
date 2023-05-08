import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:package_info/package_info.dart';
import 'package:working_reading/feature/top/component/update_dialog.dart';
import '../repository/top_repository.dart';

final topProvider = Provider((ref) => TopRepositoryWithSupabase());

final fetchFamousSaying =
    FutureProvider((ref) => ref.watch(topProvider).fetchRandomFamousSaying());

// トップ画面にて選択したn数を格納するprovider
final nBackNumProvider = StateProvider((ref) => 1);

// 強制アップデートを施すprovider
final updateForceProvider = Provider.family((ref, BuildContext context) async {
  // 現在起動しているアプリのバージョンを取得
  final PackageInfo packageInfo = await PackageInfo.fromPlatform();
  final int currentVersion = int.parse(packageInfo.buildNumber);

  try {
    // FirebaseRemoteConfigで最新バージョンを取得する
    final FirebaseRemoteConfig remoteConfig =
        await FirebaseRemoteConfig.instance;
    await remoteConfig.setConfigSettings(RemoteConfigSettings(
      fetchTimeout: const Duration(minutes: 1),
      minimumFetchInterval: const Duration(minutes: 5),
    ));
    await remoteConfig.fetchAndActivate();
    final String newVersion =
        remoteConfig.getString('force_update_app_version');
    if (double.parse(newVersion) > currentVersion) {
      displayUpdateDialog(context: context);
    }
  } catch (e) {
    print(e);
  }
  return null;
});
