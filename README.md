# Archived Repository

This repository has been archived and will no longer receive updates. 
It was archived as part of the [Repository Standardization Initiative](https://github.com/chef-boneyard/oss-repo-standardization-2025).
If you are a Chef customer and need support for this repository, please contact your Chef account team.

now cookbook
============

[![Build Status](https://travis-ci.org/chef-cookbooks/now.svg?branch=master)](http://travis-ci.org/chef-cookbooks/now)
[![Cookbook Version](https://img.shields.io/cookbook/v/now.svg)](https://supermarket.chef.io/cookbooks/now)

This cookbook is a pure library cookbook that monkey patches the core
Chef DSL to provide a method called `include_recipe_now`. This method
will converge a recipe immediately, as it is encountered during
compilation. This is meant to avoid the "compile phase" arms race
created by over-use and abuse of .run_action. It is not meant to be a
permanent solution for achieving this behavior and should be used only
sparingly, with full understanding of what is happening.

Technique borrowed from Poise. https://github.com/poise/poise


Requirements
------------
#### Platforms
- Any platform supported by chef-client

#### Chef
- Chef 12.1+

#### Cookbooks
- none


License & Authors
-----------------
- Author:: Noah Kantrowitz (<noah@coderanger.net>)
- Author:: Sean OMeara (<someara@chef.io>)

```text
Copyright:: 2014-2016, Chef Software, Inc.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```
