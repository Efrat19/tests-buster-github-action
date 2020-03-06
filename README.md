<img src="tests-buster.png" alt="tests-buster" width="200"/>

# tests-buster

#### fix tests / the wicked way :smiling_imp:
![version](https://img.shields.io/npm/v/tests-buster.svg)
![size](https://img.shields.io/bundlephobia/min/lib/tests-buster/1.1.5.svg)
![license](https://img.shields.io/npm/l/tests-buster.svg)
![downloads](https://img.shields.io/jsdelivr/npm/hd/tests-buter.svg)

the tests-buster will crawl in your test files, wisely analyze your tests and cut out every broken one. now your code is ready to take down the pipeline. :checkered_flag:

## Inputs

### `path`

The project root directory - where your package.json is. **Defaults to current location.**

### `pattern`
The test files search pattern. Accepts a js regex, **default: ".spec.js$"**
### `dry_run`
Scan the files without changing them. Run it before the actual slaughter to see how many tests can be busted **default: false**
### `auto_remove`
Automatically remove empty test files **default: true**
### `version`
Print version information and quit. **default: false**
### `help`
Display usage and quit. **default: false**

## Example usage

```yaml
  
name: clean-tests-action
on: [push]
jobs:
  clean:
    runs-on: ubuntu-latest
    steps:
    - uses: actions/checkout@master
    - name: clean tests
      uses: efrat19/tests-buster-github-action@master
      with:
        path: example
```
build example [here](https://github.com/Efrat19/tests-buster/runs/490229008) :tada:

information and documenation [here](https://github.com/Efrat19/tests-buster) :tada:
