# Reference

<!-- DO NOT EDIT: This document was generated by Puppet Strings -->

## Table of Contents

### Classes

#### Public Classes

* [`async_profiler`](#async_profiler): Setup async-profiler

#### Private Classes

* `async_profiler::config`: Auxiliary configuration for async-profiler
* `async_profiler::install`: Download and extract the distribution archive.

## Classes

### `async_profiler`

Setup async-profiler

#### Parameters

The following parameters are available in the `async_profiler` class.

##### `installroot`

Data type: `Stdlib::Compat::Absolute_path`

Specifies the base directory where ansy-profiler should be installed. A new
subdirectory for each version will be created.

##### `mirror`

Data type: `Variant[Stdlib::HTTPUrl,Stdlib::HTTPSUrl]`

Specifies the base URL where the distribution archive can be downloaded.

##### `version`

Data type: `String`

Specifies the version of async-profiler that should be installed.

##### `capabilities`

Data type: `Array`



##### `manage_capabilities`

Data type: `Boolean`



##### `manage_symlink`

Data type: `Boolean`



##### `symlink_name`

Data type: `String`


