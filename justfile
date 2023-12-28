_default:
  just --list

# Run the build script
build:
  @just p run build

# Install dependencies as specified by corresponding lock files
deps:
  pnpm install --frozen-lockfile

# Run the dev script
dev:
  @just p run dev

# Run the test script
test:
  @just p run test

# Shorthand for running pnpm
p CMD *FLAGS:
  pnpm {{CMD}} {{FLAGS}}

# Run the start script
start:
  @just p run start

# Update dependencies for the root project. This command will attempt to respect package range rules.
update-root *FLAGS:
  pnpm update {{FLAGS}}
