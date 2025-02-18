import 'dart:io';

import 'package:api_deploy/src/writor/build_api_dir.dart';
import 'package:api_validate/api_validate.dart';
import 'package:path/path.dart';

Future<void> apiDeploy() async {
  try {
    final workingDirPath = join(Directory.current.path, '..', '..', '..', '..', '..');
    await buildApiFolder(workingDirPath);
    await apiValidate(workingDirPath);
    print('💙💙 Deploy completed successfully!! 💙💙');
  } catch (e) {
    if (e is ArgumentError) {
      print('\nError: ${e.message}\n');
      exit(-1);
    } else {
      rethrow;
    }
  }
}
