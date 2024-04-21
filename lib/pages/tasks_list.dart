import 'package:flutter/cupertino.dart';
import 'package:hebitega/design/colors.dart';

import '../design/dimensions.dart';

class taskslist extends StatelessWidget {
  const taskslist({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(children: <Widget>[_list(), _updateButton()]);
  }

  Widget _list() {
    return ListView.separated(
      itemCount: 5,
      padding: const EdgeInsets.only(
          left: padding35, top: padding115, right: padding35),
      separatorBuilder: (BuildContext context, int index) {
        return SizedBox(height: height11);
      },
      itemBuilder: (BuildContext context, int index) {
        return Container(height: height65, color: plusmenuColor);
      },
    );
  }

  Widget _updateButton() {
    return Container();
  }
}
