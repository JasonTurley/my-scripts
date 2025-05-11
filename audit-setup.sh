#!/bin/bash

# Audit Setup: installs useful smart contract auditing tools.

# Download foundry
curl -L https://foundry.paradigm.xyz | bash

# Download nvm (useful for Hardhat projects)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.3/install.sh | bash

# Download pnpm (useful for Hardhat projects)
curl -fsSL https://get.pnpm.io/install.sh | sh -

# Download aderyn
curl --proto '=https' --tlsv1.2 -LsSf https://github.com/cyfrin/aderyn/releases/latest/download/aderyn-installer.sh | bash

# Install tools
source ~/.bashrc
foundryup
cyfrinup

# Install slither
python3 -m pip install slither-analyzer
