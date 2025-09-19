cleanup:
    rm -rf .nuget/packages/*
    rm -rf .local/share/NuGet/http-cache/*
    rm -rf .cache/huggingface/*
    rm -rf .cache/uv/*
    rm -rf .npm/_cacache/*
    rm -rf Library/Caches/JetBrains/*
    rm -rf Library/Caches/pypoetry/artifacts/*
    rm -rf Library/Caches/pypoetry/cache/*
    rm -rf Library/Caches/pip/*
    rm -rf Library/Caches/pip-tools/*
    rm -rf Library/Caches/lens-desktop-updater/*
    rm -rf Library/Caches/Mozilla/updates/*
    rm -rf Library/Caches/go-build/*
    rm -rf Library/Logs/JetBrains/*
    rm -rf Library/Logs/pdm/*

# Unsafe
cleanup-all: cleanup
    rm -rf go/pkg/mod/*
    rm -rf .pyenv/versions/*
    rm -rf bentoml/models/*

dotnet-tools-upgrade:
    dotnet tool list -g | awk '{ print $1 }' | tail -n +3 | xargs -I TOOL sh -eux -c 'dotnet tool update -g TOOL;'

dotnet-tools-install:
    #dotnet tool install -g csharprepl
    # Find transitive package references that can be removed
    # See: https://gsferreira.com/archive/2022/finding-dotnet-transitive-dependencies-and-tidying-up-your-project/
    dotnet tool install -g snitch
    # NuGet versioning
    dotnet tool install -g GitVersion.Tool
    # Transient deps resolver (like pipdeptree or `composer why`)
    # See https://github.com/bjorkstromm/depends
    dotnet tool install -g dotnet-depends
    # https://github.com/dotnet/interactive/blob/main/docs/NotebookswithJupyter.md
    dotnet tool install -g Microsoft.dotnet-interactive

jypyter-setup:
    dotnet interactive jupyter install

jypyter:
    jupyter lab

init-install:
    brew bundle
    uv tool install aider-chat@latest
    uv tool install ty@latest
    npm install -g @anthropic-ai/claude-code

upgrade:
    brew upgrade
    brew bundle dump --force
    uv tool upgrade --all
    brew link --overwrite node
    npm upgrade -g
    gcloud components update

why brew-package:
    brew uses --recursive --installed {{brew-package}}
