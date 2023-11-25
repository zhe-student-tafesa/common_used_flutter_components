import 'package:flutter/material.dart';

import '../../../common/values/image_manager.dart';
import '../../../common/values/string_manager.dart';
import '../../../models/choice_model.dart';
import '../../../models/email_detail_model.dart';
import '../widgets/hero_icon_dialog.dart';
import '../widgets/pop_auth_dialog.dart';
import '../widgets/scrollable_list_dialog.dart';
import '../widgets/show_alert_dialog.dart';

class DialogsPage extends StatefulWidget {
  const DialogsPage({Key? key}) : super(key: key);

  @override
  State<DialogsPage> createState() => _DialogsPageState();
}

class _DialogsPageState extends State<DialogsPage> {
  List<Choice> _choices = [
    Choice('None', false, 100),
    Choice('Callisto', true, 101),
    Choice('Ganymede', false, 102),
    Choice('Classic', false, 103),
    Choice('index-4', false, 104),
    Choice('index-5', false, 105),
    Choice('index-6', false, 106),
    Choice('index-7', false, 107),
    Choice('index-8', false, 108),
    Choice('index-9', false, 109),
    Choice('index-10', false, 110),
  ];
  List<EmailDetail> _emailChoice = [
    EmailDetail(100, FZMediaNames.man1Avatar, 'mike@awesome.com', false),
    EmailDetail(102, FZMediaNames.woman1Avatar, 'ashley@awesome.com', false),
    EmailDetail(104, FZMediaNames.woman2Avatar, 'lizy@awesome.com', false),
  ];
  List<int> copyOfchoicesID = [];
  List<int> copyOfEmailID = [];
  @override
  void initState() {
    super.initState();
    for (var choice in _choices) {
      if (choice.isSelected) {
        copyOfchoicesID.add(choice.id);
      }
    }
    for (var email in _emailChoice) {
      if (email.isSelected) {
        copyOfEmailID.add(email.id);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(FZStrings.dialogs),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Dialog with hero icon: '),
                  ElevatedButton(
                    onPressed: () {
                      showDialog(
                        builder: (BuildContext context) {
                          return Container(
                            child: HeroIconDialog(
                              title: 'Dialog with hero icon',
                              description:
                                  'A dialog is a type of modal window that appears in front of app content to provide critical information, or prompt for a decision to be made. ',
                              firstButton: 'Cancel',
                              secondButton: 'OK',
                              height: 400,

                              /// re-save copy ids
                              onTapOk: () {
                                int length = _emailChoice.length;
                                for (int i = 0; i < length; i++) {
                                  if (_emailChoice[i].isSelected) {
                                    if (!copyOfEmailID.contains(_emailChoice[i].id)) {
                                      copyOfEmailID.add(_emailChoice[i].id);
                                    }
                                  } else {
                                    if (copyOfEmailID.contains(_emailChoice[i].id)) {
                                      copyOfEmailID.remove(_emailChoice[i].id);
                                    }
                                  }
                                }
                                Navigator.of(context).pop();
                              },

                              /// re-store data using copy
                              onTapCancel: () {
                                int length = _emailChoice.length;
                                setState(() {
                                  for (int i = 0; i < length; i++) {
                                    if (copyOfEmailID.contains(_emailChoice[i].id)) {
                                      _emailChoice[i].isSelected = true;
                                    } else {
                                      _emailChoice[i].isSelected = false;
                                    }
                                  }
                                });
                                Navigator.of(context).pop();
                              },
                              choices: _emailChoice,
                            ),
                          );
                        },
                        context: context,
                      );
                    },
                    child: const Text(
                      'Dialog',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Scrollable list dialog: '),
                  ElevatedButton(
                    onPressed: () {
                      showDialog(
                        builder: (BuildContext context) {
                          return Container(
                            child: ScrollableListDialog(
                              title: 'Scrollable list dialog',
                              description:
                                  'A dialog is a type of modal window that appears in front of app content to provide critical information, or prompt for a decision to be made. ',
                              firstButton: 'Cancel',
                              secondButton: 'OK',
                              height: 350,

                              /// re-save copy ids
                              onTapOk: () {
                                int length = _choices.length;
                                for (int i = 0; i < length; i++) {
                                  if (_choices[i].isSelected) {
                                    if (!copyOfchoicesID.contains(_choices[i].id)) {
                                      copyOfchoicesID.add(_choices[i].id);
                                    }
                                  } else {
                                    if (copyOfchoicesID.contains(_choices[i].id)) {
                                      copyOfchoicesID.remove(_choices[i].id);
                                    }
                                  }
                                }
                                Navigator.of(context).pop();
                              },

                              /// re-store data using copy
                              onTapCancel: () {
                                int length = _choices.length;
                                setState(() {
                                  for (int i = 0; i < length; i++) {
                                    if (copyOfchoicesID.contains(_choices[i].id)) {
                                      _choices[i].isSelected = true;
                                    } else {
                                      _choices[i].isSelected = false;
                                    }
                                  }
                                });
                                Navigator.of(context).pop();
                              },
                              choices: _choices,
                            ),
                          );
                        },
                        context: context,
                      );
                    },
                    child: const Text(
                      'Dialog',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text('Auth dialog: '),
                  ElevatedButton(
                    onPressed: () {
                      showDialog(
                        builder: (BuildContext context) {
                          return Container(
                            child: PopAuthDialog(
                              title: 'Allow <App> to access <Your Data>',
                              firstButton: 'While using the app',
                              secondButton: 'Only this time',
                              thirdButton: 'Don’t allow',
                              onTapWhileUsingTheApp: () {
                                debugPrint('WhileUsingTheApp--');
                                Navigator.of(context).pop();
                              },
                              onTapOnlyThisTime: () {
                                debugPrint('OnlyThisTime..');
                                Navigator.of(context).pop();
                              },
                              onTapNotAllow: () {
                                debugPrint('NotAllow--tap');
                                Navigator.of(context).pop();
                              },
                              height: 244,
                            ),
                          );
                        },
                        context: context,
                      );
                    },
                    child: const Text(
                      'Auth Dialog',
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('No title dialog: '),
                  ShowAlertDialog(
                    title: '',
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text('Has title dialog: '),
                  ShowAlertDialog(
                    title: 'Basic dialog title',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
