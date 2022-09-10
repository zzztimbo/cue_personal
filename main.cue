package cue_personal

import(
  "universe.dagger.io/alpine"
  "universe.dagger.io/bash"
)

#Run: {
    _img: alpine.#Build & {
        packages: bash: _
    }

    bash.#Run & {
        always: true
        input:  _img.output
    }
}
