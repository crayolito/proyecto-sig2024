import 'package:app_sig_2014/blocs/permissions/permissions_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PermissionsBloc? permissionsBloc;

  @override
  void initState() {
    permissionsBloc = BlocProvider.of<PermissionsBloc>(context, listen: false);
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        body: SizedBox(
            width: size.width,
            height: size.height,
            child: Center(
              child: Column(
                children: [
                  ElevatedButton(
                      onPressed: () {
                        context.pushNamed("map");
                      },
                      child: const Text("GOOGLE MAP")),
                  ElevatedButton(
                      onPressed: () {
                        context.pushNamed("");
                      },
                      child: const Text("MAP BOX"))
                ],
              ),
            )));
  }
}
