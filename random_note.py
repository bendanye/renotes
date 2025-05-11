import os
import glob
import random


def random_note(note_type="tech"):
    # Construct the search directory
    search_dir = os.path.join(".", "notes", note_type)

    # Collect .md files in the directory and subdirectories
    files = glob.glob(os.path.join(search_dir, "*.md"), recursive=False)
    files += glob.glob(os.path.join(search_dir, "**", "*.md"), recursive=True)

    if not files:
        raise FileNotFoundError(f"No markdown files found in {search_dir}")

    # Select a random file
    selected_note = random.choice(files)

    # Normalize path and remove leading dot to mimic Bash behavior
    selected_note = os.path.normpath(selected_note)
    if selected_note.startswith("."):
        selected_note = selected_note[1:]

    # Convert Windows-style backslashes to slashes for the GitHub URL
    selected_note = selected_note.replace(os.sep, "/")

    # Construct the GitHub URL
    return f"https://github.com/bendanye/renotes/tree/main/{selected_note}"
