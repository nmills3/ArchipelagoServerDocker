import subprocess
import sys

# ===== CONFIG =====
SCRIPT_TO_RUN = ["build.bat"]
DEFAULT_TAG = "latest"
# ==================

def get_git_tags():
    repo_url = "https://github.com/ArchipelagoMW/Archipelago.git"

    result = subprocess.run(
        ["git", "ls-remote", "--tags", repo_url],
        capture_output=True,
        text=True,
        check=True
    )

    tags = set()
    for line in result.stdout.splitlines():
        ref = line.split("\t")[1]
        if ref.endswith("^{}"):
            ref = ref[:-3]
        tags.add(ref.split("/")[-1])

    return sorted(tags)


def main():
    try:
        tags = get_git_tags()
    except subprocess.CalledProcessError as e:
        print("Error: not a git repository or git not available")
        sys.exit(1)

    if not tags:
        print("No git tags found.")
        sys.exit(1)

    tags = sorted(tags)
    tags_set = set(tags)

    print("Available git tags:")
    print("-------------------")
    for tag in tags:
        print(tag)

    print()
    selected_tag = input(f"Enter tag name [default: {DEFAULT_TAG}]: ").strip()

    if not selected_tag:
        selected_tag = DEFAULT_TAG
        print(f"Using default tag: {DEFAULT_TAG}")

    if selected_tag not in tags_set and selected_tag != "latest":
        print(f"\nTag '{selected_tag}' not found.")
        sys.exit(1)

    print(f"\nSelected tag: {selected_tag}\n")

    subprocess.run(SCRIPT_TO_RUN + [selected_tag], check=True)

    print("Finished. Press enter to exit")
    input()


if __name__ == "__main__":
    main()
