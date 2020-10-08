# Create your own project easily

This is a shell script created by Himar Manuel Barquín Carrasco, where you can create a new npm project, and add several npm plugins to that project.

## Dependencies

To install and use this script, you need:

- NodeJS, NPM and NPX.
- Git.

## Installation

Simply follow this steps:

1. Clone this repository.

```shell
    $ git clone https://github.com/XavYan/mk-project.git
```

2. Change permissions of `install.sh` script.

```shell
    $ chmod +x install.sh
```

3. Execute `install.sh` script with sudo. You will be asked to put password during script execution.

```shell
    $ bash install.sh
```

4. Perfect! Installation has been done completely! You can delete now the cloned repository.

## Updating the script

To update, simply follow installation steps using `update.sh` script instead of `install.sh`.

## Usage

```shell
    $ mk-project [...OPTIONS] -f projecname
```

Basic usage:

```shell
    $ mk-project -f projecname
```

This will create a basic structure of the project. As follows:

```bash

    projectname
    ├── dist
    └── src
        ├── css
        ├── index.html
        └── js

```

To see the help, use `mk-project -h` or `mk-project --help`.

Here is all options available.

| Option | Long option              | Argument        | Description                                                                                                                                                    |
| :----- | :----------------------- | :-------------- | :------------------------------------------------------------------------------------------------------------------------------------------------------------- |
| -v     | --verbose                | none            | Show the code used during project creation to the terminal.                                                                                                    |
| none   | --assets                 | none            | Includes the `assets` folder inside `projectname/src` directory.                                                                                               |
| -b     | --build                  | none            | Creates the `build` folder, and declares it as the production folder (by default: `dist`).                                                                     |
| -f     | --folder, --project-name | projectname     | Set the project name as indicated by the argument. It is mandatory to use this script.                                                                         |
| -n     | --node                   | none            | Initializes project with npm.                                                                                                                                  |
| -s     | --scripts                | none            | Includes npm scripts, according the other options. This option initialize npm aswell.                                                                          |
| -l     | --linters                | none            | Will install stylelint and eslint, for CSS and Js style. Also, it will create `.eslintrc.js` and `.stylelintrc` files with basic uses. In case of `.eslintrc.js` file, user will be asked for configuration. |
| -p     | --parcel                 | none            | Will install parcel with npm. Also, it will be used in `npm start` and `npm run build`, if `--scripts` option is indicated. This option initialize npm aswell. |
| -g     | --git                    | none            | This will initialize a local git repository and make the first commit with the structure.                                                                      |
| -i     | --gitignore              | none            | Will add `.gitignore` file, excluding several folders (depending on the chosen options).                                                                       |
| -gh    | --gh-pages               | none            | This will install gh-pages npm plugin. You can use it with `npm run deploy`.                                                                                   |
| -a     | --all                    | none            | Execute `~/.mk-project-config/all` script. By default, it executes `mk-project -n -l -p -i -s -gh -f $1` (where `$1` is the name of the project), but you can modify this script, to execute the exact `mk-project` options. If this scripts doesn't exist, this option won't do nothing. |

## The ~/.mk-project-config folder

This folder is used with two reasons: global linters' configuration and `all` script.

### Global linters' configuration

If you want to use a specific linter configuration (we are talking about eslint and/or stylelint configuration files), simply add that file in this folder changing its name:

- If is an eslint config file: rename it as `eslintrc.global.js`.
- If is a stylelint config file: rename it as `stylelintrc.global`.

## Author

This script was made by [Himar Manuel Barquín Carrasco](https://www.linkedin.com/in/hbarquin/).
