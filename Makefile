SPIROGRAPH_PATH = src/LombardiSpirograph.py
SPIROGRAPH = python $(SPIROGRAPH_PATH) 

all: img

img: img/grotzsch.svg img/grotzsch_alt.svg img/icosahedron.svg

img/grotzsch.svg:
	$(SPIROGRAPH) grotzsch > img/grotzsch.svg

img/grotzsch_alt.svg:
	$(SPIROGRAPH) --scale=1.2 --color=blue --radius=0.8 --outline grotzsch > img/grotzsch_alt.svg

img/icosahedron.svg:
	$(SPIROGRAPH) 3-a01-01-1-a > $@

download_spirograph:
	curl https://raw.githubusercontent.com/MHenderson/lombardi-spirograph/refs/heads/master/LombardiSpirograph.py > $(SPIROGRAPH_PATH)

