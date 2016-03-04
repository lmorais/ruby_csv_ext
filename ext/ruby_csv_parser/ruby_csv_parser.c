#include <stdlib.h>
#include <stdio.h>
#include <string.h>
#include <ruby.h>

static VALUE rb_mParser;
static VALUE rb_cCsv;

static VALUE
csv_parse(VALUE self) {

  static VALUE filename;
  filename = rb_iv_get(self, "@filename"); 

  return filename;

}

static VALUE
csv_init(VALUE self, VALUE filename) {
  rb_iv_set(self, "@filename", filename);

  return self;
}

void
Init_ruby_csv_parser() {
  rb_mParser = rb_define_module("Parser");
  rb_cCsv    = rb_define_class_under(rb_mParser, "Csv", rb_cObject);

  rb_define_method(rb_cCsv, "initialize", csv_init, 1);
  rb_define_method(rb_cCsv, "parse", csv_parse, 0);
}
