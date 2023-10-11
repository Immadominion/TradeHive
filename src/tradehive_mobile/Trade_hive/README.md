# Code Style

  **i. Naming Convention:**

|Naming Convention|Effective Style|Example|
|-----------------|---------------|-------|
|Classes, enum types,typedefs,and type parameters,etensions|PascalCase|An example is HomeScreen|
|Libraries, packages, directories, and source files, import prefixes|snake_case|An example is home_screen|
|Class members, top-level definitions, variables, parameters, and named parameters, constants|camelCase|An example is verifiedUser|

## ii. Style Rule

- Always declare return types in your methods.
- Put required named parameters first.
- Always require non-null named parameters (required).
- All reusable components. should start with Afm meaning (**TradeHive**) to ensure code uniformity. e.g Evn.bigSpacing(),
- Use absoulute imports for external packages and use relative imports for files in project.[Here's Why](https://dart-lang.github.io/linter/lints/prefer_relative_imports.html)
- Indent your code where appropriate `(e.g Use two-space indentation.)`
       Click [Here](https://medium.com/@chukwuemeka.ezeokwelume/2-vs-4-spaces-or-tabs-for-writing-code-e82da3aa5b8d) to know more

## Contribution Guide

  **_Steps to collaborate on the repository for team members._**

### Cloning Repo

- Clone the project.  
- Click on the "Code" button on the Repo page.
- Copy the URL for the forked Repo "<https://github.com/your-github-username/zc_app.git>"
- Open your Code Editor and  run `git clone` "<https://github.com/your-github-username/zc_app.git>"
  
### _Add "Remote To" and "Pull From" Upstream_

- Add a Remote to Upstream to your Repo:
      Using the command : `git remote add upstream` ` "https://github.com/foo/foobar" `
- Pull from upstream to download all changes in the project using `git pull upstream develop`

### _Complete assigned task/issue_

- Open the project in your IDE or Code Editor.
- Complete your assigned task.

### _Create and Commit Changes to a New Branch_

  When your task is completed:

- Create a new branch with your task name e.g "feat- UserSignUP".
- run: `git checkout -b feat/yourTask`
  **Push to github;**
- `git add .`
- `git commit -m "feat(BE): Inplemented yourTask"`
  
### Push New Branch to "Origin" Repository

- To make sure there are no conflict, Pull from upstream using `git pull upstream develop`
- Push your branch changes to the Repo using `git push origin "feat/yourTask"` note how it end with a branch.

### Creating Pull Request

## When making a PR, your PR is expected to have the following comments"

- What is the task/issue completed?
- What does the PR actually do?
- How can the PR be manually tested?
- Screenshots(of your implementation - A mobile screen or an APi payload).

## Project Architecture and State Management

This project will follow a [MVVM pattern](https://www.geeksforgeeks.org/mvvm-model-view-viewmodel-architecture-pattern-in-android/) with a slight variation due to the peculiarities of the Flutter Framework. This project will follow the [Riverpod Architecture](www.pub.dev.riverpod.com), for flutter. Its pattern follows the concept of MVVM architectural pattern just without [Two way binding](https://developer.android.com/topic/libraries/data-binding/two-way). The state management to be used with this project is provider, Mainly because it is the recommended state management to be used with **Riverpod Architecture**
