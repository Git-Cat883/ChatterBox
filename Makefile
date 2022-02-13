SYSTEM_PYTHON ?= python3

all: env

env: .venv
	.venv/bin/pip install -r requirements.txt
	@echo
	@echo "To activate the environment run: source .venv/bin/activate"

.venv:
	$(SYSTEM_PYTHON) -m venv .venv
	.venv/bin/pip install --upgrade pip wheel
