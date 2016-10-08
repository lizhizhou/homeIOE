all: 
	cd page; bower --allow-root install;
	npm install
test:
	npm test
clean:
	rm -rf build
	rm -rf node_modules
	rm -rf page/bower_components
format: clean
	find . -name "*.cc" -exec astyle -n {} \;
	find . -name "*.js" -exec js-beautify -r {} \;	 
	find . -name "*.html" -exec html-beautify -r {} \;	 
	find . -name "*.css" -exec css-beautify -r {} \;	 
 	
	


