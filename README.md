# Acronomicon
A Simple Acronym Finder

This project is set up to use the [STANDS4 API](https://www.abbreviations.com/api.php) to look for acronyms, but it can also use the [Merriam-Webster API](https://dictionaryapi.com/products/index) and make it look for any dictionary entry by changing:

``` Swift
let meaningsFetcher = SFMeaningsFetcher()
```
to
``` Swift
let meaningsFetcher = MWMeaningsFetcher()
```

in the project's `SceneDelegate.swift` file.


## API Secrets
This app won't compile without a `Secrets` struct with API information. There are a few options to make it work:

- If I provided you with a `Secrets.swift` file, just drop it in the project and it should work.
- There is an example [`Secrets-Example.swift`](Acronomicon/Services/Secrets-Example.swift)  provided in the Services group. You can add your Merriam-Webster or STANDS4 API secrets and rename the struct to `Secrets`.
- Or, if you don't have the keys and don't want to get them, use one of `MockSFMeaningsFetcher` or `MockMWMeaningsFetcher` in place of the real ones as described above, and rename the `SecretsExample` struct to just `Secrets`. Then you'll be able to see the app work with example data.
