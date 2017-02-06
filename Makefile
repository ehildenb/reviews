%.pdf: %.md
	pandoc --from markdown --to latex --output $@ $<
