// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name =
        (locale.countryCode?.isEmpty ?? false)
            ? locale.languageCode
            : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Responsive DashBoard`
  String get title {
    return Intl.message(
      'Responsive DashBoard',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  /// `Hello World`
  String get Welcome {
    return Intl.message('Hello World', name: 'Welcome', desc: '', args: []);
  }

  /// `Lekan Okeowo`
  String get name {
    return Intl.message('Lekan Okeowo', name: 'name', desc: '', args: []);
  }

  /// `Josua Nunito`
  String get userName2 {
    return Intl.message('Josua Nunito', name: 'userName2', desc: '', args: []);
  }

  /// `Mohamed Hassan`
  String get userName3 {
    return Intl.message(
      'Mohamed Hassan',
      name: 'userName3',
      desc: '',
      args: [],
    );
  }

  /// `Abdelrhman Mahmoud`
  String get userName4 {
    return Intl.message(
      'Abdelrhman Mahmoud',
      name: 'userName4',
      desc: '',
      args: [],
    );
  }

  /// `josua@gamil.com`
  String get emailJosua {
    return Intl.message(
      'josua@gamil.com',
      name: 'emailJosua',
      desc: '',
      args: [],
    );
  }

  /// `Mohamedhassan@gamil.com`
  String get emailMohamed {
    return Intl.message(
      'Mohamedhassan@gamil.com',
      name: 'emailMohamed',
      desc: '',
      args: [],
    );
  }

  /// `Abdo@gamil.com`
  String get emailAbdo {
    return Intl.message(
      'Abdo@gamil.com',
      name: 'emailAbdo',
      desc: '',
      args: [],
    );
  }

  /// `Madraniadi20@gmail.com`
  String get email {
    return Intl.message(
      'Madraniadi20@gmail.com',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `My Transactions`
  String get transactions {
    return Intl.message(
      'My Transactions',
      name: 'transactions',
      desc: '',
      args: [],
    );
  }

  /// `My Investments`
  String get investments {
    return Intl.message(
      'My Investments',
      name: 'investments',
      desc: '',
      args: [],
    );
  }

  /// `Wallet Account`
  String get wallet_account {
    return Intl.message(
      'Wallet Account',
      name: 'wallet_account',
      desc: '',
      args: [],
    );
  }

  /// `Setting system`
  String get setting_system {
    return Intl.message(
      'Setting system',
      name: 'setting_system',
      desc: '',
      args: [],
    );
  }

  /// `Logout account`
  String get layout_account {
    return Intl.message(
      'Logout account',
      name: 'layout_account',
      desc: '',
      args: [],
    );
  }

  /// `Balance`
  String get balance {
    return Intl.message('Balance', name: 'balance', desc: '', args: []);
  }

  /// `Income`
  String get income {
    return Intl.message('Income', name: 'income', desc: '', args: []);
  }

  /// `Monthly`
  String get periodType {
    return Intl.message('Monthly', name: 'periodType', desc: '', args: []);
  }

  /// `Jan`
  String get first_month {
    return Intl.message('Jan', name: 'first_month', desc: '', args: []);
  }

  /// `April`
  String get second_month {
    return Intl.message('April', name: 'second_month', desc: '', args: []);
  }

  /// `March`
  String get march_month {
    return Intl.message('March', name: 'march_month', desc: '', args: []);
  }

  /// `Expenses`
  String get expenses {
    return Intl.message('Expenses', name: 'expenses', desc: '', args: []);
  }

  /// `All Expenses`
  String get allExpenses {
    return Intl.message(
      'All Expenses',
      name: 'allExpenses',
      desc: '',
      args: [],
    );
  }

  /// `Latest Transactions`
  String get latestTransaction {
    return Intl.message(
      'Latest Transactions',
      name: 'latestTransaction',
      desc: '',
      args: [],
    );
  }

  /// `Quick Invoice`
  String get quickInvoice {
    return Intl.message(
      'Quick Invoice',
      name: 'quickInvoice',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
