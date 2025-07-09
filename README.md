# Soracom Homebrew Tap (Private)

**Private Homebrew tap for Soracom developer tools.**

## 🍺 Install SoraQL

> **Note**: This is a private tap. You need GitHub authentication to access it.

```bash
# Add the Soracom private tap (requires GitHub authentication)
brew tap soracom/soraql

# Install soraql
brew install soraql

# Verify installation
soraql --help
```

## 🔄 Update SoraQL

```bash
# Update Homebrew and upgrade soraql
brew update && brew upgrade soraql
```

## 🔐 Authentication Requirements

Since this is a private repository, users need:
- GitHub CLI authenticated: `gh auth login`
- OR SSH keys configured for GitHub access
- OR GitHub Personal Access Token with repo access

## Available Tools

- **soraql** - Command-line SQL client for Soracom data warehouse API

## 🛠️ For Maintainers

### Updating the Formula

When releasing a new version of soraql:

1. **Create GitHub release** with platform binaries:
   ```bash
   cd /path/to/soraql
   git tag v1.1.0
   make github-release
   ```

2. **Generate new formula**:
   ```bash
   make homebrew-formula
   ```

3. **Update this repository**:
   ```bash
   cd ~/src/github.com/soracom/homebrew-soraql
   cp ../soraql/homebrew-formula.rb Formula/soraql.rb
   git add Formula/soraql.rb
   git commit -m "Update soraql to v1.1.0"
   git push origin main
   ```

4. **Users get updates**:
   ```bash
   brew update && brew upgrade soraql
   ```

### Making the Tap Public

When ready to make this tap public:

1. Go to repository settings: https://github.com/soracom/homebrew-soraql/settings
2. Scroll to "Danger Zone"
3. Click "Change repository visibility"
4. Change from Private to Public
5. Update this README to remove authentication notes

## 📁 Repository Structure

```
homebrew-soraql/ (PRIVATE)
├── README.md
└── Formula/
    └── soraql.rb
```

## 🎯 Current Release

- **Version**: v1.0.0
- **Platforms**: macOS (Intel/ARM), Linux (Intel/ARM)
- **Installation**: Pre-compiled binaries (no build required)

## 🧪 Testing the Tap

```bash
# Remove existing installation if present
brew uninstall soraql 2>/dev/null || true
brew untap soracom/soraql 2>/dev/null || true

# Add tap and install
brew tap soracom/soraql
brew install soraql

# Test functionality
soraql --help
which soraql  # Should show /opt/homebrew/bin/soraql or /usr/local/bin/soraql
```

---

**Note**: This is a private repository for internal testing. The tap functionality is identical to public taps, but requires GitHub authentication for access.