import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:ipa/screen/style/config.dart';
import 'package:ipa/screen/style/palete.dart';

import '../style/config.dart';
import '../style/config.dart';
import '../style/palete.dart';

class InfoItemLayout extends StatelessWidget {
  final String content, title;
  InfoItemLayout({
    this.content,
    this.title,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    buildCollapsed() {
      return Container();
    }

    buildExpanded() {
      return Container(
        color: Palete.blue,
        padding: EdgeInsets.only(
          left: SizeConfig.horizontal * 5,
          right: SizeConfig.horizontal * 5,
          bottom: SizeConfig.horizontal * 5,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              content ?? "-",
              softWrap: true,
              overflow: TextOverflow.clip,
              textAlign: TextAlign.justify,
              style: TextStyle(
                  height: SizeConfig.horizontal * 0.4,
                  fontFamily: Palete.cabinRegular,
                  color: Palete.white,
                  fontSize: SizeConfig.horizontal * 3.8),
            ),
          ],
        ),
      );
    }

    return Container(
      
      margin: EdgeInsets.only(top: SizeConfig.vertical * 2),
      child: ExpandableNotifier(
          child: ScrollOnExpand(
        child: Card(
          elevation: 3,
          clipBehavior: Clip.antiAlias,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Builder(
                builder: (context) {
                  var controller = ExpandableController.of(context);
                  return Container(
                    decoration: BoxDecoration(
                      color:
                          controller.expanded ? Palete.blue : Palete.blueMenu,
                    ),
                    child: ListTile(
                      title: Text(
                        title ?? "-",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: SizeConfig.horizontal * 4,
                            color: Palete.white,
                            fontFamily: Palete.cabinBold,
                            ),
                      ),
                      trailing: Icon(
                        controller.expanded
                            ? Icons.keyboard_arrow_up
                            : Icons.keyboard_arrow_right,
                        color: Palete.white,
                      ),
                      onTap: () {
                        controller.toggle();
                      },
                    ),
                  );
                },
              ),
              Expandable(
                collapsed: buildCollapsed(),
                expanded: buildExpanded(),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
