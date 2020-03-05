import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:phono/screen/style/config.dart';
import 'package:phono/screen/style/palete.dart';

import '../style/config.dart';
import '../style/config.dart';
import '../style/palete.dart';

class SubItemLayout extends StatelessWidget {
  final String subtitle;
  final List<Widget> subcontent;
  SubItemLayout({
    this.subcontent,
    this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    buildCollapsed() {
      return Container();
    }

    buildExpanded() {
      return Container(
        color: Palete.white,
        padding: EdgeInsets.only(
          left: SizeConfig.horizontal * 5,
          right: SizeConfig.horizontal * 5,
          bottom: SizeConfig.horizontal * 5,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: subcontent,
        ),
      );
    }

    return Container(
      margin: EdgeInsets.only(top: SizeConfig.vertical * 2),
      child: ExpandableNotifier(
          child: ScrollOnExpand(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Builder(
              builder: (context) {
                var controller = ExpandableController.of(context);
                return Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: controller.expanded
                        ? Palete.lightBlue
                        : Palete.lightBlue,
                  ),
                  child: ListTile(
                    title: Text(
                      subtitle ?? "-",
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: TextStyle(
                        fontSize: SizeConfig.horizontal * 3.8,
                        color: Palete.white,
                        fontFamily: Palete.cabinBold,
                      ),
                    ),
                    trailing: Icon(
                        controller.expanded
                            ? Icons.keyboard_arrow_up
                            : Icons.keyboard_arrow_right,
                        color: Palete.white),
                    onTap: () {
                      controller.toggle();
                    },
                  ),
                );
              },
            ),
            Expandable(
              collapsed: buildExpanded(),
              expanded: buildCollapsed(),
            ),
          ],
        ),
      )),
    );
  }
}
