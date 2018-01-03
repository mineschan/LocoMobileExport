# LocoMobileExport
An exporter script for Localise.biz projects for iOS and Android projects

## What is LocoMobileExport

```TODO```

## How to use it?

### iOS via CocoaPods

Add this to your Podfile, then run ```pod install```

```pod 'LocoMobileExport'```

To integrate automatic update the .strings files when you build the project everytime, please follow below
 steps:

1. Go to `YOUR TARGET` -> `Build Settings`, add an `User Defined Settings`
2. Set key to `LOCO_API_KEY` and paste in the API Key value from your Localise.biz project.
3. Navigate to `Build Phases`, add a run script.

```bash
SCRIPT=$PODS_ROOT/LocoMobileExport/Sources/auto_export.sh

#Need to config the options, see below
$SCRIPT ios --key $LOCO_API_KEY --map 'en=en' --map 'zh=zh-Hant' --output "$PROJECT_DIR/{path_to_lproj_dir}}"
```

## Options

Option | Explanation
------- | -------
{Platform} | `ios` or `android`
--key | Provide the project API Key from localise.biz
--output | Specific the path of where the `.lproj` folder is e.g. `--output "$PROJECT_DIR/MyApp"`
--map | How the language name map from localise export and project lang code, e.g. `en_US` on localise.biz, `en.lproj` in the xcode project, can be map with `--map 'en_US=en'`, can map as many as you want to meet your project setup.

4. Build the project and see the magic!




### Android

```TODO```
