class FormProperties {
  late String title;
  late String type;
  late String description;
  late List<dynamic> required;
  late List<Properties> properties;

  FormProperties({
    required this.title,
    required this.description,
    required this.type,
    required this.required,
    required this.properties,
  });

  FormProperties.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    description = json['description'];
    type = json['type'];
    required = json['required'].cast<String>();
    properties = json['properties'] != null
        ? List<Properties>.from(
            json["properties"].map(
              (x) => Properties.fromJson(x),
            ),
          )
        : [];
  }
}

class Properties {
  late String id;
  late String type;
  late String title;
  late dynamic defaultValue;
  late String required;
  // Commented

  Properties.fromJson(Map<String, dynamic> json) {
    id = json["id"];
    title = json['title'];
    defaultValue = json['default'];
    type = json['type'];
    required = json['required'];
  }
}
