# clean_architecture_boilerplate

A command-line tool to generate a Flutter project template with the best practices and architecture patterns.

## Features

- **Clean Architecture**: Separate your app into layers to ensure a scalable and maintainable codebase.
- **Dependency Injection**: Manage dependencies efficiently for better modularity and testability.
- **Bloc Pattern**: Implement the BLoC pattern for state management.
- **MVVM Architecture**: Integrate MVVM to separate UI, business logic, and data management.
- **Go Router**: Use Go Router for powerful and flexible navigation.

## Installation

To install this CLI, run:

```bash
dart pub global activate clean_architecture_boilerplate# clean_arch_boilerplate_cli
```

# Getting Started
After generating your project, follow these steps:

1. Install dependencies:
```bash
flutter pub get
```

2. Generate required code::
```bash
flutter packages pub run build_runner build
```

3. Start building your app with the pre-configured architecture and tools.


# Contributions
Contributions are welcome! If you find any issues or have suggestions for improvements, feel free to open an issue or submit a pull request.

License
This project is licensed under the MIT License.

This `README.md` is designed to meet pub.dev's requirements and provide clear instructions for users on how to install and use your CLI.

