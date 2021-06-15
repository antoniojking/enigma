#Enigma Project

link to specifications: https://backend.turing.edu/module1/projects/enigma/index
link to repo: https://github.com/antoniojking/enigma


## Getting Started
    [x] Create local repo
    [x] Create Github repo and link to local
    [x] Setup SimpleCov
    [x] Create branch
    [x] Understand the Encryption Algorithm
    [x] Encode and decode own name before starting
    [x] Pseudocode: plan out classes prior to starting
    [x] Create `README` file => self evaluation
    [x] Create `lib` and `spec` directories
    [x] Create `spec_helper` file


## Interaction Pattern

```ruby
pry(main)> require 'date'
#=> true

pry(main)> require './lib/enigma'
#=> true

pry(main)> enigma = Enigma.new
#=> #<Enigma:0x00007ff90f24cb78...>

# encrypt a message with a key and date
pry(main)> enigma.encrypt("hello world", "02715", "040895")
#=>
#   {
#     encryption: "keder ohulw",
#     key: "02715",
#     date: "040895"
#   }

# decrypt a message with a key and date
pry(main) > enigma.decrypt("keder ohulw", "02715", "040895")
#=>
#   {
#     decryption: "hello world",
#     key: "02715",
#     date: "040895"
#   }

# encrypt a message with a key (uses today's date)
pry(main)> encrypted = enigma.encrypt("hello world", "02715")
#=> # encryption hash here

#decrypt a message with a key (uses today's date)
pry(main) > enigma.decrypt(encrypted[:encryption], "02715")
#=> # decryption hash here

# encrypt a message (generates random key and uses today's date)
pry(main)> enigma.encrypt("hello world")
#=> # encryption hash here
```


##Self Assessment

### Functionality

- Objective: *Meets Expectations(3.0)*
- Description:
    [] Enigma Class with encrypt and decrypt methods successfully implemented
    [] Encrypt/decrypt command line interfaces successfully implemented
- Score (scale of 1 to 4): **
- Justification for score: **

### Object Oriented Programming

- Objective: *Meets Expectations(3.0)*
- Description:
    [] Project is broken into logical components that are appropriately encapsulated
    [] No classes are unreasonably small or large, or contain knowledge/information/behavior that they shouldn’t know about
    [] Student can articulate the single responsibilities of the various components
- Score (scale of 1 to 4):
- Justification for score:

### Ruby Conventions and Mechanics

- Objective: *Meets Expectations(3.0)*
- Description:
    [] Code is mostly properly indented, spaced, and lines are not excessively long
    [] Class, method, variable, and file names follow convention
    [] Some enumerables/data structures chosen are the most efficient tool for a given job
    [] Students can speak as to why those enumerables/data structures were chosen
    [] At least one hash is implemented in a way that makes logical sense
- Score (scale of 1 to 4): **
- Justification for score: **

### Test Driven Development

- Objective: *Meets Expectations(3.0)*
- Description:
    [] Every method is tested at both the unit and integration level
    [] Completely verify expected behavior (i.e., if a single method does 3 things, all 3 things are explicitly tested).
    [] Obvious edge cases are addressed.
    [] Git history demonstrates students are writing tests before implementation code.
    [] Test coverage metrics show coverage at 99% or greater.
- Score (scale of 1 to 4): **
- Justification for score: **

### Version Control

- Objective: *Meets Expectations(3.0)*
- Description:
    [] Minimum of 30 commits
    [] Pull request workflow that includes related and logical functionality
- Score (scale of 1 to 4): **
- Justification for score: **
