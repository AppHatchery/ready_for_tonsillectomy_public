class Module{
  final int id;
  final String title;
  final String route;

 const Module({
    required this.id,
    required this.title,
    required this.route
  });
}


List<Module> modules = [
  const Module(id: 1, title: "what are tonsils?", route: "module1"),
  const Module(id: 2, title: "why surgery?", route: "module2"),
  const Module(id: 3, title: "getting ready", route: "module3"),
  const Module(id: 4, title: "going to sleep", route: "module4a"),
  const Module(id: 5, title: "the OR", route: "module5"),
  const Module(id: 6, title: "after surgery", route: "module6a"),
  const Module(id: 7, title: "healing at home", route: "module7"),
];