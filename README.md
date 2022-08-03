Two experimental plugins to the DITA-OT.

1. Download the DITA-OT v3.3.3.

```
wget https://github.com/dita-ot/dita-ot/releases/download/3.7.2/dita-ot-3.7.2.zip
```

2. Unzip and rename the file.

```
unzip dita-ot-3.7.2.zip
mv dita-3.7.2 dita-ot
```

3. Clone this repository.

```
git clone https://github.com/tintinno/plugins
```

4. Copy the folders into the plugins directory.	

```
mv plugins/com.tintinno.rpdf dita-ot/plugins/
mv plugins/com.tintinno.rpdf2 dita-ot/plugins/
```

5. Install the plugins.

```
cd dita-ot/bin/
./dita --install
```

6. Install [Lora](https://fonts.google.com/specimen/Lora).

7. Transform.

```
./dita -i <input file> -f rpdf
./dita -i <input file> -f rpdf2
```

