# Acronomicon
A Simple Acronym Finder

This project is set up to use the STANDS4 API to look for acronyms, but it can also use the Merriam-Webster API and make it look for any dictionary entry
by changing 

``` Swift
let meaningsFetcher = SFMeaningsFetcher()
```
to
``` Swift
let meaningsFetcher = MWMeaningsFetcher()
```

in the project's `SceneDelegate.swift` file.


## API Secrets
This app won't work without a `Secrets.swift` file with API information.

You can use the `Secrets-Example.swift` file, add your Merriam-Webster or STANDS4 API secrets and rename the struct to `Secrets`.
