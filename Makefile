.PHONY: pytest
pytest:
	uv run --env-file .env pytest

.PHONY: setup
setup:
	uv sync --dev
	uv run --dev pre-commit
	uv run pre-commit install
	uv run pre-commit run --all-files

.PHONY: precommit
precommit:
	uv run pre-commit run --all-files
