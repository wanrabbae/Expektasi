import 'package:expektasi/core/utils/component.dart';
import 'package:expektasi/views/template/main_template.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ProfileView extends StatefulWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  State<ProfileView> createState() => _ProfileViewState();
}

class _ProfileViewState extends State<ProfileView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(),
      body: Center(
        child: Text('pppp'),
      ),
    );
  }
}
