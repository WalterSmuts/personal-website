DeployDir = /var/www/html
CV:
	$(MAKE) -C Curriculum-Vitae

deploy: CV
	cp index.html $(DeployDir)
	cp 'Curriculum-Vitae/Walter Smuts - Curriculum Vitae.pdf' $(DeployDir)
	cp favicon.png $(DeployDir)
	cp styles.css $(DeployDir)
