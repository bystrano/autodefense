# init:
# 	for file in `ls img_src`; do convert -resize 35% img_src/$file img/$file; done

pdf: autodefense.md
	pandoc autodefense.md --toc --template template.latex -o autodefense.pdf
