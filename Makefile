all: abstract-interpretation/abstract-interpretation.pdf \
     reachability/reachability.pdf tools/tools.pdf logic/logic.pdf \
     real-time/real-time.pdf resolution/resolution.pdf typing/typing.pdf \
     algebra/algebra.pdf software-engineering/software-engineering.pdf \
     concurrency/concurrency.pdf symbolic/symbolic.pdf
     
%.pdf: %.md
	pandoc -V geometry='margin=2.5cm' --from markdown --to latex --output $@ $<
