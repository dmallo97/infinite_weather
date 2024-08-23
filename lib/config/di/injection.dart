import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';

import 'injection.config.dart';

GetIt getIt = GetIt.instance;

@InjectableInit(
  // externalPackageModulesBefore: [
  //   ExternalModule(AgoraCorePackageModule),
  //   ExternalModule(AgoraWidgetsPackageModule),
  // ],
)
GetIt configInjector(
  GetIt getIt, {
  String? env,
  EnvironmentFilter? environmentFilter,
}) {
  return getIt.init(
    environmentFilter: environmentFilter,
    environment: env,
  );
}