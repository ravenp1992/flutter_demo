import 'package:demo_app/constants/enums.dart';
import 'package:demo_app/cubit/internet_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConnectivityScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Connectivity Demo'),
      ),
      body: Center(
        child: BlocBuilder<InternetCubit, InternetState>(
          builder: (context, state) {
            if (state is InternetConnected &&
                state.connectionType == ConnectionType.wifi) {
              return Text('Connected to internet using wifi');
            } else if (state is InternetConnected &&
                state.connectionType == ConnectionType.mobile) {
              return Text('Connected to internet using mobile');
            } else if (state is InternetDisconnected) {
              print('no connection');
              return CircularProgressIndicator();
            }

            return Container();
          },
        ),
      ),
    );
  }
}
