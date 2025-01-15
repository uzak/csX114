all: clean
	hugo serve --baseURL http://localhost:1313 -D


export: clean
	hugo --minify

clean:
	rm -rf public
