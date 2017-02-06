mkpdf = pandoc --from markdown --to latex

all: abstract-interpretation logic model-checking real-time unification typing

abstract-interpretation: abstract-interpretation/abstract-interpretation.md
	$(mkpdf) --output abstract-interpretation/abstract-interpretation.pdf abstract-interpretation/abstract-interpretation.md

logic: logic/logic.md
	$(mkpdf) --output logic/logic.pdf logic/logic.md

model-checking: model-checking/model-checking.md
	$(mkpdf) --output model-checking/model-checking.pdf model-checking/model-checking.md
	$(mkpdf) --output model-checking/bounded-model-checking.pdf model-checking/bounded-model-checking.md
	$(mkpdf) --output model-checking/model-checking-tools.pdf model-checking/model-checking-tools.md

real-time: real-time/real-time.md
	$(mkpdf) --output real-time/real-time.pdf real-time/real-time.md

unification: unification/unification.md
	$(mkpdf) --output unification/unification.pdf unification/unification.md

typing: typing/typing.md
	$(mkpdf) --output typing/typing.pdf typing/typing.md

