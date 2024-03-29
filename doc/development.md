# Readme for Developers

## Miscellaneous

### Rails console

Add to your `~/.irbrc`:

```bash
require 'irb/completion'

IRB.conf[:PROMPT_MODE] = :SIMPLE
IRB.conf[:AUTO_INDENT_MODE] = false
IRB.conf[:SAVE_HISTORY] = 2000
```

### Pry for Rails console

[Pry](https://rubygems.org/gems/pry) is a runtime developer console and IRB alternative with powerful introspection capabilities. Pry aims to be more than an IRB replacement. It is an attempt to bring [REPL driven programming](https://pry.github.io/) to the Ruby language.

[byebug](https://rubygems.org/gems/pry-byebug) adds 'step', 'next', 'finish', 'continue' and 'break' commands to control execution.

Add to your `~/.pryrc`:

```bash
Pry.config.prompt = PryRails::RAILS_PROMPT if defined?(PryRails::RAILS_PROMPT)
```

### amazing_print for IRB console

[amazing_print](https://rubygems.org/gems/amazing_print) pretty print Ruby objects
to visualize their structure.
Supports custom object formatting via plugins.

Add to your `~/.irbrc`:

```bash
# frozen_string_literal: true

require "amazing_print"
AmazingPrint.irb!
```

### amazing_print for Rails console with Pry

Add to your `~/.pryrc`:

```bash
# frozen_string_literal: true

require "amazing_print"
AmazingPrint.pry!

AmazingPrint.defaults = {
  indent: -2,
  limit: true
}
```
