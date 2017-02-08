all: abstract-interpretation/abstract-interpretation.pdf logic/logic.pdf\
     model-checking/model-checking.pdf model-checking/bounded-model-checking.pdf\
     model-checking/model-checking-tools.pdf reachability/reachability.pdf\
     real-time/real-time.pdf resolution/resolution.pdf typing/typing.pdf\
     unification/unification.pdf
	
%.pdf: %.md
	pandoc -V geometry='margin=2.5cm' --from markdown --to latex --output $@ $<
