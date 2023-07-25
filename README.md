# puppet-async_profiler
[![Build Status](https://github.com/markt-de/puppet-async_profiler/actions/workflows/ci.yaml/badge.svg)](https://github.com/markt-de/puppet-async_profiler/actions/workflows/ci.yaml)
[![Puppet Forge](https://img.shields.io/puppetforge/v/markt/async_profiler.svg)](https://forge.puppetlabs.com/markt/async_profiler)
[![Puppet Forge](https://img.shields.io/puppetforge/f/markt/async_profiler.svg)](https://forge.puppetlabs.com/markt/async_profiler)

## Table of Contents

1. [Description](#description)
1. [Usage](#usage)
1. [Reference](#reference)
1. [Development](#development)

## Description

A Puppet module to install [async-profiler](https://github.com/jvm-profiling-tools/async-profiler), a low overhead sampling profiler for Java.

## Usage

Just specify the version of async-profiler that should be installed:

```puppet
class { 'async_profiler':
  version => '1.8',
}
```

## Reference

Classes and parameters are documented in [REFERENCE.md](REFERENCE.md).

## Development

Please use the GitHub issues functionality to report any bugs or requests for new features. Feel free to fork and submit pull requests for potential contributions.
