class GraphQLBuilder {
  String schema = '';

  List<Map<String, dynamic>> filters = [];
  List<String> fields = [];

  String mount() {
    String fields = fieldsGenerator();
    String schema = _schema(fields);

    return schema;
  }

  String _schema(String fields) {
    String filters = filterGenerator() == '()' ? '' : filterGenerator();

    return """
        $schema${filters} {
          $fields
        }
    """;
  }

  String fieldsGenerator() {
    return fields
        .toString()
        .replaceAll(',', '')
        .replaceAll('[', '')
        .replaceAll(']', '');
  }

  String filterGenerator() {
    return this.filters.map((e) => "${e['key']}: \$${e['key']}").toString();
  }
}
