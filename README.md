These are two experimental plugins to the DITA-OT.

1. Download the latest DITA-OT

	wget https://github.com/dita-ot/dita-ot/releases/download/2.4.5/dita-ot-2.4.5.zip

2. Unzip the file.

	unzip dita-ot-2.4.5.zip
	mv dita-2.4.5 dita-ot

3. Clone this repository.

	git clone https://github.com/tintinno/plugins

4. Copy the folders into the plugins directory.	

	mv plugins/com.tintinno.rpdf* dita-ot/plugins/

5. Install the plugins.

	cd dita-ot/bin/
	./dita --install

6. Transform.

	./dita -i <input file> -f rpdf
	./dita -i <input file> -f rpdf2
