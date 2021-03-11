# Interpreting Neural Language Models for Linguistic Complexity Assessment

![GitHub](https://img.shields.io/github/license/gsarti/master-thesis?color=black) ![GitHub last commit](https://img.shields.io/github/last-commit/gsarti/master-thesis) ![Template](https://img.shields.io/badge/template-ai2s_thesisdown-9cf)

This repository contains the Bookdown files I used to write my master's thesis [Interpreting Neural Language Models for Linguistic Complexity Assessment](https://gsarti.com/thesis/introduction.html) (code [here](https://github.com/gsarti/interpreting-complexity)).

It is based on the [ai2s-thesisdown template](https://github.com/AI-Student-Society/ai2s-thesisdown), which is in turn based on the [oxforddown template](https://github.com/ulyngs/oxforddown).

### Advantages

The greatest advantage is **cross-compilation** in Gitbook and PDF formats. This comes at the cost of fiddling with some edge cases that must be compatible across formats, although most problems were sorted out in the original template and the thesis is fairly customizable now.

See [the Gitbook on my website](https://gsarti.com/thesis/introduction.html) for an example.

It also allows for commenting, and can be easily versioned in Github.

### Compilation

The current setup is tested in Ubuntu 18.04 and should be compatible with iOS and Windows with minimal changes.

To produce the files, open the file `master-thesis.Rproj` using RStudio and run the Build all command (it corresponds to `make pdf`). To produce the Gitbook version, run `make gitbook` in console. All generated files will be found in the generated `docs` folder.