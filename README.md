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


## Self Assessment

### Functionality

- Objective: *Meets Expectations(3.0)*
- Description:
    - [x] Enigma Class with encrypt and decrypt methods successfully implemented
    - [] Encrypt/decrypt command line interfaces successfully implemented
- Score (scale of 1 to 4): *2.0*
- Justification for score: *Was not able to properly setup command line interface*

### Object Oriented Programming

- Objective: *Meets Expectations(3.0)*
- Description:
    - [x] Project is broken into logical components that are appropriately encapsulated
    - [x] No classes are unreasonably small or large, or contain knowledge/information/behavior that they shouldn’t know about
    - [x] Student can articulate the single responsibilities of the various components
- Score (scale of 1 to 4): *2.75*
- Justification for score: *Could've broken down alogorithim better. Encapsulation could be better.*

### Ruby Conventions and Mechanics

- Objective: *Meets Expectations(3.0)*
- Description:
    - [x] Code is mostly properly indented, spaced, and lines are not excessively long
    - [x] Class, method, variable, and file names follow convention
    - [x] Some enumerables/data structures chosen are the most efficient tool for a given job
    - [x] Students can speak as to why those enumerables/data structures were chosen
    - [] At least one hash is implemented in a way that makes logical sense
- Score (scale of 1 to 4): *2.75*
- Justification for score: *Not confident I implemented a hash; mostly used arrays*

### Test Driven Development

- Objective: *Meets Expectations(3.0)*
- Description:
    - [x] Every method is tested at both the unit and integration level
    - [x] Completely verify expected behavior (i.e., if a single method does 3 things, all 3 things are explicitly tested).
    - [x] Obvious edge cases are addressed.
    - [x] Git history demonstrates students are writing tests before implementation code.
    - [] Test coverage metrics show coverage at 99% or greater.
- Score (scale of 1 to 4): *2.75*
- Justification for score: *SimpleCov at 98%, probably missed an edge case*

### Version Control

- Objective: *Meets Expectations(3.0)*
- Description:
    - [x] Minimum of 30 commits
    - [x] Pull request workflow that includes related and logical functionality
- Score (scale of 1 to 4): *3.0*
- Justification for score: *Over 30 commits and several successful merges with logical branching*
