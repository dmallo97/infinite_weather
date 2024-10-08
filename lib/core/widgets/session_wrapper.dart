import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:infinite_weather/config/di/injection.dart';
import 'package:infinite_weather/config/style/app_colors.dart';
import 'package:infinite_weather/config/style/app_font_styles.dart';
import 'package:infinite_weather/core/application_cubit/application_cubit.dart';
import 'package:infinite_weather/core/connectivity/connectivity_check_bloc.dart';
import 'package:infinite_weather/core/widgets/custom_app_bar.dart';

class SessionWrapper extends StatelessWidget {
  const SessionWrapper({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SessionShellMainView(child: child);
  }
}

class SessionShellMainView extends StatelessWidget {
  const SessionShellMainView({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ConnectivityCheckBloc, ConnectivityCheckState>(
      bloc: getIt<ConnectivityCheckBloc>(),
      builder: (context, connectivityState) {
        return BlocBuilder<ApplicationCubit, ApplicationState>(
          bloc: getIt<ApplicationCubit>(),
          builder: (context, appState) => Scaffold(
            appBar: connectivityState.whenOrNull<PreferredSizeWidget>(
              connectedState: () => appState.showDefaultAppBar ? const CustomAppBar() : null,
            ),
            backgroundColor: Theme.of(context).extension<ThemeCustomColors>()?.background,
            body: connectivityState.maybeWhen(
              orElse: () {
                return child;
              },
              notConnectedState: () {
                return Scaffold(
                  bottomNavigationBar: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24.sp, vertical: 24.sp),
                    child: FilledButton(
                      onPressed: () {
                        getIt<ConnectivityCheckBloc>().add(const ConnectivityCheckEvent.checkConnectivity());
                      },
                      child: const Text('Reintentar'),
                    ),
                  ),
                  body: SizedBox.expand(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'No tienes conexión a internet',
                          style: AppFontStyles.getTitleBold,
                        ),
                        Text(
                          'Revisa tu conexión y vuelve a intentar',
                          style: AppFontStyles.getBodyReg,
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        );
      },
    );
  }
}
