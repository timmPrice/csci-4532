BOARD = arduino:avr:uno
PORT  = /dev/ttyACM0
SKETCH = .

all: build upload

build:
	@echo " Compiling for $(BOARD)..."
	arduino-cli compile --fqbn $(BOARD) $(SKETCH)

upload:
	@echo " Uploading to $(PORT)..."
	arduino-cli upload -p $(PORT) --fqbn $(BOARD) $(SKETCH)

.PHONY: all build upload
