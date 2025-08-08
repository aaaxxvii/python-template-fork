setup-claude-api-key:
	@mkdir -p ~/.claude
	@read -s -p "Enter Claude API key: " API_KEY; echo; \
	if [ -f ~/.claude/settings.json ]; then \
		jq --arg key "$$API_KEY" '.env.ANTHROPIC_API_KEY = $$key' ~/.claude/settings.json > ~/.claude/settings.json.tmp; \
	else \
		echo '{}' > ~/.claude/settings.json.tmp; \
		jq --arg key "$$API_KEY" '.env.ANTHROPIC_API_KEY = $$key' ~/.claude/settings.json.tmp > ~/.claude/settings.json.tmp2; \
		mv ~/.claude/settings.json.tmp2 ~/.claude/settings.json.tmp; \
	fi; \
	mv ~/.claude/settings.json.tmp ~/.claude/settings.json
	@echo "Claude API key set"
