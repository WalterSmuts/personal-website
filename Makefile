DeployDir = /srv/http/
Thesis:
	$(MAKE) -C Pitch-Correction-Thesis

CV:
	$(MAKE) -C Curriculum-Vitae

deploy: CV Thesis
	cp index.html $(DeployDir)
	cp 'Pitch-Correction-Thesis/Walter Smuts - Pitch Correction of Digital Audio.pdf' $(DeployDir)
	cp 'Curriculum-Vitae/Walter Smuts - Curriculum Vitae.pdf' $(DeployDir)
	cp favicon.png $(DeployDir)
	cp walter.webp $(DeployDir)
	cp styles.css $(DeployDir)
	$(MAKE) -C clipboard-website
