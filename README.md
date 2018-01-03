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

4. Build the project and see the magic!


### Android via Gradle task & Shell script

1. Download the latest release, unzip it to your project root or anywhere you prefer.
2. Create a bash script in your project root, e.g. `autoLoco.sh`
3. Make it executable by `chmod +x autoLoco.sh`
4. Paste script and modify to match your project needs

```{r, engine='bash', count_lines}
KEY=YOUR_API_KEY_HERE #change this
SCRIPT=LocoMobileExport/Sources/auto_export.sh

SCRIPT android --key KEY --map "en_HK=values" --output "${PWD}/app/src/main/res"
```

5. Add these lines in your `Build.gradle`

```
task locoExport(type: Exec) {
    doFirst {
        workingDir rootProject.projectDir
        commandLine "./updateLoco.sh"
    }
}
prebuild.dependsOn(locoExport)
//clean.dependsOn(locoExport) //or you can choose to update loco when you clean the project
```


## Options

Option | Explanation
------- | -------
{Platform} | `ios` or `android`
--key | Provide the project API Key from localise.biz
--output | Specific the path of where the `.lproj` folder is e.g. `--output "$PROJECT_DIR/MyApp"`
--map | How the language name map from localise export and project lang code, e.g. `en_US` on localise.biz, `en.lproj` in the xcode project, can be map with `--map 'en_US=en'`, can map as many as you want to meet your project setup.
