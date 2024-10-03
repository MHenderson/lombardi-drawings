SPIROGRAPH_PATH = src/LombardiSpirograph.py
SPIROGRAPH = python $(SPIROGRAPH_PATH) 
BUILDDIR = img

all: img

img: $(BUILDDIR)/grotzsch.svg\
     $(BUILDDIR)/grotzsch_alt.svg\
     $(BUILDDIR)/icosahedron.svg

clean:
	rm -r $(BUILDDIR)

$(BUILDDIR)/grotzsch.svg:
	mkdir -p $(BUILDDIR)
	$(SPIROGRAPH) grotzsch > $@

$(BUILDDIR)/grotzsch_alt.svg:
	mkdir -p $(BUILDDIR)
	$(SPIROGRAPH) --scale=1.2 --color=blue --radius=0.8 --outline grotzsch > $@

$(BUILDDIR)/icosahedron.svg:
	mkdir -p $(BUILDDIR)
	$(SPIROGRAPH) 3-a01-01-1-a > $@

download_spirograph:
	curl https://raw.githubusercontent.com/MHenderson/lombardi-spirograph/refs/heads/master/LombardiSpirograph.py > $(SPIROGRAPH_PATH)

