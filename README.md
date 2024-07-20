# Overview
Simple http proxy.

# Usage 
1. Copy the content of .env.example to .env and set the environment variables.
2. Start the container using ```make up```
2. Visit /swagger/index.html. You will see Swagger 2.0 API documents.

# Directories
Directories

1. [main.go](./main.go): contains the application's main entry point(s) or command-line interfaces (CLIs). Each subdirectory represents a different executable within the project
2. [/internal](./internal): houses the internal components of your application that are not intended to be imported by external projects. This directory typically contains packages/modules related to business logic, domain models, repositories, services, and configuration.
3. [/internal/app](./internal/app): this section may include any initialization code that needs to be executed before the application starts. For example, setting up configuration, connecting to databases, or initializing logging.
4. [/internal/cache](./internal/cache): directory allows for the separation of caching concerns from other parts of the application, promoting modularity and maintainability. By isolating caching-related code, it becomes easier to manage and test caching functionality independently. However, the specific directory structure and organization may vary based on the project's needs and preferences.
5. [/internal/config](./internal/config): holds the configuration-related code and files. It includes the logic to read and parse configuration files, environment variables, or other sources of configuration data. It provides a centralized way to manage and access application configuration throughout the codebase.
6. [/internal/domain](./internal/domain): directory, you separate the core business logic from infrastructure-specific or framework-specific code. This separation helps keep your code clean, maintainable, and easier to test. It also allows for better reusability and modularity, as the domain layer can be used independently of the specific infrastructure or framework being used.
7. [/internal/handler](./internal/handler): contains the HTTP or RPC handlers for the application. These handlers are responsible for receiving incoming requests, parsing them, invoking the necessary business logic, and returning the appropriate responses. Each handler typically corresponds to a specific endpoint or operation in the application's API.
8. [/internal/service](./internal/service): contains the implementation of the application's business logic. It encapsulates the core functionality of the application and provides high-level operations that the handlers can use to accomplish specific tasks. Services interact with data repositories, external APIs, or other dependencies to fulfill the application's requirements.
9. [/pkg](./pkg): contains packages that can be imported and used by external projects. These packages are typically utilities, libraries, or modules that have potential for reuse across different projects.

# Libraries

1. [go-chi](https://github.com/go-chi/chi)
2. [Logger](https://github.com/rs/zerolog)
3. [Swagger](https://github.com/swaggo/swag)