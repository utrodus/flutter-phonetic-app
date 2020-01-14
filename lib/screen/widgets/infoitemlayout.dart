import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:phono/constant/content.dart';
import 'package:phono/screen/style/config.dart';
import 'package:phono/screen/style/palete.dart';

class InfoItemLayout extends StatelessWidget {
  final String title;
  final List<Widget> content;
  InfoItemLayout({
    this.content,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    buildCollapsed() {
      return Container(
        decoration: BoxDecoration(
          color: Palete.white,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(SizeConfig.vertical * 2),
            bottomRight: Radius.circular(SizeConfig.vertical * 2),
          ),
        ),
        padding: EdgeInsets.only(
          left: SizeConfig.horizontal * 5,
          right: SizeConfig.horizontal * 5,
          bottom: SizeConfig.horizontal * 5,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: content,
        ),
      );
    }

    buildExpanded() {
      return null;
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
                      borderRadius:
                          BorderRadius.circular(SizeConfig.vertical * 2),
                      color: controller.expanded ? Palete.bgAppbar : Palete.white,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        ListTile(
                          title: Text(
                            title ?? "-",
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: SizeConfig.horizontal * 3.8,
                              color: controller.expanded ? Palete.white : Palete.isiColor,
                              fontFamily: Palete.cabinBold,
                            ),
                          ),
                          enabled: true,
                          onTap: () {
                            controller.toggle();
                          },
                          trailing: Icon(
                              controller.expanded
                                  ? Icons.keyboard_arrow_right
                                  : Icons.keyboard_arrow_up,
                              color: controller.expanded ? Palete.white : Palete.isiColor ),
                        ),
                        Expandable(
                          collapsed: buildCollapsed(),
                          expanded: buildExpanded(),
                        ),
                      ],
                    ));
              },
            ),
          ],
        ),
      )),
    );
  }
}
