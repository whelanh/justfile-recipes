# Main entry point for global just/ujust recipes

# Option 1: Standard Import (Recipes keep their original names)
import '~/.config/just/00-default.just'
import '~/.config/just/10-update.just'
import '~/.config/just/15-luks.just'
import '~/.config/just/20-clean.just'
import '~/.config/just/30-distrobox.just'
import '~/.config/just/40-nvidia.just'
import '~/.config/just/50-akmods.just'
import '~/.config/just/60-custom.just'


# Default recipe to run if you just type 'just' without arguments
_default: choose

# Launch an interactive TUI menu to choose and run a recipe
choose:
    #!/usr/bin/bash
    # 1. List all recipes, clean up formatting, and ignore the choose command itself
    # 2. Pipe into fzf for an interactive fuzzy-search list
    # 3. Execute the chosen recipe
    RECIPE=$(just --summary | tr ' ' '\n' | grep -vE '^(_default|choose)$' | fzf --header="Select a recipe to run:" --height=40% --reverse)
    
    if [ -n "$RECIPE" ]; then
        echo -e "\nRunning: just $RECIPE\n"
        just "$RECIPE"
    else
        echo "Cancelled."
    fi
