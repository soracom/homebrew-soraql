# Soracom Homebrew Tap

**Public Homebrew tap for SoraQL.**

## 🍺 Install SoraQL

```bash
# Add the Soracom tap
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


## 📁 Repository Structure

```
homebrew-soraql/
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

**soraql** - Command-line SQL client for Soracom data warehouse API