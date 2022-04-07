class Comuser {
  String name;

  // Constructor
  Comuser({  
    required this.name,
  });

  Comuser copy({
    String? name,
    
  }) =>
      Comuser(
    
        name: name ?? this.name,
        
      );

  static Comuser fromJson(Map<String, dynamic> json) => Comuser(
 
        name: json['name'],
        
      );

  Map<String, dynamic> toJson() => {
        'name': name,
      };
}