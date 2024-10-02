SPIROGRAPH = python src/LombardiSpirograph.py

all: img

img: img/grotzsch.svg

download_spirograph:
	curl https://raw.githubusercontent.com/MHenderson/lombardi-spirograph/refs/heads/master/LombardiSpirograph.py > src/LombardiSpirograph.py

img/grotzsch.svg:
	$(SPIROGRAPH) grotzsch > img/grotzsch.svg
