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

  /// `Monthly`
  String get periodType {
    return Intl.message('Monthly', name: 'periodType', desc: '', args: []);
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
