import 'package:flutter/material.dart';

class DatatableHeader {
  final String text;
  final String value;
  final bool sortable;
  final bool comands;
  bool show;
  final TextAlign textAlign;
  final int flex;
  final Widget Function(dynamic value)? headerBuilder;
  final Widget Function(dynamic value, dynamic row)? sourceBuilder;
  final double fontSize;

  DatatableHeader(
      {required this.text,
      required this.value,
      this.textAlign = TextAlign.center,
      this.sortable = false,
      this.show = true,
      this.comands = false,
      this.flex = 1,
      this.headerBuilder,
      this.sourceBuilder,
      this.fontSize = 12,});

  factory DatatableHeader.fromMap(Map<String, dynamic> map) => DatatableHeader(
        text: map['text'],
        value: map['value'],
        sortable: map['sortable'],
        show: map['show'],
        textAlign: map['textAlign'],
        flex: map['flex'],
        headerBuilder: map['headerBuilder'],
        sourceBuilder: map['sourceBuilder'],
        fontSize: map['fontSize'],
      );

  Map<String, dynamic> toMap() => {
        "text": this.text,
        "value": this.value,
        "sortable": this.sortable,
        "show": this.show,
        "textAlign": this.textAlign,
        "flex": this.flex,
        "headerBuilder": this.headerBuilder,
        "sourceBuilder": this.sourceBuilder,
        "fontSize": this.fontSize,
      };
}
