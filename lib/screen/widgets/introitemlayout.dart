import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:phono/screen/style/config.dart';
import 'package:phono/screen/style/palete.dart';
import 'package:phono/screen/widgets/contentcontainer.dart';

class IntroItemLayout extends StatelessWidget {
  final String title;
  final List<Widget> content;
  IntroItemLayout({
    this.title,
    this.content,
  });

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    buildCollapsed() {
      return Container();
    }

    buildExpanded() {
      return Container(
        padding: EdgeInsets.all(SizeConfig.horizontal * 3),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: content,
        ),
      );
    }

    return Container(
      margin: EdgeInsets.only(top: SizeConfig.vertical * 2),
      child: ExpandableNotifier(
          child: ScrollOnExpand(
        child: Card(
          elevation: 1.3,
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
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            color: Palete.white,
                            fontFamily: Palete.cabinSemiBold,
                            letterSpacing: 0.6),
                      ),
                      trailing: Icon(
                        controller.expanded
                            ? Icons.keyboard_arrow_up
                            : Icons.keyboard_arrow_down,
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
              Divider(
                height: 1,
              ),
            ],
          ),
        ),
      )),
    );
  }
}
